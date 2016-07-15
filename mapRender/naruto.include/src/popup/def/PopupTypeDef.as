package popup.def
{
    public class PopupTypeDef
    {
        public static const UNKNOWN:int                 =   0;

        ////////////////////////////
        //// 系统状态，不要修改 ////
        ////////////////////////////
        public static const BATTLE:int                  =   1;      // 战斗状态
        public static const DUNGEON:int                 =   2;      // 副本状态
        public static const OLD_PLOT:int                =   3;      // 旧剧情状态
        public static const NEW_PLOT:int                =   4;      // 新剧情状态

        public static const CREW:int                    =   101;
        public static const NINJA:int                   =   102;
        public static const EQUIPMENT:int               =   103;
        public static const SHOP:int                    =   104;
        public static const EXAM:int                    =   105;
        public static const BLACK_MARKET:int            =   106;
        public static const PLAYER_LEVEL_UP:int         =   107;
        public static const NINJA_LEVEL_UP:int          =   108;
        public static const BATTLE_POWER_CHANGE:int     =   109;
        public static const OPEN_NEW_FUNCTION:int       =   110;
        public static const DUNGEON_LIST:int            =   111;
        public static const TALENT:int                  =   112;
        public static const OTHERS_CREW:int             =   113;
        public static const ARENA:int                   =   114;
        public static const NINJA_DETAIL:int            =   115;
        public static const LEVEL_UP_DELAY:int          =   116;
        public static const RANK_BATTLE:int       	   =   117;

        public static const TASK_LIST:int               =   201;
        public static const TASK_RECEIVE:int            =   202;
        public static const TASK_COMMIT:int             =   203;
        public static const NPC_DIALOG:int              =   204;

        public static const TEAM_SEARCH:int             =   211;
        public static const TEAM_CAPTAIN:int            =   212;
        public static const TEAM_MEMBER:int             =   213;
		//公会转盘  加入创建公会  公会管理 公会技能  公会申请列表  公会升级
		public static const GUILD_LOTTERY:int                   =   214;
		public static const GUILD_CREATE:int                   =   215;
		public static const GUILD_MANAGE:int                   =   216;
		public static const GUILD_SKILL:int                   =   217;
		public static const GUILD_APPLY:int                   =   218;
		public static const GUILD_UPGRADE:int                   =   219;
		
		public static const DAILY_SPECIAL_DUNGEON:int   = 300; // 日常特殊副本
		
        public function PopupTypeDef()
        {
        }
    }
}