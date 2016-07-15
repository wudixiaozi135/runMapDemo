package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view
{

	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class DialogueUI extends Sprite
	{
		private var res:MovieClip;
		private var txt:TextField;
		private var bg:MovieClip;
		private var textFormat:TextFormat;
		private var paddingWidth:int = 8;
		private var paddingHeight:int = 4;
		private var _ninjaX:int;
		private var _ninjaY:int;
		
		private var text:String = "";
		
		private var _visible:Boolean; 
		
		public function DialogueUI(res:MovieClip)
		{
			super();
			
			this.res = res;
			this.x = res.x;
			this.y = res.y;
			res.x = 0;
			res.y = 0;
			
			txt = new TextField();
			bg = res.background;
			textFormat = txt.defaultTextFormat;
			textFormat.leading = 2;
			textFormat.font = I18n.lang("as_motion_1451031573_4249");
			txt.defaultTextFormat = textFormat;
			addChild(res);
			addChild(txt);
			
			txt.autoSize = TextFieldAutoSize.LEFT;
			txt.border = false;
			
			
			txt.x = paddingWidth + int(textFormat.leftMargin) / 2;
			txt.y = paddingHeight + int(textFormat.leading) / 2;
			
			
			this.mouseEnabled = false;
			this.mouseChildren = false;
		}
		
		public function set ninjaX(value:int):void
		{
			_ninjaX = value;
		}
		
		public function get ninjaX():int
		{
			return _ninjaX;
		}
		
		public function set ninjaY(value:int):void
		{
			_ninjaY = value;
		}
		
		public function get ninjaY():int
		{
			return _ninjaY;
		}
		
		public function showDialogue(value:String):void
		{
			text = wordWrap(value);
			if(text != txt.htmlText)
			{
				txt.htmlText = text;
				
				bg.width = txt.width + paddingWidth * 2;
				bg.height = txt.height + paddingHeight * 2 + textFormat.leading;
				
				updatePosition();
			}
			
			visible = true;
		}
		
		private function wordWrap(value:String):String
		{
			var wordWrapNumber:int;
			var resultValue:String;
			var reg:RegExp = new RegExp("\\r", "g");
			
			resultValue = "";
			value.replace(reg, "");
			wordWrapNumber = Math.floor(value.length / 13);
			for(var i:int = 0;i < wordWrapNumber;i ++)
			{
				resultValue += value.substr(i * 13, 13) + "\n";
			}
			
			resultValue += value.substring(i * 13, value.length);
			
			return resultValue;
		}
		
		private function updatePosition():void
		{
			bg.x = - bg.width / 2;
			bg.y = - bg.height;
			
			txt.x = bg.x + paddingWidth + int(textFormat.leftMargin) / 2; 
			txt.y = bg.y + paddingHeight + int(textFormat.leading) / 2;
		}
		
		
		override public function set visible(value:Boolean):void
		{
			_visible = value;
			
			super.visible = (value && text != "");
		}
		
		override public function get visible():Boolean
		{
			return _visible;
		}
	
															
		public function autoSetNull():void
		{

			res = null;
			txt = null;
			bg = null;
			textFormat = null;
			text = null;
		}
	}
}