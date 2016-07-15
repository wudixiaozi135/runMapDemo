package battle.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class FightRequestNotifyAckCommand extends Command
	{
		public var is_accept:Boolean;
		public var uin:uint;
		public var roleId:uint;
		public var svrId:uint;
		
		public function FightRequestNotifyAckCommand(uin:uint, roleId:uint, svrId:uint, is_accept:Boolean)
		{
			super();
			
			this.is_accept = is_accept;
			this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.BATTLE;
		}
	}
}