package hud.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class RequestActivityHubLiteItemDataCommand extends Command
	{
		public var type:int;
		
		public function RequestActivityHubLiteItemDataCommand(type:int=0)
		{
			super();
			
			this.type = type;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.RSMODEL;
		}
	}
}