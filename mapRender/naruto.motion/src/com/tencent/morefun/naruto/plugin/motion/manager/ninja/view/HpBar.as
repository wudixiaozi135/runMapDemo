package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view
{
	import com.tencent.morefun.naruto.plugin.ui.core.CoreCompoundValueBar;
	import com.tencent.morefun.naruto.plugin.ui.core.CoreMultiCompoundValueBar;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.text.TextField;

	public class HpBar extends Sprite
	{
		public static const TYPE_SINGLE:int = 0;
		public static const TYPE_MULTI:int = 1;
		public static const TYPE_WHITE:int = 2;
		public static const TYPE_MULTI_BOSS:int = 3;
		
		public static const SIZE_SMALL:int = 0;
		public static const SIZE_LARGE:int = 1;
		
		private static const LAYER_NUMBER:int = 5;
		private static const LAYER_VALUE:int = 1000;
		
		private var res:MovieClip;
		
		private var text:TextField;
		private var singleCompoundValueBar:CoreCompoundValueBar;
		private var whiteCompoundValueBar:CoreCompoundValueBar;
		private var multiCompoundValueBar:CoreMultiCompoundValueBar;
		
		private var type:int;
		private var size:int;
		
		private var curValue:int;
		private var maxValue:int;
		
		private var textVisible:Boolean;
		private var _lastMaxHp:int;
		private var _layerValue:int;
		
		public function HpBar(res:MovieClip)
		{
			this.res = res;
		}
		
		public function setSize(value:int):void
		{
			size = value;
			updateRes();
		}
		
		public function setType(value:int):void
		{
			type = value;
			updateRes();
		}
		
		override public function set alpha(value:Number):void
		{
			res.alpha = value;
		}
		
		override public function get alpha():Number
		{
			return res.alpha;
		}
		
		public function up(value:Number):void
		{
			res.y -= value;
		}
		
		public function down(value:Number):void
		{
			res.y += value;
		}
		
		public function showText():void
		{
			textVisible = true;
			updateTextVisible();
		}
		
		public function hideText():void
		{
			textVisible = false;
			updateTextVisible();
		}
		
	
		
		public function update(curHpValue:int, maxHpValue:int):void
		{
			curValue = curHpValue;
			maxValue = maxHpValue;
			
			text.text = curValue+"/"+maxValue;
			
			
			switch(type)
			{
				case TYPE_SINGLE:
					singleCompoundValueBar.update(curValue, maxValue);
					break;
				case TYPE_MULTI:
					multiCompoundValueBar.update(curValue, maxValue);
					break;
				case TYPE_WHITE:
					whiteCompoundValueBar.update(curValue, maxValue);
					break;
				case TYPE_MULTI_BOSS:
					if (_lastMaxHp != maxValue && maxValue > 100) {
						_lastMaxHp = maxValue;
						_layerValue = Math.ceil(_lastMaxHp / 20);
						multiCompoundValueBar.layerValue = _layerValue;
						updateImmediately(curValue, maxValue);
					}else{
						multiCompoundValueBar.update(curValue, maxValue);
					}
					break;
			}
		}
		
		public function updateImmediately(curHpValue:int, maxHpValue:int):void
		{
			curValue = curHpValue;
			maxValue = maxHpValue;
			
			text.text = curValue+"/"+maxValue;
			switch(type)
			{
				case TYPE_SINGLE:
					singleCompoundValueBar.updateImmediately(curValue, maxValue);
					break;
				case TYPE_MULTI:
				case TYPE_MULTI_BOSS:
					multiCompoundValueBar.updateImmediately(curValue, maxValue);
					break;
				case TYPE_WHITE:
					whiteCompoundValueBar.updateImmediately(curValue, maxValue);
					break;
			}
		}
		
		public function destroy():void
		{
			if(singleCompoundValueBar)
			{
				singleCompoundValueBar.destory();
			}
			
			if(multiCompoundValueBar)
			{
				multiCompoundValueBar.destory();
			}
			
			if(whiteCompoundValueBar)
			{
				whiteCompoundValueBar.destory();
			}
		}
		
		private function updateTextVisible():void
		{
			if(text != null)
			{
				text.visible = textVisible;
			}
		}
		
		private function updateRes():void
		{
			destroy();
			
			if(size == SIZE_SMALL)
			{
				res.gotoAndStop("small");
				text = res["hpValueBar"]["txt"];
			}
			else
			{
				res.gotoAndStop("large");
				text = res["hpValueBar"]["txt"];
			}
			
			updateTextVisible();
			
			switch(type)
			{
				case TYPE_SINGLE:
					res["hpValueBar"].gotoAndStop("single");
					singleCompoundValueBar = new CoreCompoundValueBar(res["hpValueBar"]["valueBarContainer"]);
					break;
				case TYPE_MULTI:
				case TYPE_MULTI_BOSS:
					res["hpValueBar"].gotoAndStop("multi");
					multiCompoundValueBar = new CoreMultiCompoundValueBar(LAYER_NUMBER, LAYER_VALUE, res["hpValueBar"]["valueBarContainer"]);
					break;
				case TYPE_WHITE:
					res["hpValueBar"].gotoAndStop("white");
					whiteCompoundValueBar = new CoreCompoundValueBar(res["hpValueBar"]["valueBarContainer"]);
					break;
			}
			
			update(curValue, maxValue);
		}
	
															
		public function autoSetNull():void
		{

			res = null;
			text = null;
			singleCompoundValueBar = null;
			whiteCompoundValueBar = null;
			multiCompoundValueBar = null;
		}
	}
}