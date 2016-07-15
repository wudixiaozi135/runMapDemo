package hud.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class RequestActivityHubItemDataCommand extends Command
	{
		public var datas:Array;
		public var id:int;
		public var activityId:int;
		
		public function RequestActivityHubItemDataCommand(id:int=0,activityId:int=0)
		{
			super();
			
			this.id = id;
			this.activityId = activityId;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.RSMODEL;
		}
	}
}