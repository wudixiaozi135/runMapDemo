package cfgData {
    
    /**
    * 作者：DataClassMaker
    * 时间：2013.11.12
    * 版本：1.0.2
    **/
    import flash.net.registerClassAlias;
    import flash.utils.Dictionary;
    import flash.utils.getQualifiedClassName;
    
    import cfgData.dataStruct.*;
    
    public class ConfigClassAlias {
        
        //protected static var m_classRegistered :Dictionary = new Dictionary();
        
        //protected static var m_classKeys :Dictionary = new Dictionary();
        
		private var m_regClass:Array = [ActivityHubCFG,ActivityHubLiteCFG,ArenaBadgeCFG,BattleNpcCFG,CardItemCFG,CardItemRecycleCFG,CommonItemCFG,CrewNinjaUpgradeCFG,DungeonGroupInfoCFG,DungeonInfoCFG,EquipmentItemCFG,ExamConfCFG,FacebookActivityCFG,FashionConfigCFG,FashionItemCFG,GemItemCFG,HuntLifeChakraUpgradeExpConfigCFG,HuntLifeConfigCFG,ItemAchievedWayCFG,KnowledgeTestArgumentsCFG,KnowledgeTestNpcCFG,KnowledgeTestPrizeCFG,MoodInfoCFG,NewestNinjaViewCFG,NinjaBattleInfoCFG,NinjaInfoCFG,NinjaLevelInfoCFG,NinjaLevelUpgradeDialogCFG,NinjaPropsPropertyColorConfigCFG,NinjaSkillCFG,PopupConfCFG,QrlxActivityCFG,QuizRewardLevelCFG,RewardItemTransferCFG,RewardTransferCFG,RunesCFG,SceneCFG,SkillCFG,SpecialbattleCFG,SummonBeastFragmentCFG,SummonMonsterCFG,TabardAssetsCFG,TabardLevelUpCFG,TabardStepUpCFG,TalentCFG,TaskTransferCFG,ToStrongerCFG,TranslatedKeyCFG,TreasureMapItemCFG,UpgradeEquipmentCostCFG,UpgradeEquipmentValueCFG];//自动生成的
        
        public function ConfigClassAlias() {
			for each(var cls:Class in m_regClass){
				registerClass(cls);
			}
            
            registerClass(Dictionary);
            registerClass(Array);
            registerClass(Vector);
        
            //注册各个主类的唯一性键值
        
            //registerKey(ItEMACHIEVEDWAYCONFIG,"ID");
        
        }
        
        public static function registerClass(c:Class):void {
            if(c != null) {
                var className:String = getQualifiedClassName(c);
                registerClassAlias(className.split("::").pop(), c); //
                    //m_classRegistered[className.split("::").pop()] = c;
            }
        }
    
        //		public static function registerKey(name:String,key :String):void
        //		{
        // 			m_classKeys[name] = key;
        //		}
    
        //		public static function getClass(name:String):Class
        //		{
        // 			return m_classRegistered[name] as Class;
        //		}
    
        //		public static function getKey(name:String):String
        //		{
        // 			return m_classKeys[name];
        //		}
    
    }
}
