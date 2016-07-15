package world.data {
    
    /**
     * 场景类型的定义
     * modify by georgehu
     */
    public class SceneType {
		/**
		 *世界Boss
		 */		
        static public const WORLD_BOSS:int = 6; //
		/**
		 *排位赛  特殊 场景ID 
		 */		
        static public const RANK_BATTLE:int = -1; //
        /**
         * 新手副本0 使用者需要根据DUNGEON_SCENE 和
         */
		
        static public const DUNGEON_SCENE_FRESHMAN:int = 0; //
        /**
         * 世界地图1
         */
        static public const WORLD_SCENE:int = 1; //
        /**
         * 副本地图2
         */
        static public const DUNGEON_SCENE:int = 2; //
        /**
         * 室内地图3
         */
        static public const INDOOR_SCENE:int = 3; //
        /**
         * 活动地图4
         */
        static public const ACTIVITY_SCENE:int = 4; //
        /**
         * 基地地图5
         */
        static public const NINJA_BASE_SCENE:int = 5; //
		/**
		 * 战场
		 */        
		static public const PVP_BATTLE_FIELD:int = 7;
		
		/**
		 * 喵问答场景
		 */		
		static public const KNOWLEDGE_SCENE:int = 8;
		
        public function SceneType() {
        }
    }
}
