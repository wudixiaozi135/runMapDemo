package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class UIHitNotice extends BaseNotice
	{
		public var pos:int;
		public var hitNum:int;
		public var addNum:int;
		
		public function UIHitNotice(pos:int, hitNum:int, addNum:int)
		{
			super();
			
			this.pos = pos;
			this.hitNum = hitNum;
			this.addNum = addNum;
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