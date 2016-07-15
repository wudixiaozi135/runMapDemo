package user.data
{
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	
	import base.ApplicationData;
	
	import cfgData.CFGDataEnum;
	import cfgData.CFGDataLibs;
	import cfgData.dataStruct.NinjaInfoCFG;
	import cfgData.dataStruct.NinjaLevelInfoCFG;
	
	import majorRole.def.MajorNinjaDef;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class NinjaInfoConfig
	{		
		private static var ninjaInfoMap:Dictionary = new Dictionary(); 
		private static var ninjaLevelInfoMap:Dictionary = new Dictionary();
		public static var ninjaConfigXml:XML;
		public static var levelConfigXml:XML;
		private static var inited:Boolean;
		
		public static var ninjaBin:ByteArray;
		public static var levelBin:ByteArray;
		
		public function NinjaInfoConfig()
		{
		}
		
		private static function init():void
		{
			var totalNinjaLevelMap:Dictionary;
			var ninjaLevelInfo:NinjaLevelInfo;
			
			if(inited == true)
			{
				return ;
			}	
			inited = true;
			ninjaInfoMap = CFGDataLibs.parseData(ninjaBin, CFGDataEnum.ENUM_NinjaInfoCFG);
			for each(var ninjaCfgInfo:NinjaInfoCFG in ninjaInfoMap)
			{
				ninjaCfgInfo.attributeDescription = getAttributeDescription(ninjaCfgInfo.attributeDescription, ninjaCfgInfo.name);
			}
			
			totalNinjaLevelMap = new Dictionary();
			ninjaLevelInfoMap[1] = new Dictionary();
			ninjaLevelInfoMap[2] = new Dictionary();
			ninjaLevelInfoMap[3] = new Dictionary();
			ninjaLevelInfoMap[4] = new Dictionary();
			
			totalNinjaLevelMap = CFGDataLibs.parseData(levelBin, CFGDataEnum.ENUM_NinjaLevelInfoCFG);
			for each (var ninjaLevel:NinjaLevelInfoCFG in totalNinjaLevelMap)
			{
				ninjaLevelInfo = new NinjaLevelInfo(1, ninjaLevel.level, ninjaLevel.upgradeExp1, ninjaLevel.totalUpgradeExp1, ninjaLevel.maxLeaderShip, ninjaLevel.maxNinjaOnFormation);
				ninjaLevelInfoMap[1][ninjaLevelInfo.level] = ninjaLevelInfo;
				
				ninjaLevelInfo = new NinjaLevelInfo(2, ninjaLevel.level, ninjaLevel.upgradeExp2, ninjaLevel.totalUpgradeExp2, ninjaLevel.maxLeaderShip, ninjaLevel.maxNinjaOnFormation);
				ninjaLevelInfoMap[2][ninjaLevelInfo.level] = ninjaLevelInfo;
				
				ninjaLevelInfo = new NinjaLevelInfo(3, ninjaLevel.level, ninjaLevel.upgradeExp3, ninjaLevel.totalUpgradeExp3, ninjaLevel.maxLeaderShip, ninjaLevel.maxNinjaOnFormation);
				ninjaLevelInfoMap[3][ninjaLevelInfo.level] = ninjaLevelInfo;
				
				ninjaLevelInfo = new NinjaLevelInfo(4, ninjaLevel.level, ninjaLevel.upgradeExp4, ninjaLevel.totalUpgradeExp4, ninjaLevel.maxLeaderShip, ninjaLevel.maxNinjaOnFormation);
				ninjaLevelInfoMap[4][ninjaLevelInfo.level] = ninjaLevelInfo;
			}
		}
		
		public static function getNinjaCfgInfo(ninjaId:uint):NinjaInfoCFG
		{
			init();
			if(MajorNinjaDef.isMajorNinjaId(ninjaId))
			{
				ninjaId = MajorNinjaDef.toBaseMajorId(ninjaId);
			}
			return ninjaInfoMap[ninjaId];
		}
		
		public static function getNinjaLevelInfo(levelType:uint, level:uint):NinjaLevelInfo
		{
			init();
			
			return ninjaLevelInfoMap[levelType][level];
		}
		
		public static function getLevelInfoByTotalExp(levelType:uint, totalExp:uint):NinjaLevelInfo
		{
			init();
			
			var level:int = 1;
			var info:NinjaLevelInfo = getNinjaLevelInfo(levelType,level);
			while(true)
			{
				if(totalExp >= info.totalUpgradeExp)
				{
					level ++;
					info = getNinjaLevelInfo(levelType,level);
				}else
				{
					break;
				}
			}
			return info;
		}
		
		public static function getSelfNinjaLevelInfo():NinjaLevelInfo
		{
			var ninjaCfg:NinjaInfoCFG;	
			ninjaCfg = getNinjaCfgInfo(ApplicationData.singleton.selfInfo.ninja);
			return getNinjaLevelInfo(ninjaCfg.levelType, ApplicationData.singleton.selfInfo.level);
		}
		
		public static function getNinjaLevelInfoByExp(levelType:uint, exp:int):NinjaLevelInfo
		{
			init();
			
			var level:int = 1;
			var info:NinjaLevelInfo = getNinjaLevelInfo(levelType,level);
			while(true)
			{
				if(exp >= info.upgradeExp)
				{
					level ++;
					info = getNinjaLevelInfo(levelType,level);
				}else
				{
					break;
				}
			}
			return info;
		}
		
		public static function getNinjaLevelInfoByAddExp(levelType:uint,level:uint, exp:int, newExpCallback:Function=null):NinjaLevelInfo
		{
			init();
			
			var info:NinjaLevelInfo = getNinjaLevelInfo(levelType,level);
			if(exp > info.upgradeExp)
			{
				exp -= info.upgradeExp;
				return getNinjaLevelInfoByAddExp(levelType,level+1,exp,newExpCallback);
			}else
			{
				newExpCallback && newExpCallback(exp);
				return info;
			}
		}
		
		public static function getAttributeDescription(attributeDescriptionXml:String, ninjaName:String):String
		{
			var attributeDescriptionList:Array;
			
			if(attributeDescriptionXml == "")
			{
				return "";
			}
			
			attributeDescriptionList = String(attributeDescriptionXml).split(",");
			
			if(attributeDescriptionList.length == 0)
			{
				return "";
			}
			
			if(attributeDescriptionList.length == 1)
			{
				return "<font color = '#cccccc'>" + getAttributeText(attributeDescriptionList[0]) + I18n.lang("as_include_1451031572_3658_0") + ninjaName + I18n.lang("as_include_1451031572_3658_1");
			}
			
			if(attributeDescriptionList.length == 2)
			{
				return "<font color = '#cccccc'>" + getAttributeText(attributeDescriptionList[0]) + I18n.lang("as_include_1451031572_3659_0") + getAttributeText(attributeDescriptionList[1]) + I18n.lang("as_include_1451031572_3659_1") + ninjaName + I18n.lang("as_include_1451031572_3659_2");
			}
			
			return "";
		}
		
		private static function getAttributeText(type:int):String
		{
			switch(type)
			{
				case 1:
					return I18n.lang("as_include_1451031572_3660");
					break;
				case 2:
					return I18n.lang("as_include_1451031572_3661");
					break;
				case 3:
					return I18n.lang("as_include_1451031572_3662");
					break;
				case 4:
					return I18n.lang("as_include_1451031572_3663");
					break;
				case 5:
					return I18n.lang("as_include_1451031572_3664");
					break;
			}
			
			return "";
		}
	}
	
}
