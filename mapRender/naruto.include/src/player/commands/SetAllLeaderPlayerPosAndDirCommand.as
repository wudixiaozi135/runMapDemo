package player.commands
{
	public class SetAllLeaderPlayerPosAndDirCommand extends BasePlayerCommand
	{
		public var ninjiaList:Vector.<uint>; // ninjia 的索引对应下现属性的索引
		public var positionXList:Vector.<int>;
		public var positionYList:Vector.<int>;
		public var directionList:Vector.<int>;
		
		public function SetAllLeaderPlayerPosAndDirCommand(ninjiaList:Vector.<uint>, positionXList:Vector.<int>, positionYList:Vector.<int>, directionList:Vector.<int>)
		{
			super();
			this.ninjiaList = ninjiaList;
			this.positionXList = positionXList;
			this.positionYList = positionYList;
			this.directionList = directionList;
		}
	}
}