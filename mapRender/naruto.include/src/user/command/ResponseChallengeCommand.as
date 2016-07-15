package user.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class ResponseChallengeCommand extends NarutoCommand
	{
		public var uin:uint;
		public var roleId:uint;
		public var svrId:uint;
		public var isAccept:Boolean;
		
		public function ResponseChallengeCommand(uin:uint, roleId:uint, svrId:uint, isAccept:Boolean)
		{
			super();
			
			this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
			this.isAccept = isAccept;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.USER;
		}
	}
}