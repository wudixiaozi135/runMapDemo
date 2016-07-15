package com.tencent.morefun.naruto.plugin.newplot.datas
{
	public class BasePlotUnitData
	{
		public static const PLAY_ORDER_BEFOR:int = 1;
		public static const PLAY_ORDER_AFTER:int = 2;
//		public static const PLAY_ORDER_ALL_AFTER:int = 3;
		/** 播放顺序 */
		public var playOrder:int = PLAY_ORDER_AFTER;
		/** 播放延迟 */
		public var playDelay:int;
		public var id:int;
		
		protected var cfg:XML;
		
		public function BasePlotUnitData(cfg:XML)
		{
			parse(cfg);
		}
		
		public function parse(cfg:XML):void
		{
			this.cfg = cfg;
			this.id = cfg.@id;
			playOrder = cfg.@playOrder;//播放次序1上一个开始，2上一个结束
			playDelay = cfg.@playDelay;
		}
	}
}