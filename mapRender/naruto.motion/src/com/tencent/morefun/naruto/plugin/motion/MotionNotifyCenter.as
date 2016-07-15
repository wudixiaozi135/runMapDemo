package com.tencent.morefun.naruto.plugin.motion
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class MotionNotifyCenter
	{
		private static var receiverList:Array = [];
		
		public function MotionNotifyCenter()
		{
			
		}
		
		public static function send(notice:BaseNotice):void
		{
			for each(var receiver:IMotionNotifyReceiver in receiverList)
			{
				receiver.receive(notice);
			}
		}
		
		public static function add(receive:IMotionNotifyReceiver):void
		{
			receiverList.push(receive);
		}
		
		public static function remove(receive:IMotionNotifyReceiver):void
		{
			if(receiverList.indexOf(receive) != -1)
			{
				receiverList.splice(receiverList.indexOf(receive), 1);
			}
		}
		
		public static function destroy():void
		{
			receiverList.splice(0, receiverList.length);
		}
	
															
		public function autoSetNull():void
		{

			receiverList = null;
		}
	}
}