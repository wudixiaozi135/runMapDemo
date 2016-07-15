package hud.def {
    
    /**
     * 1为游戏里，2为副本里，3为基地里 4 新手副本
     * 定义当前 UI 所在的场景  过滤 右侧上下 菜单
     */
    public class MainUIStateDef {
        /**
         * 1为游戏里
         */
        public static const remove_WORLD_UI:int = 1;
        /**
         * 2为副本里
         */
        public static const remove_DUNGEON_UI:int = 2;
        /**
         * 3为基地里
         */
        public static const remove_NINJA_BASE:int = 3;
        /**
         *新手副本
         */
        public static const remove_FRESHMAN_DUNGEON_UI:int = 4;
        
        public function MainUIStateDef() {
        }
    }
}
