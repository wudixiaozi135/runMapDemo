package crew.cmd
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	import serverProto.inc.ProtoPlayerKey;
	
	public class OpenOthersCrewBoxCommand extends Command
	{
		public var playerKey:ProtoPlayerKey;
		
		public function OpenOthersCrewBoxCommand(playerKey:ProtoPlayerKey)
		{
			super();
			this.playerKey = playerKey;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.CREW;
		}
	}
}