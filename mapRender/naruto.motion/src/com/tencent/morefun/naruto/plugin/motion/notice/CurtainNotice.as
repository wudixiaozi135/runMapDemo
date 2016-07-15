package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class CurtainNotice extends BaseNotice
	{
		public var start:Boolean;
		
		public function CurtainNotice(start:Boolean)
		{
			super();
			
			this.start = start;
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