package user.data
{
	public class NinjaLevelInfo
	{	
		public var levelType:uint;
		public var level:uint;
		public var upgradeExp:uint;
		public var totalUpgradeExp:uint;
		public var maxLeaderShip:uint;
		public var maxNinjaOnFormation:uint;
		
		public function NinjaLevelInfo(levelType:uint, level:uint, upgradeExp:uint, totalUpgradeExp:uint, maxLeaderShip:uint, maxNinjaOnFormation:uint)
		{
			this.levelType = levelType;
			this.level = level;
			this.upgradeExp = upgradeExp;
			this.totalUpgradeExp = totalUpgradeExp;
			this.maxLeaderShip = maxLeaderShip;
			this.maxNinjaOnFormation = maxNinjaOnFormation;
		}
	}
}