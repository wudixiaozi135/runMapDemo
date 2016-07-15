package player.commands
{
	import flash.geom.Point;
	
	/**
	 * 跳跃
	 * @author larryhou
	 * @createTime 2013/8/31 14:11
	 */
	public class PlayerJumpCommand extends BasePlayerCommand
	{
		public var uin:uint;
		public var roleId:uint;
		public var svrId:uint;
		public var ninja:uint;
		public var location:Point;
		
		/**
		 * 构造函数
		 * create a [JumpCommand] object
		 */
		public function PlayerJumpCommand(uin:uint, roleId:uint, svrId:uint, ninja:uint, location:Point)
		{
			this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
			this.ninja = ninja; 
			this.location = location;
		}

		
	}

}