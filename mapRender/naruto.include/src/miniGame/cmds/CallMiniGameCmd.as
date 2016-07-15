package miniGame.cmds {
    import com.tencent.morefun.framework.base.Command;
    
    import def.PluginDef;
    
    /**
     *与小游戏 之间 数据通讯
     * @author Georgehu
     *
     */
    public class CallMiniGameCmd extends Command {
		/**
		 *操作类型 
		 */		
		public var type:int;
		/**
		 *小游戏ID 
		 */		
		public var id:int;
		/**
		 *传递的数据 
		 */		
		public var data:Object;
        public function CallMiniGameCmd() {
            super(2, true);
        }
        
        override public function getPluginName():String {
            return PluginDef.MINI_GAME;
        }
    }
}
