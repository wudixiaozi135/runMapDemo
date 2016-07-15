package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class StartVideoNotice extends BaseNotice
	{
		public var url:String;
		
		public function StartVideoNotice(url:String)
		{
			super();
			
			this.url = url;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			url = null;
		}
	}
}