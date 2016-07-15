package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class ActionEndNotice extends BaseNotice
	{
		public var curActionIndex:int;
		public var endActionIndex:int;
		
		public var roundId:int;
		
		public function ActionEndNotice(curActionIndex:int, endActionIndex:int, roundId:int)
		{
			super();
			
			this.roundId = roundId;
			this.curActionIndex = curActionIndex;
			this.endActionIndex = endActionIndex;
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