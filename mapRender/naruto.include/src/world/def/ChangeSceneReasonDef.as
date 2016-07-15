package world.def
{
	

	public class ChangeSceneReasonDef
	{
		/** 未定义 */
		public static const UNDEFINED:int = 0;
		/** 回城 */
		public static const GOHOME:int = 1;
		/** 使用传送门 */
		public static const PORTAL:int = 2;
		/** 加入队伍 */
		public static const JOIN_TEAM:int = 3;
		/** 加入队伍 */
		public static const JOIN_TEAM_NEED_SYNC:int = 4;
		/** 组队传送门 */
		public static const TEAM_PORTAL:int = 5;
		/** 进入副本 */
		public static const JOIN_DUNGEON:int = 6;
		/** 新剧情结束 */
		public static const NEW_PLOT_END:int = 7;
		/** 退出副本 */
		public static const EXIT_DUNGEON:int = 8;
		/** 完成副本 */
		public static const FINISH_DUNGEON:int = 9;
		/** 进入基地 */
		public static const JOIN_BASE:int = 10;
		/** 退出基地 */
		public static const EXIT_BASE:int = 11;
		/** 进入世界BOSS地图*/
		public static const JOIN_WORLD_BOSS_SCENE:int = 12;
		/** 退出世界BOSS地图 */
		public static const EXIT_WORLD_BOSS_SCENE:int = 13;
		
		/**
		 *PVP 地图 
		 */		
		public static const PVP_BATTLEFIELD_SCENE:int = 14;
		
		/** 服务器主动通知切换场景 */		
		public static const PLAYER_TODO_NOTIFY:int = 15;
	}
}