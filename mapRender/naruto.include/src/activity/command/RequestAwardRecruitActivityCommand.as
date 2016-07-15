package activity.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class RequestAwardRecruitActivityCommand extends Command
	{
		public var boxId:int;
		public var awardStatus:int;
		
		public function RequestAwardRecruitActivityCommand(boxId:int)
		{
			super();
			this.boxId = boxId;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.ACTIVITY;
		}
	}
}