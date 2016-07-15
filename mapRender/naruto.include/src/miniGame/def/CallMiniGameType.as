package miniGame.def {
	/**
	 *小游戏操作类型 
	 * @author Georgehu
	 * 
	 */    
    public class CallMiniGameType {
		/**
		 * 启动游戏 
		 */		
		public static var initGame:int = 1;
		/**
		 * 开始游戏 
		 */	
		public static var startGame:int = 2 ;
		/**
		 * 结束游戏 
		 */	
		public static var finishGame:int=3;
		/**
		 * 异常 如在加载失败 主动退出游戏
		 * 
		 */	
		public static var cancelGame:int=4;
		/**
		 * 发数据给小游戏 
		 */		
		public static var postDataToMiniGame:int = 5;
		/**
		 *接收小游戏 数据
		 */		
		public static var receiveDataFromMiniGame:int = 6;
		
        public function CallMiniGameType() {
        }
    }
}
