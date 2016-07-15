package player.commands
{
	

	/**
	 * @author woodychen
	 * @createTime 2014-9-18 下午1:21:30
	 **/
	public class ShowPlayerDialogCommand extends BasePlayerCommand
	{
		public var uin:uint;
		public var roleId:uint;
		public var svrId:uint;
		public var dialogText:String;
		
		public function ShowPlayerDialogCommand(uin:uint, roleId:uint, svrId:uint, dialogText:String)
		{
			super();
			
			this.uin = uin;
			this.roleId = roleId;
			this.svrId = svrId;
			this.dialogText = dialogText;
		}
	}
}