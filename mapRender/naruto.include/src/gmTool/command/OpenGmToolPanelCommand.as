package gmTool.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	import serverProto.inc.ProtoPlayerKey;
	
	public class OpenGmToolPanelCommand extends Command
	{
		public var playerKey:ProtoPlayerKey;
		
		public function OpenGmToolPanelCommand(playerKey:ProtoPlayerKey)
		{
			super();
			this.playerKey = playerKey;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.GMTOOL;
		}
	}
}
