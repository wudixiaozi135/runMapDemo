package com.tencent.morefun.naruto.plugin.motion
{

	public class MotionLogger
	{
		public function MotionLogger()
		{
		}
		
		public static var output:Function = _output;
		
		private static function _output(...arg):void
		{
			
		}
	
															
		public function autoSetNull():void
		{

			output = null;
		}
	}
}