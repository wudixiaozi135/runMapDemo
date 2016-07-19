/**
 * Created by xiaoding on 2016/7/15 0015.
 */
package com.map.utils
{
	import flash.display.*;
	import flash.events.*;
	import flash.utils.*;

	public class TimerProvider
	{

		public static var TYPE_TIMER:int = 0;
		public static var TYPE_ENTER_FRAME:int = 1;
		public static var lastGetTime:int;
		public static var curStageFrameRate:int;
		private static var timeInfoMap:Dictionary = new Dictionary();
		private static var funcTimeMap:Dictionary = new Dictionary();
		private static var isActive:Boolean = true;
		private static var deactiveTimer:Timer = new Timer(1);
		private static var stage:Stage;
		private static var maxFillFrame:int;
		private static var totalExecuteTimeList:Vector.<TimeInfo>;
		private static var timeInfoVector:Vector.<TimeInfo>;
		private static var virtualTime:int;
		private static var curExecuteIndex:int;
		private static var curExecuteFuncList:Vector.<TimeObj>;

		public function TimerProvider()
		{
			super();
		}

		public static function initliazed(stage:Stage, maxFillFrame:int = 0):void
		{
			totalExecuteTimeList = new Vector.<TimeInfo>();
			TimerProvider.maxFillFrame = maxFillFrame;
			TimerProvider.stage = stage;
			stage.addEventListener(Event.ENTER_FRAME, onTimerEvent);
			timeInfoVector = new Vector.<TimeInfo>();
		}

		public static function active():void
		{
			isActive = true;
			deactiveTimer.stop();
			deactiveTimer.removeEventListener(TimerEvent.TIMER, onDeactiveTimerEvent);
		}

		public static function deactive():void
		{
			isActive = false;
			deactiveTimer.start();
			deactiveTimer.addEventListener(TimerEvent.TIMER, onDeactiveTimerEvent);
		}

		public static function addTimeTask(timeStep:int, func:Function, param:Object = null, priority:int = 0, type:int = 0, repeatCount:int = 0, skipCount:int = 0, maxActiveFixTimes:int = 0):void
		{
			var funcList:Vector.<TimeObj>;
			var timer:Timer;
			var timeInfo:TimeInfo;
			var lastTime:int;
			var curTime:int;
			curTime = getTimer();
			lastTime = ((virtualTime) == -1) ? curTime : virtualTime;
			lastGetTime = lastTime;
			curStageFrameRate = stage.frameRate;
			timeStep = Math.max(1, timeStep);
			funcList = funcTimeMap[timeStep];
			if (funcList == null)
			{
				timer = new Timer(timeStep);
				timer.addEventListener(TimerEvent.TIMER, onTimerEvent);
				timer.start();
				funcList = new Vector.<TimeObj>();
				funcTimeMap[timeStep] = funcList;
				timeInfoMap[timeStep] = [];
				timeInfo = new TimeInfo();
				timeInfo.lastTime = lastTime;
				timeInfo.timer = timer;
				timeInfo.timeStep = timeStep;
				timeInfo.type = TYPE_TIMER;
				timeInfoMap[timeStep][TYPE_TIMER] = timeInfo;
				timeInfo = new TimeInfo();
				timeInfo.lastTime = lastTime;
				timeInfo.timer = timer;
				timeInfo.timeStep = timeStep;
				timeInfo.type = TYPE_ENTER_FRAME;
				timeInfoMap[timeStep][TYPE_ENTER_FRAME] = timeInfo;
			}
			if (getTimeObj(timeStep, func, param, priority, type, repeatCount) == null)
			{
				funcList.push(new TimeObj(timeStep, func, lastTime, param, priority, type, repeatCount, skipCount, maxActiveFixTimes));
				funcList.sort(sortOnPriority);
			}
			if (curTime != lastTime)
			{
				fixExecuteTimeList(timeStep);
			}
		}

		private static function sortOnPriority(funcInfoA:TimeObj, funcInfoB:TimeObj):int
		{
			if (funcInfoA.priority > funcInfoB.priority)
			{
				return (-1);
			}
			if (funcInfoA.priority < funcInfoB.priority)
			{
				return (1);
			}
			return (0);
		}

		public static function removeTimeTask(timeStep:int, func:Function, param:Object = null, priority:int = 0, type:int = 0, repeatCount:int = 0):void
		{
			var funcList:Vector.<TimeObj>;
			var timer:Timer;
			var timeObj:TimeObj;
			var funcIndex:int;
			timeStep = Math.max(1, timeStep);
			timeObj = getTimeObj(timeStep, func, param, priority, type, repeatCount);
			if (timeObj == null)
			{
				return;
			}
			funcList = funcTimeMap[timeStep];
			funcIndex = funcList.indexOf(timeObj);
			if (funcIndex != -1)
			{
				funcList.splice(funcIndex, 1);
			}
			if ((((curExecuteFuncList == funcList)) && ((curExecuteIndex <= funcIndex))))
			{
				curExecuteIndex = (curExecuteIndex - 1);
			}
			if (funcList.length == 0)
			{
				timer = timeInfoMap[timeStep][TYPE_TIMER].timer;
				timer.removeEventListener(TimerEvent.TIMER, onTimerEvent);
				timer.stop();
				delete funcTimeMap[timeStep];
				delete timeInfoMap[timeStep];
			}
		}

		public static function addActiveEnterFrameTask(func:Function, param:Object = null, skipCount:int = 0, priority:int = 0):void
		{
			addTimeTask((1000 / stage.frameRate), func, param, priority, TYPE_ENTER_FRAME, 0, 0, 1);
		}

		public static function addEnterFrameTask(func:Function, param:Object = null, priority:int = 0):void
		{
			addTimeTask((1000 / stage.frameRate), func, param, priority, TYPE_ENTER_FRAME);
		}

		public static function removeEnterFrameTask(func:Function, param:Object = null, priority:int = 0):void
		{
			removeTimeTask((1000 / stage.frameRate), func, param, priority, TYPE_ENTER_FRAME);
		}

		public static function delayCall(timeStep:int, func:Function, param:Object = null):void
		{
			addTimeTask(timeStep, func, param, 0, TYPE_TIMER, 1);
		}

		public static function updateLastTime(changed:Number):void
		{
			var funcList:Vector.<TimeObj>;
			var type:String;
			var obj:TimeObj;
			for each (type in funcTimeMap)
			{
				funcList = funcTimeMap[type];
				for each (obj in funcList)
				{
					obj.lastTime = changed;
				}
			}
			onDeactiveTimerEvent(null);
		}

		public static function onDeactiveTimerEvent(evt:Event):void
		{
			var time:int;
			var executeTimeList:Vector.<TimeInfo>;
			var timeInfo:TimeInfo;
			var fillFrame:int;
			var cloneTimeInfo:TimeInfo;
			time = getTimer();
			lastGetTime = time;
			curStageFrameRate = stage.frameRate;
			fillFrame = 1;
			executeTimeList = getExecuteList(time, TYPE_TIMER, fillFrame, (fillFrame == maxFillFrame));
			while (executeTimeList.length != 0)
			{
				fillFrame = (fillFrame + 1);
				totalExecuteTimeList = totalExecuteTimeList.concat(executeTimeList);
				executeTimeList.length = 0;
				executeTimeList = null;
				executeTimeList = getExecuteList(time, TYPE_TIMER, fillFrame, (fillFrame == maxFillFrame));
				executeTimeList = executeTimeList.concat(getExecuteList(time, TYPE_ENTER_FRAME, fillFrame, (fillFrame == maxFillFrame)));
			}
			totalExecuteTimeList.sort(sortOnExecuteTime);
			var i:int;
			while (i < totalExecuteTimeList.length)
			{
				cloneTimeInfo = totalExecuteTimeList[i];
				if (((timeInfoMap[cloneTimeInfo.timeStep]) && (timeInfoMap[cloneTimeInfo.timeStep][cloneTimeInfo.type])))
				{
					timeInfo = timeInfoMap[cloneTimeInfo.timeStep][cloneTimeInfo.type];
					executeTimeTask(cloneTimeInfo.timeStep, cloneTimeInfo.executeTime, cloneTimeInfo.fillIndex, cloneTimeInfo.type);
				}
				i++;
			}
			virtualTime = -1;
			releaseTimeInfos(totalExecuteTimeList);
			totalExecuteTimeList.splice(0, totalExecuteTimeList.length);
		}

		private static function sortOnExecuteTime(funcInfoA:TimeInfo, funcInfoB:TimeInfo):int
		{
			if (funcInfoA.executeTime < funcInfoB.executeTime)
			{
				return (-1);
			}
			if (funcInfoA.executeTime > funcInfoB.executeTime)
			{
				return (1);
			}
			return (0);
		}

		private static function fixExecuteTimeList(timeSetp:int):void
		{
			var time:int;
			var executeTimeList:Vector.<TimeInfo>;
			var timeInfo:TimeInfo;
			var fillFrame:int;
			time = getTimer();
			lastGetTime = time;
			curStageFrameRate = stage.frameRate;
			fillFrame = 1;
			executeTimeList = getFixExecuteList(time, timeSetp, TYPE_TIMER, (fillFrame == maxFillFrame));
			executeTimeList = executeTimeList.concat(getFixExecuteList(time, timeSetp, TYPE_ENTER_FRAME, (fillFrame == maxFillFrame)));
			while (executeTimeList.length != 0)
			{
				fillFrame = (fillFrame + 1);
				totalExecuteTimeList = totalExecuteTimeList.concat(executeTimeList);
				executeTimeList = getFixExecuteList(time, timeSetp, TYPE_TIMER, (fillFrame == maxFillFrame));
				executeTimeList = executeTimeList.concat(getFixExecuteList(time, timeSetp, TYPE_ENTER_FRAME, (fillFrame == maxFillFrame)));
			}
			totalExecuteTimeList.sort(sortOnExecuteTime);
		}

		private static function getFixExecuteList(time:int, timeSetp:int, type:int, endFill:Boolean):Vector.<TimeInfo>
		{
			var executeTimeList:Vector.<TimeInfo>;
			var cloneTimeInfo:TimeInfo;
			var timeInfo:TimeInfo;
			executeTimeList = new Vector.<TimeInfo>();
			timeInfo = timeInfoMap[timeSetp][type];
			if ((time - timeInfo.lastTime) > timeInfo.timeStep)
			{
				cloneTimeInfo = getTimeInfo();
				if (!(cloneTimeInfo))
				{
					cloneTimeInfo = new TimeInfo();
				}
				cloneTimeInfo.copy(timeInfo);
				timeInfo.lastTime = (timeInfo.lastTime + timeInfo.timeStep);
				cloneTimeInfo.executeTime = timeInfo.lastTime;
				executeTimeList.push(cloneTimeInfo);
				while (((endFill) && (((time - timeInfo.lastTime) > timeInfo.timeStep))))
				{
					timeInfo.lastTime = (timeInfo.lastTime + timeInfo.timeStep);
					cloneTimeInfo.executeTime = timeInfo.lastTime;
				}
			}
			return (executeTimeList);
		}

		private static function getExecuteList(time:int, type:int, fillIndex:int, endFill:Boolean):Vector.<TimeInfo>
		{
			var executeTimeList:Vector.<TimeInfo>;
			var cloneTimeInfo:TimeInfo;
			var timeInfo:TimeInfo;
			var timeInfoTypeList:Array;
			executeTimeList = new Vector.<TimeInfo>();
			var i:int;
			for each (timeInfoTypeList in timeInfoMap)
			{
				timeInfo = timeInfoTypeList[type];
				if ((time - timeInfo.lastTime) > timeInfo.timeStep)
				{
					cloneTimeInfo = getTimeInfo();
					if (!(cloneTimeInfo))
					{
						cloneTimeInfo = new TimeInfo();
					}
					cloneTimeInfo.copy(timeInfo);
					cloneTimeInfo.fillIndex = fillIndex;
					timeInfo.lastTime = (timeInfo.lastTime + timeInfo.timeStep);
					cloneTimeInfo.executeTime = timeInfo.lastTime;
					executeTimeList[i] = cloneTimeInfo;
					i++;
					while (((endFill) && (((time - timeInfo.lastTime) > timeInfo.timeStep))))
					{
						timeInfo.lastTime = (timeInfo.lastTime + timeInfo.timeStep);
						cloneTimeInfo.executeTime = timeInfo.lastTime;
					}
				}
			}
			return (executeTimeList);
		}

		public static function set stageFrameRate(value:int):void
		{
			var timeInfo:TimeInfo;
			var oldFrameRate:int;
			var tempList:Vector.<TimeObj>;
			var funcList:Vector.<TimeObj>;
			var funcObj:Object;
			oldFrameRate = stage.frameRate;
			stage.frameRate = value;
			for each (funcList in funcTimeMap)
			{
				tempList = funcList.concat();
				for each (funcObj in tempList)
				{
					if (funcObj.type == TYPE_ENTER_FRAME)
					{
						removeTimeTask((1000 / oldFrameRate), funcObj.func, funcObj.param, funcObj.priority, TYPE_ENTER_FRAME);
						addTimeTask((1000 / stage.frameRate), funcObj.func, funcObj.param, funcObj.priority, TYPE_ENTER_FRAME);
					}
				}
			}
		}

		public static function get stageFrameRate():int
		{
			return (stage.frameRate);
		}

		private static function onTimerEvent(evt:Event):void
		{
			var time:int;
			var executeTimeList:Vector.<TimeInfo>;
			var timeInfo:TimeInfo;
			var type:int;
			var fillFrame:int;
			var cloneTimeInfo:TimeInfo;
			if (isActive == false)
			{
				return;
			}
			if ((evt is TimerEvent))
			{
				type = TYPE_TIMER;
			} else
			{
				type = TYPE_ENTER_FRAME;
			}
			time = getTimer();
			lastGetTime = time;
			curStageFrameRate = stage.frameRate;
			fillFrame = 1;
			executeTimeList = getExecuteList(time, type, fillFrame, (fillFrame == maxFillFrame));
			while (executeTimeList.length != 0)
			{
				fillFrame = (fillFrame + 1);
				totalExecuteTimeList = totalExecuteTimeList.concat(executeTimeList);
				executeTimeList = getExecuteList(time, type, fillFrame, (fillFrame == maxFillFrame));
			}
			totalExecuteTimeList.sort(sortOnExecuteTime);
			var i:int;
			while (i < totalExecuteTimeList.length)
			{
				cloneTimeInfo = totalExecuteTimeList[i];
				if (((timeInfoMap[cloneTimeInfo.timeStep]) && (timeInfoMap[cloneTimeInfo.timeStep][cloneTimeInfo.type])))
				{
					timeInfo = timeInfoMap[cloneTimeInfo.timeStep][cloneTimeInfo.type];
					executeTimeTask(cloneTimeInfo.timeStep, cloneTimeInfo.executeTime, cloneTimeInfo.fillIndex, type);
				}
				i++;
			}
			var lastTime:int = getTimer();
			if ((lastTime - time) > 1000)
			{
			}
			virtualTime = -1;
			releaseTimeInfos(totalExecuteTimeList);
			totalExecuteTimeList.splice(0, totalExecuteTimeList.length);
		}

		private static function executeTimeTask(timeStep:int, time:int, fillIndex:int, type:int = 0):void
		{
			var timeObj:TimeObj;
			var func:Function;
			var param:Object;
			curExecuteFuncList = funcTimeMap[timeStep];
			curExecuteIndex = 0;
			while (curExecuteIndex < curExecuteFuncList.length)
			{
				if (curExecuteIndex < 0)
				{
				} else
				{
					timeObj = curExecuteFuncList[curExecuteIndex];
					if (timeObj.type != type)
					{
					} else
					{
						if ((time - timeObj.lastTime) < timeStep)
						{
						} else
						{
							if (((((isActive) && (!((timeObj.maxActiveFixTimes == 0))))) && ((fillIndex > timeObj.maxActiveFixTimes))))
							{
							} else
							{
								if (timeObj.skipCount != 0)
								{
									timeObj.skipCount--;
								} else
								{
									virtualTime = timeObj.lastTime;
									func = timeObj.func;
									param = timeObj.param;
									if (param == null)
									{
										func();
									} else
									{
										func(param);
									}
									timeObj.lastTime = (timeObj.lastTime + timeStep);
									if (timeObj.repeatCount == 1)
									{
										removeTimeTask(timeObj.timeStep, timeObj.func, timeObj.param, timeObj.priority, timeObj.type, timeObj.repeatCount);
									} else
									{
										if (timeObj.repeatCount != 0)
										{
											timeObj.repeatCount = (timeObj.repeatCount - 1);
										}
									}
								}
							}
						}
					}
				}
				curExecuteIndex++;
			}
		}

		private static function getTimeObj(timeStep:int, func:Function, param:Object = null, priority:int = 0, type:int = 0, repeatCount:int = 0):TimeObj
		{
			var funcList:Vector.<TimeObj>;
			var timeInfo:TimeObj;
			funcList = funcTimeMap[timeStep];
			if (funcList == null)
			{
				return (null);
			}
			for each (timeInfo in funcList)
			{
				if ((((((((((timeInfo.func == func)) && ((timeInfo.param == param)))) && ((timeInfo.type == type)))) && ((timeInfo.priority == priority)))) && ((timeInfo.repeatCount == repeatCount))))
				{
					return (timeInfo);
				}
			}
			return (null);
		}

		private static function getTimeInfo():TimeInfo
		{
			if (timeInfoVector.length != 0)
			{
				return (timeInfoVector.pop());
			}
			return (null);
		}

		private static function releaseTimeInfos(timeInfoList:Vector.<TimeInfo>):void
		{
			timeInfoVector = timeInfoVector.concat(timeInfoList);
		}

	}
}

import flash.utils.*;

class TimeInfo
{

	public var timer:Timer;
	public var lastTime:int;
	public var timeStep:int;
	public var executeTime:int;
	public var type:int;
	public var fillIndex:int;

	public function TimeInfo()
	{
		super();
	}

	public function clone():TimeInfo
	{
		var timeInfo:TimeInfo;
		timeInfo = new TimeInfo();
		timeInfo.type = this.type;
		timeInfo.timer = this.timer;
		timeInfo.lastTime = this.lastTime;
		timeInfo.timeStep = this.timeStep;
		timeInfo.executeTime = this.executeTime;
		return (timeInfo);
	}

	public function copy(timeInfo:TimeInfo):void
	{
		this.type = timeInfo.type;
		this.timer = timeInfo.timer;
		this.lastTime = timeInfo.lastTime;
		this.timeStep = timeInfo.timeStep;
		this.executeTime = timeInfo.executeTime;
	}

}
class TimeObj
{

	public var timeStep:int;
	public var lastTime:int;
	public var func:Function;
	public var param:Object;
	public var priority:int;
	public var type:int;
	public var repeatCount:int;
	public var maxActiveFixTimes:int;
	public var skipCount:int;

	public function TimeObj(timeStep:int, func:Function, lastTime:int, param:Object, priority:int, type:int, repeatCount:int, skipCount:int, maxActiveFixTimes:int)
	{
		super();
		this.func = func;
		this.timeStep = timeStep;
		this.lastTime = lastTime;
		this.param = param;
		this.priority = priority;
		this.type = type;
		this.repeatCount = repeatCount;
		this.skipCount = skipCount;
		this.maxActiveFixTimes = maxActiveFixTimes;
	}
}