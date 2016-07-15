package user.command
{
    import user.data.OtherUserInfo;

    public class GetOtherUserInfoCommand extends BaseUserCommand
    {
        public var uin:uint;
        public var roleId:uint;
        public var serverId:uint;
        public var data:OtherUserInfo;
		public var type:int;

        public function GetOtherUserInfoCommand(uin:uint, roleId:uint=0, serverId:uint=0, type:int = 1)
        {
            super();

            this.uin = uin;
            this.roleId = roleId;
            this.serverId = serverId;
			this.type = type;
        }
    }
}