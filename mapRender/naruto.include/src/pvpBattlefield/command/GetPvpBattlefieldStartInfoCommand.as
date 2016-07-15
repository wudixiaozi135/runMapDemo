package pvpBattlefield.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	import serverProto.inc.ProtoLocationInfo;
	
	public class GetPvpBattlefieldStartInfoCommand extends Command
	{
		public var location:ProtoLocationInfo;
		public function GetPvpBattlefieldStartInfoCommand()
		{
			super();
		}
		
		override public function getPluginName():String {
			return PluginDef.PVPBATTLEFIELD;
		}
	}
}