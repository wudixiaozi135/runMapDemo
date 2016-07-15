package team.data
{
	public class TeamData
	{
		public var id:String;
		public var name:String;
		public var type:int;
		public var destinationId:int;
		public var captainLevel:int;
		public var combatPower:int;
		public var members:Vector.<TeamMemberData>;
        public var index:int;
		
		public function TeamData()
		{
		}
		
		public function getCaptain():TeamMemberData
		{
			for each(var tmd:TeamMemberData in members)
			{
				if(tmd.isCaptain)
				{
					return tmd;
				}
			}
			return null;
		}
	}
}