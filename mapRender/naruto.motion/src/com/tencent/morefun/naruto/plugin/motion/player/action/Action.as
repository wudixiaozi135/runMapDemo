package com.tencent.morefun.naruto.plugin.motion.player.action
{

	import com.tencent.morefun.framework.log.logger;
	import com.tencent.morefun.naruto.plugin.motion.IMotionNotifyReceiver;
	import com.tencent.morefun.naruto.plugin.motion.MotionNotifyCenter;
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;
	import com.tencent.morefun.naruto.plugin.motion.player.action.event.ActionEvent;
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	import flash.utils.getQualifiedClassName;
	import flash.utils.getTimer;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class Action extends EventDispatcher implements IMotionNotifyReceiver
	{
		public static var waitDestroyActionList:Array = [];
		
		private static var actionIndex:int = 0;
		private static var debug:Boolean = true;
		
		public var index:int;
		public var actionName:String;
		
		public var isEnd:Boolean;
		public var isBegin:Boolean;
		public var isAllSubActionEnd:Boolean;
		
		private var curPhase:int;
		private var maxPhase:int;
		
		private var subActionMap:Dictionary = new Dictionary();
		
		private var _data:Object;
		public function Action()
		{
			super();
			
			if(debug)
			{
				logTrace = logger.output;
			}
			
			index = actionIndex ++;
			actionName = getActionClassName(this);
			
			waitDestroyActionList.push(this);
		}
		
		public function set data(value:Object):void
		{
			_data = value;
		}
		
		public function get data():Object
		{
			return _data;
		}
		
		public function receive(notice:BaseNotice):void
		{
			
		}
		
		public function begin():void
		{
			var subActionList:Array;
			
			if(debug)
			{
				traceStr("begin");
			}
			
			isBegin = true;
			MotionNotifyCenter.add(this);
			for each(var actionList:Array in subActionMap)
			{
				subActionList = actionList.concat();//TODO 为啥要自制？
				for each(var action:Action in subActionList)
				{
					action.onParentActionBegin();
				}
			}
			onBegin();
			executeCurPhaseActions();
			
//			TimerProvider.addTimeTask(1000 * 30, onActionTimeOut);
			
			this.dispatchEvent(new ActionEvent(ActionEvent.BEGIN));
		}
		
		private function onActionTimeOut():void
		{
			traceStr("action is runing more than 30s");
		}
		
		protected function onBegin():void
		{
			
		}
		
		public function end():void
		{
			var action:Action;
			var subActionList:Array;
			
			if(debug)
			{
				traceStr("end");
			}
			
			isEnd = true;
			MotionNotifyCenter.remove(this);
			for each(var actionList:Array in subActionMap)
			{
				subActionList = actionList.concat();
				for each(action in subActionList)
				{
					action.onParentActionEnd();
				}
			}
			
			onEnd();
			
			this.dispatchEvent(new ActionEvent(ActionEvent.END));
			
			for(var key:* in subActionMap)
			{
				subActionList = subActionMap[key];
				while(subActionList.length != 0)
				{
					action = subActionList[0];
					removeAction(action);
				}
			}
			
			waitDestroyActionList.splice(waitDestroyActionList.indexOf(this), 1);
			
			TimerProvider.removeTimeTask(1000 * 30, onActionTimeOut);
		}
		
		public function destroy():void
		{
			var actionList:Array;
			
			if(isEnd){return ;}
			
			onDestroy();
			_data = null;
			
			for each(actionList in subActionMap)
			{
				CollectionClearUtil.clearList(actionList);
			}
			
			CollectionClearUtil.clearDictionary(subActionMap);
			
			TimerProvider.removeTimeTask(1000 * 30, onActionTimeOut);
		}
		
		protected function onDestroy():void
		{
			
		}
		
		public function addSubAction(action:Action, phase:int, copyData:Boolean = true):void
		{
			var actionList:Array;
			
			if(phase < curPhase)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4339"));
			}
			
			if(maxPhase < phase)
			{
				maxPhase = phase;
			}
			
			actionList = subActionMap[phase];
			if(actionList == null)
			{
				actionList = [];
				subActionMap[phase] = actionList;
			}
			
			if(actionList.indexOf(action) == -1)
			{
				actionList.push(action);
				action.addEventListener(ActionEvent.END, onSubActionEnd);
			}
			
			if(copyData){action.data = data;}
			if(isBegin && phase == curPhase)
			{
				action.begin();
			}
		}
		
		public function addSubActionToCurPhase(action:Action):void
		{
			var actionList:Array;
			
			actionList = subActionMap[curPhase];
			if(actionList == null)
			{
				actionList = [];
				subActionMap[curPhase] = actionList;
			}
			
			if(actionList.indexOf(action) == -1)
			{
				actionList.push(action);
			}
			
			if(isBegin)
			{
				action.begin();
			}
		}
		
		public function removeAction(action:Action):void
		{
			for each(var actionList:Array in subActionMap)
			{
				if(actionList.indexOf(action) != -1)//TODO :这里应该加个　break　吧
				{
					actionList.splice(actionList.indexOf(action), 1);
					action.removeEventListener(ActionEvent.END, onSubActionEnd);
				}
			}
		}
		
		protected function onParentActionEnd():void
		{
			
		}
		
		protected function onParentActionBegin():void
		{
			
		}
		
		protected function onAllSubActionEnd():void
		{
			
		}
		
		protected function onEnd():void
		{
			
			
		}
		
		protected function onSubActionEndEventDispatch(evt:Event):void
		{
			
		}
		
		private function onSubActionEnd(evt:Event):void
		{
			onSubActionEndEventDispatch(evt);
			//			setTimeout(checkAndGotoNextPhase, 0);
			checkAndGotoNextPhase();
		}
		
		private function checkAndGotoNextPhase():void
		{
			var curActionList:Array;
			var subActionList:Array;
			
			curActionList = subActionMap[curPhase];
			for each(var action:Action in curActionList)
			{
				if(action.isEnd == false)
				{
					return ;
				}
			}
			
			if(curPhase == maxPhase)
			{
				if(!isAllSubActionEnd)
				{
					isAllSubActionEnd = true;
					onAllSubActionEnd();
				}
				return ;
			}
			
			curPhase += 1;
			executeCurPhaseActions();
		}
		
		private function executeCurPhaseActions():void
		{
			var curActionList:Array;
			
			curActionList = subActionMap[curPhase];
			for each(var action:Action in curActionList)
			{
				if(action.isBegin == false)
				{
					action.begin();
				}
			}
			
			checkAndGotoNextPhase();
		}
		
		private static var _logTrace:Function;
		public static function set logTrace(value:Function):void
		{
			_logTrace = value;
		}
		
		public static function get logTrace():Function
		{
			return _logTrace;
		}
		
		public function traceStr(...arg:Array):void
		{
			if(logTrace!=null)
			{
				arg.unshift("[Action]","[" + Number(getTimer() / 1000) + "s][" + actionName + "]");
				arg.push("actionInex", index);
				logTrace.apply(null,arg);
			}
		}
		
		public function getActionClassName(obj:Object):String
		{
			var qn:String;
			
			qn = getQualifiedClassName(obj);
			qn = qn.substring(qn.indexOf("::") + 2,qn.length);
			return qn;
		}
	
															
		public function autoSetNull():void
		{

			waitDestroyActionList = null;
			actionName = null;
			subActionMap = null;
			_data = null;
			_logTrace = null;
		}
	}
}