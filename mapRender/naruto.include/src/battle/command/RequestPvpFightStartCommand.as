package battle.command
{
	import battle.def.RequestFightStartTypeDef;
	
	import def.PluginDef;
	
	import user.def.UserStateDef;
	
	public class RequestPvpFightStartCommand extends RequestFightStartCommand
	{
		public var uin:uint;
		public var type:int;
		public var role_id:uint;
		public var svr_id:uint;
		public var passivity:Boolean;
		
		/**
		 * 
		 * @param uin 受击者uin
		 * @param role_id 受击者role_id
		 * @param svr_id 受击者svr_id
		 * 
		 */
		public function RequestPvpFightStartCommand(uin:uint, role_id:uint, svr_id:uint, passivity:int = 0, type:int = RequestFightStartTypeDef.PVP)
		{
			super();
			
			this.uin = uin;
			this.type = type;
			this.role_id = role_id;
			this.svr_id = svr_id;
			this.passivity = passivity != 0;
		}
		
		override public function call():void
		{
			if(passivity && selfInfo.state.getFlagByName(UserStateDef.ACTION_CAN_BE_PVP) == false)
			{
				return;
			}
			
			if(!passivity && selfInfo.state.getFlagByName(UserStateDef.ACTION_CAN_PVP) == false)
			{
				return;
			}
			
			super.call();
		}
		
		override public function begin():void
		{
			super.begin();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.BATTLE;
		}
	}
}