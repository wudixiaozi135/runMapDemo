package pvpBattlefield.event {
    import flash.events.Event;
    
    public class PvpBattleFieldSyncTimeEvent extends Event {
		/**
		 *0   更新开始报名   1更新战场结束
		 */		
		public var changeType:int = 0 ;//0更新开始报名  1更新战场结束
		/**
		 *秒级 
		 */
		public var sec:int = 0;
		
		/**
		 * 
		 * @param type 0   更新开始报名   1更新战场结束
		 * @param seconds秒级
		 * 
		 */		
        public function PvpBattleFieldSyncTimeEvent(type:int,seconds:int) {
			changeType = type;
			sec = seconds;
            super("PvpBattleFieldSyncTimeEvent");
        }
    }
}
