package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class SlowRenderNotice extends BaseNotice
	{
		public var slowRate:int;
		public var slowTime:Number;
		
		public function SlowRenderNotice(slowRate:int = 6, slowTime:Number = 1.5)
		{
			super();
			
			this.slowRate = slowRate;
			this.slowTime = slowTime;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

		}
	}
}