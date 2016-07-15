package world
{
	
	import flash.utils.Dictionary;
	
	import cfgData.dataStruct.SceneCFG;
	
	import world.data.SceneType;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class SceneConfig
	{
		static private const GREENHORN_DUNGEON_ID:int = 2017;    //新手副本ID,写死
		static private var dict:Dictionary;
		
		public function SceneConfig()
		{
		}
		
		static public function init(data:Dictionary):void
		{	
			dict = data;
		}

        public static function getTeamMapsByMinLevel(minLevel:int):Array
        {
            var arr:Array = [];

            for each(var si:SceneCFG in dict)
            {
                if (si.id>=10 && si.minLevel <= minLevel && (si.type == SceneType.WORLD_SCENE || si.type == SceneType.INDOOR_SCENE))
					arr.push(si);
            }

            return arr;
        }
		
		static public function getSceneInfo(id:int):SceneCFG
		{
			return dict[id] as SceneCFG;
		}
		
		/**
		 * 判断是否需要请求移动协议
		 */		
		public static function needRequestMoveToProtocol(id:int):Boolean
		{
			var si:SceneCFG = getSceneInfo(id);
			return si.type != SceneType.NINJA_BASE_SCENE;
		}
		
		public static function getSceneInfoByMapId(mapId:int):SceneCFG
		{
			for each(var si:SceneCFG in dict)
			{
				if(si.mapId == mapId)
				{
					return si;
				}
			}
			return null;
		}
		
		public static function isGreenHornDungeon(sceneId:int):Boolean
		{
			return (int(sceneId/1000) == GREENHORN_DUNGEON_ID);
		}
		
		public static function isDungeon(sceneId:int):Boolean
		{
			var si:SceneCFG = getSceneInfo(sceneId);
			if (!si)
			{
				throw new Error(I18n.lang("as_include_1451031572_3793")+sceneId);
				return false;
			}
			return isDungeonByType(si.type);
		}
		
		public static function isDungeonByType(type:int):Boolean
		{
			return type == SceneType.DUNGEON_SCENE || SceneType.DUNGEON_SCENE_FRESHMAN;
		}
		
		/**
		 * 是否是仙界战场场景
		 */
		public static function isPvpBattleField(sceneId:int):Boolean
		{
			var si:SceneCFG = getSceneInfo(sceneId);
			if(si)
			{
				return si.type == SceneType.PVP_BATTLE_FIELD;
			}
			return false;
		}
		
		
		/**
		 * 是否是世界Boss场景
		 */
		public static function isWorldBoss(sceneId:int):Boolean
		{
			var si:SceneCFG = getSceneInfo(sceneId);
			return isWorldBossByType(si.type);
		}
		
		/**
		 * 是否是世界Boss场景
		 */
		public static function isPVP(sceneId:int):Boolean
		{
			var si:SceneCFG = getSceneInfo(sceneId);
			return isPVPByType(si.type);
		}
		
		/**
		 * 是否是世界Boss场景的场景类型
		 */
		public static function isWorldBossByType(type:int):Boolean
		{
			return type == SceneType.WORLD_BOSS;
		}
		
		/**
		 * 是否是世界Boss场景的场景类型
		 */
		public static function isPVPByType(type:int):Boolean
		{
			return type == SceneType.PVP_BATTLE_FIELD;
		}
		
		public static function isGuild(sceneId:int):Boolean
		{
			var cfg:SceneCFG = getSceneInfo(sceneId);
			return cfg.type == SceneType.NINJA_BASE_SCENE;
		}
		
		
		/**
		 * 是否是喵问答场景
		 */
		public static function isKnowledge(sceneId:int):Boolean
		{
			var si:SceneCFG = getSceneInfo(sceneId);
			return isKnowledgeByType(si.type);
		}
		
		/**
		 * 是否是喵问答场景
		 */
		public static function isKnowledgeByType(type:int):Boolean
		{
			return type == SceneType.KNOWLEDGE_SCENE;
		}
	}
}