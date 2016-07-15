package user.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	import user.data.UserInfo;
	
	public class RequestUserInfoCommand extends Command
	{
		public var uin:uint;
		public var roleId:uint;
		public var serverId:uint;
        public var data:UserInfo;

		public function RequestUserInfoCommand(uin:uint, roleId:uint, serverId:uint, data:UserInfo=null)
		{
			super();
			
			this.uin = uin;
			this.roleId = roleId;
			this.serverId = serverId;
            this.data = data;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.USER;
		}
	}
}