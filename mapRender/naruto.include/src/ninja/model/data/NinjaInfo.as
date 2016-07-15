package ninja.model.data 
{
	import bag.data.EquipmentItemData;
	
	import cfgData.dataStruct.NinjaInfoCFG;
	import cfgData.dataStruct.NinjaSkillCFG;
	import cfgData.dataStruct.SkillCFG;
	
	import com.tencent.morefun.framework.net.pub;
	
	import serverProto.formation.FormationType;
	import serverProto.inc.ProtoDiamondInfo;
	
	/**
	 * 忍者信息
	 * @author larryhou
	 * @createTime 2013/9/24 11:03
	 */
	public class NinjaInfo 
	{		
		public static const MAX_STAR_LEVEL:int = 4;  //最大升星等级，升星等级范围为0~4，共5级
		
		/**
		 * 忍者唯一标记
		 */
		public var sequence:int;
		
		/**
		 * 忍者id
		 */
		public var id:uint;
		
		/**
		 * 经验值
		 */
		public var exp:uint;
		
		/**
		 * 忍者当前等级最大经验
		 */
		public var fullExp:uint;
		
		/**
		 * 忍者等级
		 */
		public var level:uint;
		
		/**
		 * 忍者觉醒等级
		 */
		public var levelUpgrade:uint;//0绿,1蓝,2紫,3金,4红
		
		/**
		 * 战斗力
		 */
		public var combat:uint;
		
		/**
		 * 心情
		 */
		public var mood:uint;
		
		/**
		 * 全属性加成
		 */
		public var allAttribute:int;
		
		/**
		 * 主角的晋升等级
		 */
		public var rolePromoteLevel:int;
		
		/**
		 * 忍者详细信息
		 */
		public var detail:NinjaDetailInfo;
		
		/**
		 * 忍者装备信息
		 */
		public var equipments:Vector.<EquipmentItemData>;
		
		/**
		 * 忍者觉醒信息
		 */
		public var awaken:NinjaAwakenInfo;
		
		/**
		 * 忍者配置信息
		 */
		public var cfg:NinjaInfoCFG;
		
		/**忍者试用cd*/
		public var tryOutLeftCd:Number;
		/**忍者试用类型*/
		public var vipFlag:int;
		
		/**
		 * 忍者阵法状态
		 * @see serverProto.inc.NinjaSourceType
		 * 对应的阵法状态可以通过位移来得到，比如小队阵法状态: Boolean(status & (1 << FormationType.DEFAULT_FORMATION))
		 */
		public var status:uint;
		
		/**
		 * 后台协议的忍者状态
		 */
		public var ninjastate:uint;// 忍者状态 0:仓库 1上阵 2背包 3,在修炼 4
		
		/**
		 * 忍者升星等级
		 */
		public var starLevel:uint;
		
		/**
		 * 忍者升星信息
		 */
		public var starUpgradeInfo:NinjaStarUpgradeInfo;
		
		/**
		 * 生存试炼 是否参战
		 */
		public var expeditionHasFight:Boolean=false;
		/**
		 * 忍者属性强化信息
		 */
		public var propertyStrengthenInfoList:NinjaPropertyStrengthenInfoList;
		/**
		 * 技场首胜标志,0或者没有:不需要显示, 1:需要显示
		 */		
		public var arenaWinFlag:Boolean;
		/**
		 * 是否在小队阵法上
		 */
		public function get isInFormation():Boolean { return Boolean(status & (1 << FormationType.DEFAULT_FORMATION)); }
		
		public function checkIsInFormation(formationType:uint = 0):Boolean
		{
			return Boolean(status & (1 << formationType));
		}
		
		/**
		 * 是否在背包里
		 */
		public function get isPackage():Boolean
		{
			if(ninjastate == 2){
				return true;
			}else{
				return false;
			}		
		}
		
		// 扩展字段
		//*************************************************
		/**
		 * 是否被选中
		 */
		public var selected:Boolean;
		
		/**
		 * 查克拉技能id
		 */
		public var chakura:SkillCFG;
		
		/**
		 *用来临时存储主角忍者技能 
		 */		
		public var majorSpecialSkill:int;
		/**
		 *是否在修炼中
		 */	
		public var inPractice:Boolean;
		
		/**
		 * 是否是其他玩家的主角信息
		 */
		public var isOtherPlayer:Boolean = false;
		
		/**
		 * 如果是其他玩家的主角，otherPlayerName是该玩家的名字
		 */
		public var otherPlayerName:String;
		
		/**
		 * 如果是其他玩家的主角，otherPlayerSkillCfg
		 */
		public var otherPlayerSkillCfg:NinjaSkillCFG;
		
		public var otherPlayerVipLevel:int;
		
		public var otherPlayerDiamondInfo:ProtoDiamondInfo;
		
		public var otherPlayerSvrId:uint;
		
		public var talentTipsType:uint;
		
		public function get sortHp():int
		{
			if(detail)
			{
				return detail.life;
			}
			
			return 0;
		}
		
		public function clone():NinjaInfo
		{
			var result:NinjaInfo = new NinjaInfo();
			
			result.sequence = this.sequence;
			result.id = this.id;
			result.exp = this.exp;
			result.fullExp = this.fullExp;
			result.level = this.level;
			result.levelUpgrade = this.levelUpgrade;
			result.combat = this.combat;
			result.mood = this.mood;
			result.allAttribute = this.allAttribute;
			result.rolePromoteLevel = this.rolePromoteLevel;
			result.detail = this.detail.clone();
			result.equipments = this.equipments;
			result.awaken = this.awaken;
			result.cfg = this.cfg;
			result.status = this.status;
			result.ninjastate = this.ninjastate;
			result.starLevel = this.starLevel;
			result.starUpgradeInfo = this.starUpgradeInfo;
			result.propertyStrengthenInfoList = this.propertyStrengthenInfoList;
			result.selected = this.selected;
			result.chakura = this.chakura;
			result.majorSpecialSkill = this.majorSpecialSkill;
			result.inPractice = this.inPractice;
			result.isOtherPlayer = this.isOtherPlayer;
			result.otherPlayerName = this.otherPlayerName;
			result.otherPlayerSkillCfg = this.otherPlayerSkillCfg;
			
			return result;
		}		
	}

}