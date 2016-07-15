package arena.model
{
    import com.tencent.morefun.naruto.model.BaseModel;
    import com.tencent.morefun.naruto.util.MultiFlags;
    
    import flash.utils.Dictionary;
    
    import base.PluginFlagsCenter;
    
    import def.PluginDef;
    
    import ninja.conf.NinjaDefConfig;
    import ninja.model.data.FormationInfo;
    import ninja.model.data.NinjaInfo;
    
    import serverProto.arena.ProtoArenaResponse;
    import serverProto.arena.ProtoArenaReward;
    
    import skill.config.NinjaSkillConfig;
    import skill.config.SkillConfig;
    
    import team.model.TeamModel;
    
    /**
     * 竞技场 小队数据
     * @author:Georgehu
     * @since:2012-12-20
     */
    public class ArenaModel extends BaseModel {
        /**
         * 竞技场称号 数组 KEY: ID  VALUE :NAME
         */
        public var arenaBadge:Dictionary;
		public var teamModel:TeamModel;
        /**
         * 背包中忍者
         */
        //public var pkgNinjas:Vector.<NinjaInfo>;
        
        /**
         * 仓库中忍者
         */
        public var storageNinjas:Vector.<NinjaInfo>;
        
        /**
         * 阵法中的忍者
         */
        public var formation:FormationInfo;
        /**
         * 阵法中 NinjaInfo 类型的忍者信息
         */
        public var formation_ninjas:Vector.<NinjaInfo>;
        /**
         * 最大上阵忍者数量
         */
        //public var maxFormationNum:uint;
        
        /**
         * 最大携带忍者数量
         */
        //public var maxCarryNum:uint;
        
        /**
         * 下一个忍者背包解锁等级
         */
        //public var nextUnlockLevel:uint;
        
        /**
         * 忍者技能配置
         */
        public var ninjaSkillConfig:NinjaSkillConfig;
        
        /**
         * 技能配置
         */
        public var skillConfig:SkillConfig;
        
        /**
         * 可升阶忍者数量
         */
        //public var upgradeNinjaNum:uint;
        
        /**
         * 可觉醒忍者数量
         */
        //public var wakeNinjaNum:uint;
        
        /**
         * 可招募忍者数量
         */
        //public var recruitNinjaNum:uint;
        
        /**
         * 忍者数据模型
         */
        //public var talentModel:TalentModel;
        
        /**
         * 竞技场的等级
         */
        public var m_arenaLevel:uint = 0;
        public var m_winCount:uint = 0;
		public var baseResponse:ProtoArenaResponse;
        /**
         * 当前是 哪类竞技场  下 中 忍赛场
         */
        public var m_tabIdx:uint = 0;
		/**
		 *新纪录的奖励 
		 */		
		public var newTopRewards:ProtoArenaReward
		/**
		 *任务匹配的忍者 
		 */        
		public var fixNinjaList:Array;
		
		/**
		 * 首胜胜利忍者列表
		 */		
		public var FirstWinNinjaList:Array;
        /**
         * 构造函数
         *
         */
        public function ArenaModel() {
            super(PluginDef.ARENA);
        }
        
        /**
         * 获取职业名字
         * @param	id	职业id
         */
        public function getCareerName(id:uint):String {
            return NinjaDefConfig.getDefName(NinjaDefConfig.CAREER, id);
        }
        
        /**
         * 获取盾系名称
         * @param	id	盾系id
         */
        public function getCategoryName(id:uint):String {
            return NinjaDefConfig.getDefName(NinjaDefConfig.CATEGORY, id);
        }
        
        /**
         * 获取忍者属性名字
         * @param	id
         */
        public function getPropertyName(id:uint):String {
            return NinjaDefConfig.getDefName(NinjaDefConfig.PROPERTY, id);
        }
        
        /**
         * 根据忍者id获取忍者
         * @param	id	忍者id，不是唯一标识
         */
        public function getNinja(id:uint):NinjaInfo {
            var list:Vector.<NinjaInfo> = new Vector.<NinjaInfo>();
            
            if(storageNinjas)
                list = list.concat(storageNinjas);
            
            //if (pkgNinjas) list = list.concat(pkgNinjas);
            if(formation_ninjas)
                list = list.concat(formation_ninjas);
            
            for each(var info:NinjaInfo in list) {
                if(info.id == id)
                    return info;
            }
            
            return null;
        }
        
        /**
         * 添加忍者
         * @param	data	忍者数据
         */
        public function ninjaUpdate(data:NinjaInfo):NinjaInfo {
            if(!data)
                return null;
            
            //			_ninjas[data.id] = data;
            //			_dict[data.sequence] = data;
            
            return data;
        }
        
        public function hasNinja(id:uint):Boolean {
            var ninja:NinjaInfo = getNinja(id);
            
            return ninja != null && ninja.id != 0;
        }
        
        /**
         * 获取标记位管理器
         */
        public function get flags():MultiFlags {
            return PluginFlagsCenter.getPluginFlags(PluginDef.NINJA);
        }
    
    }
}
