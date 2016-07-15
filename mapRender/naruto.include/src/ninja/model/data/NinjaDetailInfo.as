package ninja.model.data 
{
	/**
	 * 忍者详细信息
	 * @author larryhou
	 * @createTime 2013/9/24 11:06
	 */
	public class NinjaDetailInfo 
	{
		/**
		 * 加入地点
		 */
		public var birthPlace:uint;
		
		/**
		 * 加入时间
		 */
		public var birthTime:uint;
		
		/**
		 * 所需领导力
		 */
		public var leadership:uint;
		
		/**
		 * 当前血量
		 */
		public var life:int;
		
		/**
		 * 最大血量
		 */
		public var lifeMax:NinjaPropertyInfo;
		
		/**
		 * 攻击
		 */
		public var attack:NinjaPropertyInfo;
		
		/**
		 * 防御
		 */
		public var defence:NinjaPropertyInfo;
		
		/**
		 * 忍术
		 */
		public var ninjutsu:NinjaPropertyInfo;
		
		/**
		 * 抗性
		 */
		public var resistance:NinjaPropertyInfo;
		
		/**
		 * 暴击值
		 */
		public var critAttack:uint;
		
		/**
		 * 暴伤值
		 */
		public var critHarm:uint;  
		
		/**
		 * 先攻值
		 */
		public var firstAttack:uint; 
		
		/**
		 * 连击值
		 */
		public var continuousAttack:uint;  
		
		/**
		 * 控制值
		 */
		public var control:uint;  
		
		/**
		 * 体术穿透值
		 */
		public var phyStrike:uint;  
		
		/**
		 * 忍术穿透值
		 */
		public var ninpStrike:uint; 
		
		/**
		 * 伤害减免值
		 */
		public var harmRemission:uint;  
		
		/**
		 * 生命恢复值
		 */
		public var lifeRecover:uint; 
		
		/**
		 * 火抗值
		 */
		public var fireResist:int;  
		
		/**
		 * 风抗值
		 */
		public var windResist:int;  
		
		/**
		 * 雷抗值
		 */
		public var thunderResist:int; 
		
		/**
		 * 土抗值
		 */
		public var earthResist:int;  
		
		/**
		 * 水抗值
		 */
		public var waterResist:int; 
		
		public function clone():NinjaDetailInfo
		{
			var result:NinjaDetailInfo = new NinjaDetailInfo();
			result.birthPlace = this.birthPlace;
			result.birthTime = this.birthTime;
			result.leadership = this.leadership;
			result.life = this.life;
			result.lifeMax = this.lifeMax.clone();
			result.attack = this.attack.clone();
			result.defence = this.defence.clone();
			result.ninjutsu = this.ninjutsu.clone();
			result.resistance = this.resistance.clone();
			result.critAttack = this.critAttack;
			result.critHarm = this.critHarm;
			result.firstAttack = this.firstAttack;
			result.continuousAttack = this.continuousAttack;
			result.control = this.control;
			result.phyStrike = this.phyStrike;
			result.ninpStrike = this.ninpStrike;
			result.harmRemission = this.harmRemission;
			result.lifeRecover = this.lifeRecover;
			result.fireResist = this.fireResist;
			result.windResist = this.windResist;
			result.thunderResist = this.thunderResist;
			result.earthResist = this.earthResist;
			result.waterResist = this.waterResist;
			
			return result;
		}
		
	}

}