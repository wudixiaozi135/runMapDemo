package pvpBattlefield.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class CheckPvpBattleFieldCampCommand extends Command
	{
		public var uin:int;
		public var role:int;
		public var svr:int;
		public var camp:int;
		
		public function CheckPvpBattleFieldCampCommand(uin:int, role:int, svr:int)
		{
			super();
			
			this.uin = uin;
			this.role = role;
			this.svr = svr;
		}
		
		override public function getPluginName():String {
			return PluginDef.PVPBATTLEFIELD;
		}
	}
}