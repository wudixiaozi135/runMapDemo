package battle.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	import user.def.UserStateDef;
	
	public class RequestInsertFightCommand extends NarutoCommand
	{
		public var uin:uint;
		public var roleId:int;
		public var svrId:int;
		
		public function RequestInsertFightCommand(uin:uint, roleId:int=0, svrId:int=0)
		{
			super();
			
			this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
			
			this.addBeginStateInfo(UserStateDef.BASE_PVP, true);
			this.addBeginStateInfo(UserStateDef.BASE_PVE, true);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.BATTLE;
		}
	}
}