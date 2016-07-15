package player.commands
{
    public class ShowPlayerLevelUpCommand extends BasePlayerCommand
    {
        public var uin:uint;
		public var roleId:uint;
		public var svrId:uint;
        public var level:int;

        public function ShowPlayerLevelUpCommand(uin:uint, roleId:uint, svrId:uint, level:int)
        {
            super();

            this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
            this.level = level;
        }
    }
}