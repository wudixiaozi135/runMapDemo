package task.models
{
	import com.tencent.morefun.naruto.model.BaseModel;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	
	import flash.utils.getTimer;
	
	import def.ModelDef;
	
	import task.datas.TaskConditionInfo;
	import task.datas.TaskInfo;
	import task.defs.TaskStateDef;
	import task.defs.TaskTypeDef;
	
	public class TaskModel extends BaseModel
	{
		public static const KEY_TASK_INFOS:String = "taskInfos";
		public static const KEY_TASK_INFO_MODIFY:String = "taskInfoModify";
		public static const KEY_TASK_INFO_RECEIVE:String = "taskInfoReceive";
		public static const KEY_TASK_INFO_GIVEUP:String = "taskInfoGiveup";
		public static const KEY_TASK_INFO_REMOVE:String = "taskInfoRemove";
		public static const KEY_TASK_INFO_COMMIT:String = "taskInfoCommit";
		
		public static const KEY_HISTROY_IDS:String = "histroyIds";
		public static const KEY_HISTROY_ADD_ID:String = "histroyAdd";
		
//		public static const KEY_ACTIVITY_RECEIVE_REMAIN_NUM:String = "activityReceiveRemainNum";
//		public static const KEY_ACTIVITY_RECEIVE_TOTAL_NUM:String = "activityReceiveTotalNum";
//		public static const KEY_ACTIVITY_REFRESH_TIME:String = "activityRefreshTime";
		
		public static const KEY_XIUXING_DONE_NUM:String = "xiuxingDoneNum";
		public static const KEY_XIUXING_TOTAL_NUM:String = "xiuxingTotalNum";
		
		public static const KEY_LARGESS_REMAINDER_NUM:String = "largessRemainderNum";
		public static const KEY_LARGESS_TOTAL_NUM:String = "largessTotalNum";
		
		public static const KEY_LARGESS_SUPER_REMAINDER_NUM:String = "largessSuperRemainderNum";
		public static const KEY_LARGESS_SUPER_TOTAL_NUM:String = "largessSuperTotalNum";
		
		public static const KEY_LARGESS_REFRESH_NUM:String = "largessRefreshNum";
		public static const KEY_LARGESS_REFRESH_TIME:String = "largessRefreshTime";
		
		public static const KEY_PRATICE_NUM:String = "praticeNum";
		
		public static const KEY_ESCORT_NUM:String = "escortNum";
		
		public static const KEY_WANTED_NUM:String = "wantedNum";
		
		private var histroyIds:Array;
		
		private var taskInfos:Array;
		public var respondedCount:int;


		public function get responded():Boolean{return respondedCount>0};
		
//		private var activityReceiveRemainNum:int;
//		private var activityReceiveTotalNum:int;
//		private var activityRefreshTime:uint;
		
		private var xiuxingTotalNum:int;
		private var xiuxingDoneNum:int;
		
		private var largessTotalNum:int;//悬赏任务总完成次数
		private var largessRemainderNum:int;//悬赏任务剩余完成次数
		private var largessSuperTotalNum:int;//悬赏任务S级总完成次数
		private var largessSuperRemainderNum:int;//悬赏任务S级剩余完成次数
		private var largessRefreshNum:uint;//悬赏任务可刷新次数
		private var largessRefreshTime:uint;//悬赏任务可刷新时间
		private var largessRefreshTime_runtime:uint;
		
		private var praticeTotalNum:int;
		private var praticeRemainderNum:int;
		
		private var _escortTotalNum:int;//押镖任务总完成次数
		private var _escortRemainderNum:int;//押镖任务剩余完成次数
		private var _escortRefreshNum:uint;//押镖任务可刷新次数
		private var _escortRefreshTime:uint;//押镖任务刷新时间
		private var _escortRefreshTime_runtime:uint;
		private var _escortFaildTime:int;//押镖失败剩余时间次数
		private var _escortFaildTime_runtime:uint;
		private var _escortRewardMoney:int;//押镖奖励
		
		private var _wantedTotalNum:int;//通缉任务总完成次数
		private var _wantedRemainderNum:int;//通缉任务剩余完成次数
		private var _wantedExpAddition:int;//通缉任务经验加成
		
		public function TaskModel()
		{
			super(ModelDef.TASK);
			histroyIds = [];
			taskInfos = [];
		}
		
		public function setWantedNum(remainderNum:int, totalNum:int, wantedExpAddition:int):void
		{
			_wantedRemainderNum = remainderNum;
			_wantedTotalNum = totalNum;
			_wantedExpAddition = wantedExpAddition;
			
			dispModelEvent(ModelEvent.UPDATE, KEY_WANTED_NUM);
		}
		
		public function get wantedRemainderNum():int
		{
			return _wantedRemainderNum;
		}
		
		public function get wantedTotalNum():int
		{
			return _wantedTotalNum;
		}
		
		public function get wantedExpAddition():int
		{
			return _wantedExpAddition;
		}
		
		public function setEscortNum(remainderNum:int, totalNum:int, refreshNum:int, refreshTime:uint, escortFaildTime:int, escortRewardMoney:int):void
		{
			_escortRemainderNum = remainderNum;
			_escortTotalNum = totalNum;
			_escortRefreshNum = refreshNum;
			_escortRefreshTime = refreshTime;
			_escortRefreshTime_runtime = getTimer();
			_escortFaildTime = escortFaildTime;
			_escortFaildTime_runtime = getTimer();
			_escortRewardMoney = escortRewardMoney;
			dispModelEvent(ModelEvent.UPDATE,KEY_ESCORT_NUM);
		}
		
		public function get isEscorting():Boolean
		{
			return _escortFaildTime > 0;
		}
		
		public function get escortRewardMoney():int
		{
			return _escortRewardMoney;
		}
		
		public function get escortFaildTime():int
		{
			return _escortFaildTime - (getTimer() - _escortFaildTime_runtime)/1000;
		}
		
		public function get escortRefreshTime():uint
		{
			return _escortRefreshTime - (getTimer() - _escortRefreshTime_runtime)/1000;
		}
		
		public function get escortRefreshNum():uint
		{
			return _escortRefreshNum;
		}
		
		public function get escortRemainderNum():int
		{
			return _escortRemainderNum;
		}
		
		public function get escortTotalNum():int
		{
			return _escortTotalNum;
		}
		
		public function setPraticeNum(remainder:int, total:int):void
		{
			this.praticeRemainderNum = remainder;
			this.praticeTotalNum = total;
			
			dispModelEvent(ModelEvent.UPDATE,KEY_PRATICE_NUM);
		}
		
		public function getPraticeRemainderNum():int
		{
			return this.praticeRemainderNum;
		}
		
		public function getPraticeTotalNum():int
		{
			return this.praticeTotalNum;
		}
		
		public function setLargessTotalNum(value:int):void
		{
			this.largessTotalNum = value;
			dispModelEvent(ModelEvent.UPDATE,KEY_LARGESS_TOTAL_NUM,null,value);
		}
		/**
		 * 获取悬赏任务的总完成数量
		 */
		public function getLargessTotalNum():int
		{
			return this.largessTotalNum;
		}
		
		public function setLargessRemainderNum(value:int):void
		{
			this.largessRemainderNum = value;
			dispModelEvent(ModelEvent.UPDATE,KEY_LARGESS_REMAINDER_NUM,null,value);
		}
		/**
		 * 获取悬赏任务的剩余完成数量
		 */
		public function getLargessRemainderNum():int
		{
			return this.largessRemainderNum;
		}
		
		
		
		
		public function setLargessSuperTotalNum(value:int):void
		{
			this.largessSuperTotalNum = value;
			dispModelEvent(ModelEvent.UPDATE,KEY_LARGESS_SUPER_TOTAL_NUM,null,value);
		}
		/**
		 * 获取悬赏任务S级的总完成数量
		 */
		public function getLargessSuperTotalNum():int
		{
			return this.largessSuperTotalNum;
		}
		
		public function setLargessSuperRemainderNum(value:int):void
		{
			this.largessSuperRemainderNum = value;
			dispModelEvent(ModelEvent.UPDATE,KEY_LARGESS_SUPER_REMAINDER_NUM,null,value);
		}
		/**
		 * 获取悬赏任务S级的剩余完成数量
		 */
		public function getLargessSuperRemainderNum():int
		{
			return this.largessSuperRemainderNum;
		}
		
		
		
		
		public function setLargessRefreshNum(value:int):void
		{
			this.largessRefreshNum = value;
			dispModelEvent(ModelEvent.UPDATE,KEY_LARGESS_REFRESH_NUM,null,value);
		}
		/**
		 * 获取悬赏任务的剩余刷新次数
		 */
		public function getLargessRefreshNum():int
		{
			return this.largessRefreshNum;
		}
		
		public function setLargessRefreshTime(value:uint):void
		{
			this.largessRefreshTime = value;
			this.largessRefreshTime_runtime = getTimer();
			dispModelEvent(ModelEvent.UPDATE,KEY_LARGESS_REFRESH_TIME,null,value);
		}
		/**
		 * 获取悬赏任务的剩余刷新时间
		 */
		public function getLargessRefreshTime():int
		{
			return this.largessRefreshTime - (getTimer() - this.largessRefreshTime_runtime)/1000;
		}
		
//		public function setActivityReceiveRemainNum(value:int):void
//		{
//			activityReceiveRemainNum = value;
//			
//			dispModelEvent(ModelEvent.UPDATE,KEY_ACTIVITY_RECEIVE_REMAIN_NUM,null,value);
//		}
//		
//		public function getActivityReceiveRemainNum():int
//		{
//			return activityReceiveRemainNum;
//		}
//		
//		public function setActivityReceiveTotalNum(value:int):void
//		{
//			activityReceiveTotalNum = value;
//			
//			dispModelEvent(ModelEvent.UPDATE,KEY_ACTIVITY_RECEIVE_TOTAL_NUM,null,value);
//		}
//		
//		public function getActivityReceiveTotalNum():int
//		{
//			return activityReceiveTotalNum;
//		}
//		
//		public function setActivityRefreshTime(value:int):void
//		{
//			activityRefreshTime = value;
//			
//			dispModelEvent(ModelEvent.UPDATE,KEY_ACTIVITY_REFRESH_TIME,null,value);
//		}
//		
//		public function getActivityRefreshTime():int
//		{
//			return activityRefreshTime;
//		}
		
		public function setHistroyIds(value:Array):void
		{
			histroyIds = value;
			dispModelEvent(ModelEvent.UPDATE,KEY_HISTROY_IDS,null,value);
		}
		
		public function addHistroyId(id:int):void
		{
			histroyIds.push(id);
			dispModelEvent(ModelEvent.UPDATE,KEY_HISTROY_ADD_ID,null,id);
		}
		
		public function hasHistoryId(id:int):Boolean
		{
			return histroyIds.indexOf(id) != -1;
		}
		
		public function hasHistoryIdByExpression(expression:String):Boolean
		{
			var arr:Array = expression.match(/[^()][^()]+/g);
			for each(var ids:String in arr)
			{
				var b:Boolean = true;
				for each(var id:String in ids.split(","))
				{
					b &&= hasHistoryId(int(id));
				}
				if(b)
				{
					return true;
				}
			}
			return false;
		}
		
		
		public function setTaskInfos(value:Array):void
		{
			respondedCount ++;
			taskInfos = value;
			dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFOS,null,value);
		}
		
		public function setTaskInfosByType(value:Array,type:int):void
		{
			if(type==0)
			{
				setTaskInfos(value);
			}else
			{
				//先删除
				for(var i:int=taskInfos.length-1;i>=0;i--)
				{
					var ti:TaskInfo = taskInfos[i];
					if(ti.type == type)
					{
						taskInfos.splice(i,1);
					}
				}
				//再增加
				for each(ti in value)
				{
					taskInfos.push(ti);
				}
				dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFOS);
			}
		}
		
		public function hasTaskInfo(id:int):Boolean
		{
			for each(var ti:TaskInfo in taskInfos)
			{
				if(ti.id == id)
				{
					return true;
				}
			}
			return false;
		}
		
		public function hasTaskInfoByType(...types):Boolean
		{
			for each(var ti:TaskInfo in taskInfos)
			{
				if(types.indexOf(ti.type) != -1)
				{
					return true;
				}
			}
			return false;
		}
		
		public function hasTaskInfoByState(id:int,state:int):Boolean
		{
			for each(var ti:TaskInfo in taskInfos)
			{
				if(ti.id == id && ti.state == state)
				{
					return true;
				}
			}
			return false;
		}
		
		public function hasTaskInfoByStateByExpression(expression:String,state:int):Boolean
		{
			var arr:Array = expression.match(/[^()][^()]+/g);
			for each(var ids:String in arr)
			{
				var b:Boolean = true;
				for each(var id:String in ids.split(","))
				{
					b &&= hasTaskInfoByState(int(id),state);
				}
				if(b)
				{
					return true;
				}
			}
			return false;
		}
		
		public function hasTaskInfoByConditionState(id:int,conditionIndex:int,state:int):Boolean
		{
			for each(var ti:TaskInfo in taskInfos)
			{
				if(ti.id == id && ti.state == TaskStateDef.RECEIVED)
				{
					var tci:TaskConditionInfo = ti.conditions[conditionIndex] as TaskConditionInfo;
					if(tci && tci.state == state)
					{
						return true;
					}
				}
			}
			return false;
		}
		
//		public function hasTaskInfoByConditionStateByExpression(expression:String,state:int):Boolean
//		{
//			var arr:Array = expression.match(/[^()][^()]+/g);
//			for each(var ids:String in arr)
//			{
//				var arr1:Array = ids.split(",");
//				for(var i:int=1;i<arr1.length;i++)
//				{
//					if(hasTaskInfoByConditionState(arr1[0],int(arr1[i])-1,state))
//					{
//						return true;
//					}
//				}
//			}
//			return false;
//		}
		
		public function hasTaskInfoByStateAndConditionStateByExpression(expression:String):Boolean
		{
			var arr:Array = expression.match(/[^()][^()]+/g);
			for each(var ids:String in arr)
			{
				var arr1:Array = ids.split(",");
//				Assert(arr1.length>1,"查询任务状态及条件时，参数有误");
				switch(int(arr1[1]))
				{
					case TaskStateDef.RECEIVE_ABLE:
					case TaskStateDef.COMMIT_ABLE:
						if(hasTaskInfoByState(arr1[0], arr1[1]))
						{
							return true;
						}
						break;
					case TaskStateDef.RECEIVED:
						if(arr1.length>2)
						{
							if(hasTaskInfoByConditionState(arr1[0],int(arr1[2])-1,arr1[3]))
							{
								return true;
							}	
						}else
						{
							if(hasTaskInfoByState(arr1[0], arr1[1]))
							{
								return true;
							}
						}
						
						break;
				}
			}
			return false;
		}
		
		public function modifyTaskInfo(taskInfo:TaskInfo):void
		{
			for each(var ti:TaskInfo in taskInfos)
			{
				if(ti.id == taskInfo.id)
				{
					ti.isNew = taskInfo.isNew;
					ti.type = taskInfo.type;
					ti.state = taskInfo.state;
					ti.conditions = taskInfo.conditions;
					ti.condState = taskInfo.condState;
					
					dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_MODIFY,ti,ti);
					return;
				}
			}
		}
		
		public function receiveTaskInfo(taskInfo:TaskInfo,resetXiuxin:Boolean=false):void
		{
//			下面的去掉了，，之后由服务器通知过来
//			if(taskInfo.type == TaskTypeDef.ACTIVITY && taskInfo.state != TaskStateDef.RECEIVE_ABLE)
//			{
//				setActivityReceiveRemainNum(Math.max(0,activityReceiveRemainNum-1));
//			}
//			//如果有新的修行任务过来，，就清掉之前的修行计数
//			if(resetXiuxin && taskInfo.type == TaskTypeDef.XIUXING && taskInfo.state == TaskStateDef.RECEIVED)
//			{
//				setXiuxingDoneNum(1);
//			}
			for each(var ti:TaskInfo in taskInfos)
			{
				if(ti.id == taskInfo.id)
				{
					modifyTaskInfo(taskInfo);
					return;
				}
			}
			
			taskInfos.push(taskInfo);
			dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_RECEIVE,null,taskInfo);
		}
		
		public function giveupTaskInfo(taskId:int):void
		{
			for(var i:int=0;i<taskInfos.length;i++)
			{
				var ti:TaskInfo = taskInfos[i] as TaskInfo;
				if(ti.id == taskId)
				{
					if(ti.type == TaskTypeDef.LARGESS || ti.type == TaskTypeDef.ESCORT)
					{
						ti.state = TaskStateDef.RECEIVE_ABLE;
					}else
					{
						taskInfos.splice(i,1);
					}
					dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_GIVEUP,ti,null);
					return;
				}
			}
		}
		
		public function giveupTaskInfoById(taskId:int):void
		{
			for(var i:int=0;i<taskInfos.length;i++)
			{
				var ti:TaskInfo = taskInfos[i] as TaskInfo;
				if(ti.id == taskId)
				{
					
					taskInfos.splice(i,1);
					
					dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_GIVEUP,ti,null);
					return;
				}
			}
		}
		
		public function commitTaskInfo(taskId:int):void
		{
			for(var i:int=0;i<taskInfos.length;i++)
			{
				var ti:TaskInfo = taskInfos[i] as TaskInfo;
				if(ti.id == taskId)
				{
					if(ti.type == TaskTypeDef.ESCORT)
					{
						ti.state = TaskStateDef.COMMITED;
						//押镖任务如果大于3个的时候，那当前这个任务提交后就可以删掉了
						if(getTaskInfosByType(TaskTypeDef.ESCORT).length>3)
						{
							taskInfos.splice(i,1);
						}
						dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_COMMIT,ti,null);
					}else if(ti.type == TaskTypeDef.LARGESS)
					{
						ti.state = TaskStateDef.COMMITED;
						
						//活动任务如果多于4个的时候，那当前这个提交后的任务就可以删掉了
						if(getTaskInfosByType(TaskTypeDef.LARGESS).length>4)
						{
							taskInfos.splice(i,1);
						}
						
						dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_COMMIT,ti,null);
					}else
					{
						taskInfos.splice(i,1);
						
						dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_REMOVE,ti,null);
					}
					return;
				}
			}
		}
		
		public function removeTaskInfoById(taskId:int):void
		{
			for(var i:int=0;i<taskInfos.length;i++)
			{
				var ti:TaskInfo = taskInfos[i] as TaskInfo;
				if(ti.id == taskId)
				{
					
					taskInfos.splice(i,1);
					
					dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFO_REMOVE,ti,null);
					return;
				}
			}
		}
		
		public function replaceTaskInfo(taskId:int, replaceWith:TaskInfo):void
		{
			for(var i:int=0;i<taskInfos.length;i++)
			{
				var ti:TaskInfo = taskInfos[i] as TaskInfo;
				if(ti.id == taskId)
				{
					
					taskInfos.splice(i,1,replaceWith);
					
					dispModelEvent(ModelEvent.UPDATE,KEY_TASK_INFOS,ti,null);
					return;
				}
			}
		}
		
		public function getTaskInfosByType(type:int):Array
		{
			var arr:Array = [];
			for each(var ti:TaskInfo in taskInfos)
			{
				if(ti.type == type)
				{
					arr.push(ti);
				}
			}
			return arr;
		}
		
		
		public function getTaskInfos():Array
		{
			return taskInfos;
		}
		
		public function getTaskInfo(taskId:int):TaskInfo
		{
			for each(var ti:TaskInfo in taskInfos)
			{
				if(ti.id == taskId)
				{
					return ti;
				}
			}
			return null;
		}
		
		public function getTaskInfoByName(taskName:String):TaskInfo
		{
			for each(var ti:TaskInfo in taskInfos)
			{
				if(ti.cfg.name == taskName || ti.cfg.name.indexOf(taskName)==0)
				{
					return ti;
				}
			}
			return null;
		}
		
		public function getTaskInfosByState(...states):Array
		{
			var arr:Array = [];
			
			for each(var ti:TaskInfo in taskInfos)
			{
				if(states.indexOf(ti.state) != -1)
				{
					arr.push(ti);
				}
			}
			
			return arr;
		}
		
//		/**
//		 * 根据状态返回任务组，和所有主线任务
//		 * @param states
//		 * @return 
//		 */
//		public function getTaskInfosByStateAndAllMain(...states):Array
//		{
//			var arr:Array = [];
//			
//			for each(var ti:TaskInfo in taskInfos)
//			{
//				if(ti.type == TaskTypeDef.MAIN || states.indexOf(ti.state) != -1)
//				{
//					arr.push(ti);
//				}
//			}
//			
//			return arr;
//		}
		
		public function getTaskInfosByNpc(sceneId:int,npcId:int):Array
		{
			var arr:Array = [];
			for each(var ti:TaskInfo in taskInfos)
			{
				if(ti.state == TaskStateDef.COMMIT_ABLE || ti.state == TaskStateDef.RECEIVED)
				{
					if(ti.cfg.commitNpcSceneId == sceneId && ti.cfg.commitNpcId == npcId)
					{
						arr.push(ti);
					}
				}else
				{
					if(ti.cfg.receiveNpcSceneId == sceneId && ti.cfg.receiveNpcId == npcId)
					{
						arr.push(ti);
					}
				}
			}
			return arr;
			
//			var ti:TaskInfo;
//			//已完成的
//			for each(ti in taskInfos)
//			{
//				if(ti.state == TaskStateDef.COMMIT_ABLE && ti.cfg.commitNpcSceneId == sceneId && ti.cfg.commitNpcId == npcId)
//				{
//					arr.push(ti);
//				}
//			}
//			
//			//进行中的
//			for each(ti in taskInfos)
//			{
//				if(ti.state == TaskStateDef.RECEIVED && ti.cfg.commitNpcSceneId == sceneId && ti.cfg.commitNpcId == npcId)
//				{
//					arr.push(ti);
//				}
//			}
//			
//			//可接的
//			for each(ti in taskInfos)
//			{
//				if(ti.state == TaskStateDef.RECEIVE_ABLE && ti.cfg.commitNpcSceneId == sceneId && ti.cfg.commitNpcId == npcId)
//				{
//					arr.push(ti);
//				}
//			}
//			
//			return arr;
		}
		
		
		public function setXiuxingTotalNum(value:int):void
		{
			xiuxingTotalNum = value;
			
			dispModelEvent(ModelEvent.UPDATE,KEY_XIUXING_TOTAL_NUM,null,null);
		}
		public function getXiuxingTotalNum():int
		{
			return xiuxingTotalNum;
		}
		
		public function setXiuxingDoneNum(value:int):void
		{
			xiuxingDoneNum = value;
			
			dispModelEvent(ModelEvent.UPDATE,KEY_XIUXING_DONE_NUM,null,null);
		}
		public function getXiuxingDoneNum():int
		{
			return xiuxingDoneNum;
		}
		
	}
}