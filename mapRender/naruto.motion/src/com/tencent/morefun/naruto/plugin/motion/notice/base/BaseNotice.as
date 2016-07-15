package com.tencent.morefun.naruto.plugin.motion.notice.base
{
	import com.tencent.morefun.naruto.plugin.motion.MotionNotifyCenter;

	public class BaseNotice
	{
		public function send():void
		{
			MotionNotifyCenter.send(this);
		}
	
															
		public function autoSetNull():void
		{

		}
	}
}