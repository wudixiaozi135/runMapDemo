package com.tencent.morefun.naruto.plugin.motion.after
{
	import flash.display.MovieClip;

	public class SpeedLineAfterEffect extends BaseAfterEffect
	{
		public function SpeedLineAfterEffect()
		{
			super();
		}
		
		public function init(arg:Object):void
		{
			var args:Array;
			var res:MovieClip;
			var width:Number;
			var height:Number;
			
			
			res = arg[0];
			width = arg[1];
			height = arg[2];
			
			
			res.x = 665;
			res.y = 410;
			addChild(res);
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