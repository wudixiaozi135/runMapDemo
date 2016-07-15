package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view
{
	import com.tencent.morefun.naruto.plugin.ui.core.CoreCompoundValueBar;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.text.TextField;

	public class ShieldBar extends Sprite
	{
		public static const SIZE_SMALL:int = 0;
		public static const SIZE_LARGE:int = 1;
		
		private var curValue:int;
		private var maxValue:int;
		
		private var size:int;
		
		private var res:MovieClip;
		private var text:TextField;
		private var compoundValueBar:CoreCompoundValueBar;
		
		public function ShieldBar(res:MovieClip)
		{
			super();
			
			this.res = res;
			text = res["txt"];
		}
		
		override public function set alpha(value:Number):void
		{
			res.alpha = value;
		}
		
		override public function get alpha():Number
		{
			return res.alpha;
		}
		
		override public function get height():Number
		{
			return res.height;
		}
		
		public function showText():void
		{
			text.visible = true;
		}
		
		public function hideText():void
		{
			text.visible = false;
		}
		
		public function setSize(value:int):void
		{
			size = value;
			updateRes();
		}
		
		public function update(curShieldValue:int, maxShieldValue:int):void
		{
			curValue = curShieldValue;
			maxValue = maxShieldValue;
			
			text.text = curValue+"/"+maxValue;
			
			compoundValueBar.update(curValue, maxValue);
		}
		
		public function destroy():void
		{
			if(compoundValueBar)
			{
				compoundValueBar.destory();
			}
		}
		
		private function updateRes():void
		{
			destroy();
			
			if(size == SIZE_LARGE)
			{
				res.gotoAndStop("large");
				compoundValueBar = new CoreCompoundValueBar(res["shieldValueBar"]);
			}
			else
			{
				res.gotoAndStop("small");
				compoundValueBar = new CoreCompoundValueBar(res["shieldValueBar"]);
			}
			
			update(curValue, maxValue);
		}
	
															
		public function autoSetNull():void
		{

			res = null;
			text = null;
			compoundValueBar = null;
		}
	}
}