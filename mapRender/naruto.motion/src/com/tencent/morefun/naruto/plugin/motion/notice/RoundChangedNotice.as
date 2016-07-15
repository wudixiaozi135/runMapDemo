package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class RoundChangedNotice extends BaseNotice
	{
		public var roundIndex:int;
		
		public function RoundChangedNotice(roundIndex:int)
		{
			super();
			
			this.roundIndex = roundIndex;
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