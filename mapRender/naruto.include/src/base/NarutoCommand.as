package base
{
	import com.tencent.morefun.framework.base.Command;
	
	import user.data.UserInfo;
	
	public class NarutoCommand extends Command
	{
		private var bingdingStateList:Array;
		private var enableStateList:Array;
		
		private var beginStateList:Array;
		private var endStateList:Array;
		
		public function NarutoCommand(commandLoadingType:int = 2)
		{
			super(commandLoadingType);
		}
		
		public function addBeginStateInfo(state:String, value:Boolean):void
		{
			beginStateList = beginStateList || [];
			
			beginStateList.push(new NarutoCommandStateInfo(state, value));
		}
		
		public function addEndStateInfo(state:String, value:Boolean):void
		{
			endStateList = endStateList || [];
			
			endStateList.push(new NarutoCommandStateInfo(state, value));
		}
		
		public function addEnableStateInfo(state:String, value:Boolean):void
		{
			enableStateList = enableStateList || [];
			
			enableStateList.push(new NarutoCommandStateInfo(state, value));
		}
		
		override public function begin():void
		{
			super.begin();
			
			for each(var stateInfo:NarutoCommandStateInfo in beginStateList)
			{
				selfInfo.state.setFlagByName(stateInfo.state, stateInfo.value);
			}
		}
		
		override public function end():void
		{
			super.end();
			
			for each(var stateInfo:NarutoCommandStateInfo in endStateList)
			{
				selfInfo.state.setFlagByName(stateInfo.state, stateInfo.value);
			}
		}
		
		public function getEnableState():Array
		{
			return [];
		}
		
		public function checkStateEnable():Boolean
		{
			for each(var stateInfo:NarutoCommandStateInfo in enableStateList)
			{
				if(selfInfo.state.getFlagByName(stateInfo.state) != stateInfo.value)
				{
					return false;
				}
			}
			
			return true;
		}
		
		public function get selfInfo():UserInfo
		{
			return ApplicationData.singleton.selfInfo;
		}
	}
}