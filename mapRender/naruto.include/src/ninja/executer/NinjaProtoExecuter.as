package ninja.executer 
{	
	import bag.conf.BagItemConf;
	import bag.data.EquipmentItemData;
	import bag.data.GemItemData;
	import bag.utils.BagProtoParser;
	
	import base.CommandExecuter;
	
	import com.tencent.morefun.framework.log.logger;
	
	import flash.utils.getTimer;
	
	import ninja.model.data.FormationInfo;
	import ninja.model.data.NinjaArrangeInfo;
	import ninja.model.data.NinjaAwakenInfo;
	import ninja.model.data.NinjaAwakenItemInfo;
	import ninja.model.data.NinjaDetailInfo;
	import ninja.model.data.NinjaHotkeyInfo;
	import ninja.model.data.NinjaInfo;
	import ninja.model.data.NinjaPropertyInfo;
	import ninja.model.data.NinjaPropertyStrengthenInfo;
	import ninja.model.data.NinjaPropertyStrengthenInfoList;
	import ninja.model.data.NinjaStarLevelDetailInfo;
	import ninja.model.data.NinjaStarUpgradeInfo;
	
	import serverProto.bag.ProtoEquipInfo;
	import serverProto.bag.ProtoJadeInfo;
	import serverProto.baseInfo.ProtoAwakeItem;
	import serverProto.baseInfo.ProtoNinjaInfo;
	import serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfo;
	import serverProto.baseInfo.ProtoNinjaPropertyStrengthenInfoList;
	import serverProto.baseInfo.ProtoStarDetail;
	import serverProto.formationBase.ProtoFormationInfo;
	import serverProto.formationBase.ProtoNinjaArrange;
	import serverProto.formationBase.ProtoNinjaShortKey;
	import serverProto.user.ProtoNinjaPropertyComposeInfo;
	import serverProto.user.ProtoNinjaPropertyInfo;
	
	import team.data.TeamFormationNinja;
	
	import user.data.NinjaInfoConfig;
	
	/**
	 * 协议执行基类
	 * @author larryhou
	 * @createTime 2013/9/24 10:25
	 */
	public class NinjaProtoExecuter extends CommandExecuter
	{
		/**
		 * 构造函数
		 * create a [NinjaProtoExecuter] object
		 * @param	cache	是否把忍者信息缓存到主角数据模型
		 */
		public function NinjaProtoExecuter(pluginName:String)
		{
			super(pluginName);
		}
		
		/**
		 * 解析阵法信息
		 */
		public function decodeFormationInfo(data:ProtoFormationInfo, info:FormationInfo = null):FormationInfo
		{
			if (!data) return null;
			
			logger.output("[prewarDebugTrace]", "decodeFormationInfo", data.id);
			
			info ||= new FormationInfo();
			info.id = data.id;
			info.arranges = decodeNinjaArrangeInfos(data.ninja);
			info.hotkey = decodeHotkey(data.ninjaShortKey);
			info.leadershipMax = data.leadershipUlimit;
			info.leadershipUsed = data.leadershipConsumed;
			info.maxFormationNum = data.formationNinjaUlimit;
			info.combat = data.combatPower;
			info.level = data.level
			//这里增加等级 星级
			return info;
		}
		
		/**
		 * 解析阵法列表
		 */
		public function decodeNinjaArrangeInfos(list:Array/*[ProtoNinjaArrange object] list*/):Vector.<NinjaArrangeInfo>
		{
			var result:Vector.<NinjaArrangeInfo> = new Vector.<NinjaArrangeInfo>();
			
			var info:NinjaArrangeInfo;
			for each(var data:ProtoNinjaArrange in list)
			{
				logger.output("[prewarDebugTrace]", "decodeNinjaArrangeInfos",  data.ninjaSeq);
				
				info = new NinjaArrangeInfo();
				info.sequence = data.ninjaSeq;
				info.location = data.location;
				info.ninjaId = data.ninjaId;
				info.order = data.posQueue;
				info.life = data.hp;
				info.lifeMax = data.ulimitHp;
				result.push(info);
			}
			
			return result;
		}
		
		/**
		 * 解析热键
		 */
		public function decodeHotkey(data:ProtoNinjaShortKey, info:NinjaHotkeyInfo = null):NinjaHotkeyInfo
		{
			if (!data) return null;
			
			logger.output("[prewarDebugTrace]", "decodeHotkey");
			
			info ||= new NinjaHotkeyInfo();
			info.ninjaQ = data.shortKey_0;
			info.ninjaW = data.shortKey_1;
			info.ninjaE = data.shortKey_2;
			info.ninjaR = data.shortKey_3;
			info.ninjaT = data.shortKey_4;
			return info;
		}
		
		/**
		 * 解析忍者列表信息
		 * @param	list	ProtoNinjaInfo对象列表
		 */
		public function decodeNinjaInfos(list:Array/*[ProtoNinjaInfo object] list*/):Vector.<NinjaInfo>
		{
			var result:Vector.<NinjaInfo> = new Vector.<NinjaInfo>();
			
			var info:NinjaInfo;
			for each(var data:ProtoNinjaInfo in list)
			{
				info = decodeNinjaInfo(data);
				info && result.push(info);
			}
			
			return result;
		}
		
		/**
		 * 解析单个忍者信息
		 */
		public function decodeNinjaInfo(data:ProtoNinjaInfo, info:NinjaInfo = null):NinjaInfo
		{
			if (!data) return null;
			
			logger.output("[prewarDebugTrace]", "decodeNinjaInfo", data.ninjaSequence);
			
			info ||= new NinjaInfo();
			info.sequence = data.ninjaSequence;
			info.id = data.ninjaId;
			info.level = data.level;
			info.levelUpgrade = data.awakenLevel;
			info.exp = data.exp;
			info.fullExp = data.fullExp;
			info.mood = data.mood;
			info.combat = data.combat;
			info.allAttribute = data.allProfitRatio;
			info.rolePromoteLevel = data.rolePromoteLevel;
			info.ninjastate = data.ninjaState;
			info.starLevel = data.starLevel;
			info.expeditionHasFight = (data.expeditionHasFight==0)?false:true;
			info.arenaWinFlag = (Boolean)(data.arenaWinFlag);
			if (data.detailInfo)
			{ 
				if (!info.detail)
				{
					info.detail = new NinjaDetailInfo();
				}
				
				info.detail.birthPlace = data.detailInfo.birthPlace;
				info.detail.birthTime = data.detailInfo.birthday;
				info.detail.leadership = data.detailInfo.leaderPower;
				decodeDetailProperties(info.detail, data.detailInfo.property);
			}
			
			info.equipments = decodeEquips(data.equipementInfo);
			
			info.awaken = new NinjaAwakenInfo();
			info.awaken.need_level = data.awakeLevel;
			info.awaken.itemInfoList = decodeAwakenItems(data.awakeItemInfos);
			info.awaken.max_awake_level = 20;  //所有忍者（包括主角）的觉醒等级都是0~20级，一共21级
			
			if (data.ninjaAwakeInfo)
			{
				info.awaken.lifeBuff = data.ninjaAwakeInfo.hpProfit;
				info.awaken.attackBuff = data.ninjaAwakeInfo.bodyAttackProfit;
				info.awaken.defenseBuff = data.ninjaAwakeInfo.bodyDefenseProfit;
				info.awaken.ninjutsuBuff = data.ninjaAwakeInfo.ninjaAttackProfit;
				info.awaken.resistanceBuff = data.ninjaAwakeInfo.ninjaDefenseProfit;
				info.awaken.lifeGrowthBuff = data.ninjaAwakeInfo.growthHpProfit;
				info.awaken.attackGrowthBuff = data.ninjaAwakeInfo.growthBodyAttackProfit;
				info.awaken.defenceGrowthBuff = data.ninjaAwakeInfo.growthBodyDefenseProfit;
				info.awaken.ninjutsuGrowthBuff = data.ninjaAwakeInfo.growthNinjaAttackProfit;
				info.awaken.resistanceGrowthBuff = data.ninjaAwakeInfo.growthNinjaDefenseProfit;
			}
			
			info.starUpgradeInfo = new NinjaStarUpgradeInfo();		
			info.starUpgradeInfo.pieceNum = data.ninjaPiecesCount;
			info.starUpgradeInfo.needPieceNum = data.upgradeStarPiecesNeed;
			info.starUpgradeInfo.needMoney = data.upgradeMoneyTongbiNeed;
			
			if (data.hasNinjaStarInfo)
			{			
				info.starUpgradeInfo.pieceId = data.ninjaStarInfo.ninjaPiecesId;
				info.starUpgradeInfo.beginStarLevel = data.ninjaStarInfo.beginStar;
				info.starUpgradeInfo.starLevelDetailInfos = decodeStarLevelDetails(data.ninjaStarInfo.starDetail);
			}
			
			if (data.hasPropertyStrengthenInfo)
			{
				info.propertyStrengthenInfoList = decodePropertyStrengthenInfoList(data.propertyStrengthenInfo);
			}
			
			info.tryOutLeftCd=0;
			if(data.hasTryOutInfo)
			{
				info.vipFlag=data.tryOutInfo.vipFlag;
				info.tryOutLeftCd = getTimer()+data.tryOutInfo.leftMinutes*60*1000;
			}
			
			if (!info.cfg) info.cfg = NinjaInfoConfig.getNinjaCfgInfo(info.id);
			return info;
		}
		
		/**
		 * 解析忍者属性
		 */
		public function decodeDetailProperties(info:NinjaDetailInfo, data:ProtoNinjaPropertyInfo = null):NinjaDetailInfo
		{
			if (!data) return null;
			
			info.life = data.currentHp;
			
			info.lifeMax = decodeComposeInfo(info.lifeMax, data.hpUlimit);
			info.lifeMax.growth = data.growthHp;
			
			info.attack = decodeComposeInfo(info.attack, data.bodyAttack);
			info.attack.growth = data.growthBodyAttack;
			
			info.defence = decodeComposeInfo(info.defence, data.bodyDefense);
			info.defence.growth = data.growthBodyDefense;
			
			info.ninjutsu = decodeComposeInfo(info.ninjutsu, data.ninjaAttack);
			info.ninjutsu.growth = data.growthNinjaAttack;
			
			info.resistance = decodeComposeInfo(info.resistance, data.ninjaDefense);
			info.resistance.growth = data.growthNinjaDefense;
			
			info.critAttack = data.critValue;
			info.critHarm = data.critDamageValue;
			info.firstAttack = data.speed;
			info.continuousAttack = data.comboValue;
			info.control = data.controlValue;
			
			info.phyStrike = data.bodyPenetrateValue;
			info.ninpStrike = data.ninjaPenetrateValue;
			info.harmRemission = data.damageReduceValue;
			info.lifeRecover = data.hpRestore;
			
			info.fireResist = data.fireResist;
			info.windResist = data.windResist;
			info.thunderResist = data.thunderResist;
			info.earthResist = data.earthResist;
			info.waterResist = data.waterResist;
			
			return info;
		}
		
		/**
		 * 解析忍者属性值
		 */
		public function decodeComposeInfo(info:NinjaPropertyInfo, data:ProtoNinjaPropertyComposeInfo = null):NinjaPropertyInfo
		{
			if (!data) return null;
			
			if (!info) 
			{
				info = new NinjaPropertyInfo();
			}
			
			info.original = data.original;
			info.otherBuff = data.other;
			info.vipBuff = data.vip;
			return info;
		}
		
		/**
		 * 解析装备列表
		 */
		public function decodeEquips(list:Array/*[ProtoEquipInfo object] list*/):Vector.<EquipmentItemData>
		{
			var result:Vector.<EquipmentItemData> = new Vector.<EquipmentItemData>();
			
			var info:EquipmentItemData;
			for each(var data:ProtoEquipInfo in list)
			{
				info = BagProtoParser.parseEquipmentProto(data);
				result.push(info);
			}
			return result;
		}
		
		/**
		 * 解析勾玉列表
		 */
		public function decodeInlays(list:Array/*[ProtoJadeInfo object] list*/):Vector.<GemItemData>
		{
			var result:Vector.<GemItemData> = new Vector.<GemItemData>();
			
			var info:GemItemData;
			for each(var data:ProtoJadeInfo in list)
			{
				info = new GemItemData();
				info.id = data.id;
				info.num = data.num;
				info.exp = data.exp;
				info.isUltimate = data.isUltimate;

                BagItemConf.fillData(info);

				result.push(info);
			}
			
			return result;
		}
		
		public static function decodeFormationNinjas(data:ProtoFormationInfo):Vector.<TeamFormationNinja>
		{
			var teamFormationNinja:TeamFormationNinja;
			var teamFormationNinjas:Vector.<TeamFormationNinja>;
			
			if (!data) return null;
			
			teamFormationNinjas = new Vector.<TeamFormationNinja>();
			
			for each(var ninjaArrengeInfo:ProtoNinjaArrange in data.ninja)
			{
				teamFormationNinja = new TeamFormationNinja();
				teamFormationNinja.seq = ninjaArrengeInfo.ninjaSeq;
				teamFormationNinja.ninjaId = ninjaArrengeInfo.ninjaId;
				teamFormationNinja.hp = ninjaArrengeInfo.hp;
				teamFormationNinja.position = ninjaArrengeInfo.location;
				teamFormationNinjas.push(teamFormationNinja);
			}
			
			return teamFormationNinjas;
		}
		
		private function decodeAwakenItems(protoAwakenItemArr:Array):Vector.<NinjaAwakenItemInfo>
		{
			var result:Vector.<NinjaAwakenItemInfo>;
			
			if (protoAwakenItemArr)
			{
				result = new Vector.<NinjaAwakenItemInfo>();
				for each (var protoAwakenItem:ProtoAwakeItem in protoAwakenItemArr)
				{
					result.push(new NinjaAwakenItemInfo(protoAwakenItem.awakeNeedItemId, protoAwakenItem.awakeNeedItemNum, protoAwakenItem.awakeHaveItemNum));
				}
			}
			
			return result;
		}
		
		private function decodeStarLevelDetails(protoStarDetailArr:Array):Vector.<NinjaStarLevelDetailInfo>
		{
			var result:Vector.<NinjaStarLevelDetailInfo>;
			var detail:NinjaStarLevelDetailInfo;
			
			if (protoStarDetailArr)
			{
				result = new Vector.<NinjaStarLevelDetailInfo>();
				for each (var protoStarDetail:ProtoStarDetail in protoStarDetailArr)
				{
					detail = new NinjaStarLevelDetailInfo();
					detail.ninjaId = protoStarDetail.upgradeStarNinjaId;
					detail.addBuff = protoStarDetail.starAddition;
					result.push(detail);
				}
			}
			
			return result;
		}
		
		private function decodePropertyStrengthenInfoList(protoNinjaPropertyStrengthenInfoList:ProtoNinjaPropertyStrengthenInfoList):NinjaPropertyStrengthenInfoList
		{
			var result:NinjaPropertyStrengthenInfoList;
			
			result = new NinjaPropertyStrengthenInfoList();
			result.life = decodePropertyStrengthenInfo(protoNinjaPropertyStrengthenInfoList.hp);
			result.attack = decodePropertyStrengthenInfo(protoNinjaPropertyStrengthenInfoList.attack);
			result.defense = decodePropertyStrengthenInfo(protoNinjaPropertyStrengthenInfoList.defense);
			result.ninjaAttack = decodePropertyStrengthenInfo(protoNinjaPropertyStrengthenInfoList.ninjaAttack);
			result.ninjaDefense = decodePropertyStrengthenInfo(protoNinjaPropertyStrengthenInfoList.ninjaDefense);
			
			return result;
		}
		
		private function decodePropertyStrengthenInfo(protoNinjaPropertyStrengthenInfo:ProtoNinjaPropertyStrengthenInfo):NinjaPropertyStrengthenInfo
		{
			var result:NinjaPropertyStrengthenInfo;
			
			if (protoNinjaPropertyStrengthenInfo)
			{
				result = new NinjaPropertyStrengthenInfo();
				result.level = protoNinjaPropertyStrengthenInfo.level;
				result.maxLevel = protoNinjaPropertyStrengthenInfo.maxLevel;
				result.needNinjaLevel = protoNinjaPropertyStrengthenInfo.needNinjaLevel;
				result.needItemNum = protoNinjaPropertyStrengthenInfo.needItemNum;
				result.currentBuff = protoNinjaPropertyStrengthenInfo.currentBuff;
				result.nextBuff = protoNinjaPropertyStrengthenInfo.nextBuff;
				result.strengthMaxNeedItemNum = protoNinjaPropertyStrengthenInfo.strengthMaxNeedItemNum;
			}
			return result;
		}
	}

}