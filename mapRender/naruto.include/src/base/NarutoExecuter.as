package base
{
	import com.tencent.morefun.framework.base.Command;
	import com.tencent.morefun.framework.loader.FileManager;
	import com.tencent.morefun.naruto.executer.Executer;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	
	import def.ApplicationKeyDef;
	
	import user.data.UserInfo;
	
	public class NarutoExecuter extends Executer
	{
		public function NarutoExecuter(pluginName:String, executerName:String=null)
		{
			super(pluginName, executerName);
			
			if(selfInfo == null)
			{
				ApplicationData.singleton.addEventListener(ModelEvent.UPDATE, onUpdateSelfInfo);
			}
		}
		
		override public function commandFilter(command:Command):Boolean
		{
			var narutoCommand:NarutoCommand;
			
			if(command is NarutoCommand)
			{
				narutoCommand = command as NarutoCommand;
				return narutoCommand.checkStateEnable();
			}
			
			return true;
		}
		
		private function onUpdateSelfInfo(evt:ModelEvent):void
		{
			ApplicationData.singleton.removeEventListener(ModelEvent.UPDATE, onUpdateSelfInfo);
			
			for each(var stateCallBackInfo:Object in stateListList)
			{
				addSelfStateListener(stateCallBackInfo.state, stateCallBackInfo.callback, stateCallBackInfo.data, stateCallBackInfo.priority);
			}
		}
		
		/**
		 * 获取带有版本号的URL
		 */
		public function getQaulifiedUrl(url:String):String
		{
			return FileManager.getQualifiedUrl(url);
		}
		
		public function get selfInfo():UserInfo
		{
			return ApplicationData.singleton.selfInfo;
		}
		
		public function get appData():ApplicationData
		{
			return ApplicationData.singleton;
		}
		
		public function getState(state:String):Boolean
		{
			return selfInfo.state.getFlagByName(state);
		}
		
		public function changeSelfState(state:String, value:Boolean):void
		{
			selfInfo.state.setFlagByName(state, value);
		}
		
		private var stateListList:Array;
		public function addSelfStateListener(state:String, callback:Function, data:Object = null, priority:int = 0):void
		{
			if(selfInfo == null)
			{
				stateListList ||= [];
				
				stateListList.push({state:state, callback:callback, data:data, priority:priority});
				return ;
			}
			
			selfInfo.state.addFlagChangedListenerByName(state, callback, data, priority);
		}
		
		public function removeSelfStateListener(state:String, callback:Function):void
		{
			if(selfInfo == null)
			{
				removeStateListenerList(state, callback);
				return ;
			}
			
			selfInfo.state.removeFlagChangedListenerByName(state, callback);
		}
		
		private function removeStateListenerList(state:String, callback:Function):void
		{
			stateListList ||= [];
			
			for(var i:int = 0;i < stateListList.length;i ++)
			{
				if(stateListList[i].state == state && stateListList[i].callback == callback)
				{
					stateListList.splice(i, 1);
					i --;
				}
			}
		}
	}
}