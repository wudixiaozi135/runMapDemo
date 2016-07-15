package com.tencent.morefun.naruto.plugin.motion
{

	public class MotionUrlFix
	{
		public static var BASE_URL:String = "";
		
		public function MotionUrlFix()
		{
		}
		
		public static function fix(url:String):String
		{
			return BASE_URL + url;
		}
	
															
		public function autoSetNull():void
		{

			BASE_URL = null;
		}
	}
}