package com.tencent.morefun.naruto.plugin.motion
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public interface IMotionNotifyReceiver
	{
		function receive(notice:BaseNotice):void;
	}
}