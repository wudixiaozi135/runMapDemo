package crew.view
{
	import com.greensock.TweenLite;
	
	import flash.display.Sprite;
	import flash.filters.BitmapFilterQuality;
	import flash.filters.GlowFilter;
	
	public class PropertyRender extends Sprite
	{
		static private const maxLineLength:int = 45;  //正5边形端点到中心的距离
		//正五边形5条中线的角度的正弦余弦值
		static private const sinArr:Array = [Math.sin(0.5*Math.PI), Math.sin(0.9*Math.PI), Math.sin(1.3*Math.PI), Math.sin(1.7*Math.PI), Math.sin(2.1*Math.PI)];
		static private const cosArr:Array = [Math.cos(0.5*Math.PI), Math.cos(0.9*Math.PI), Math.cos(1.3*Math.PI), Math.cos(1.7*Math.PI), Math.cos(2.1*Math.PI)];
		static private const drawCommand:Vector.<int> = new <int>[1, 2, 2, 2, 2];  //画矢量图形的命令数组，1表示moveTo,2表示lineTo  
		static private const strengthenLevelToBgColor:Array = 
			[	0x339900, 
				0x0082D4,
				0x0082D4,
				0x0082D4,
				0x0082D4,
				0xAB66FF, 
				0xAB66FF, 
				0xAB66FF, 
				0xAB66FF, 
				0xFF9900, 
				0xFF9900, 
				0xFF9900, 
				0xFF9900, 
				0xFF9900, 
				0xF4716E,
				0xF4716E,
				0xF4716E,
				0xF4716E,
				0xF4716E,
				0xF4716E,
				0xF4716E];
		static private const strengthenLevelToFilterColor:Array = 
			[	0x66CC00, 
				0x00C6FF, 
				0x00C6FF, 
				0x00C6FF, 
				0x00C6FF, 
				0xBB88FF, 
				0xBB88FF, 
				0xBB88FF, 
				0xBB88FF, 
				0xFFCC00, 
				0xFFCC00,
				0xFFCC00,
				0xFFCC00,
				0xFFCC00,
				0xFC4949,
				0xFC4949,
				0xFC4949,
				0xFC4949,
				0xFC4949,
				0xFC4949,
				0xFC4949];
		
		private var view:Sprite;  //用来画5边形
		private var viewLine:Sprite;  //用来画5边形的边框
		private var lengthArr:Array = [0, 0, 0, 0, 0];//5条中线的长度数组，从竖直向上那条开始，分别是lifeAp,attackAp, defenseAp, ninpAp, resistAp
		private var coord:Vector.<Number> = new Vector.<Number>(10, true);
		private var bgColor:uint;
		private var filterColor:uint;
		
		public function PropertyRender()
		{
			super();
			view = new Sprite();
			viewLine = new Sprite();
			viewLine.filters = [new GlowFilter(0x66CCCC, 1, 5, 5, 2.22, BitmapFilterQuality.HIGH, true, true)];
			addChildAt(view, 0);
			addChildAt(viewLine, 1);
		}
		
		public function setProperty(lifeAp:int, attackAp:int, defenseAp:int, ninpAp:int, resistAp:int, minValue:int, maxValue:int, ninjaStrengthenLevel:int):void
		{
			var newLifeApLineLength:Number = Math.min((lifeAp - minValue) / (maxValue - minValue) * maxLineLength, maxLineLength);
			var newAttackApLineLength:Number = Math.min((attackAp - minValue) / (maxValue - minValue) * maxLineLength, maxLineLength);
			var newDefenseApLineLength:Number = Math.min((defenseAp - minValue) / (maxValue - minValue) * maxLineLength, maxLineLength);
			var newNinpApLineLength:Number = Math.min((ninpAp - minValue) / (maxValue - minValue) * maxLineLength, maxLineLength);
			var newResistApLineLength:Number = Math.min((resistAp - minValue) / (maxValue - minValue) * maxLineLength, maxLineLength);
			
			bgColor = strengthenLevelToBgColor[ninjaStrengthenLevel];
			filterColor = strengthenLevelToFilterColor[ninjaStrengthenLevel];
			viewLine.filters = [];
			viewLine.filters = [new GlowFilter(filterColor, 1, 5, 5, 2.22, BitmapFilterQuality.HIGH, true, true)];
			
//			lifeApLineLength = newLifeApLineLength;
//			attackApLineLength = newAttackApLineLength;
//			defenseApLineLength = newDefenseApLineLength;
//			ninpApLineLength = newNinpApLineLength;
//			resistApLineLength = newResistApLineLength;
			TweenLite.killTweensOf(this);
			TweenLite.to(this, 0.4, {lifeApLineLength:newLifeApLineLength, 
								   attackApLineLength:newAttackApLineLength, 
								   defenseApLineLength:newDefenseApLineLength,
								   ninpApLineLength:newNinpApLineLength,
								   resistApLineLength:newResistApLineLength}
						);
		}
		
		private function updateView():void
		{		
			for (var i:int = 0; i < 5; i++)
			{
				coord[i*2] = int(lengthArr[i] * cosArr[i]);
				coord[i*2+1] = -int(lengthArr[i] * sinArr[i]);
			}
			
			view.graphics.clear();
			view.graphics.beginFill(bgColor, 0.59);
			view.graphics.drawPath(drawCommand, coord);
			view.graphics.endFill();
			
			viewLine.graphics.clear();
			viewLine.graphics.beginFill(bgColor, 0.97);
			viewLine.graphics.drawPath(drawCommand, coord);
			viewLine.graphics.endFill();
		}
		
		public function set lifeApLineLength(value:Number):void
		{
			lengthArr[0] = value;
			updateView();
		}
		
		public function set attackApLineLength(value:Number):void
		{
			lengthArr[1] = value;
			updateView();
		}
		
		public function set defenseApLineLength(value:Number):void
		{
			lengthArr[2] = value;
			updateView();
		}
		
		public function set ninpApLineLength(value:Number):void
		{
			lengthArr[3] = value;
			updateView();
		}
		
		public function set resistApLineLength(value:Number):void
		{
			lengthArr[4] = value;
			updateView();
		}
		
		public function get lifeApLineLength():Number
		{
			return lengthArr[0];
		}
		
		public function get attackApLineLength():Number
		{
			return lengthArr[1];
		}
		
		public function get defenseApLineLength():Number
		{
			return lengthArr[2];
		}
		
		public function get ninpApLineLength():Number
		{
			return lengthArr[3];
		}
		
		public function get resistApLineLength():Number
		{
			return lengthArr[4];
		}
		
		public function destroy():void
		{
			TweenLite.killTweensOf(this);
			
			(view.parent) && (view.parent.removeChild(view));
			view.removeChildren();
			view = null;
			
			(viewLine.parent) && (viewLine.parent.removeChild(viewLine));
			viewLine.removeChildren();
			viewLine = null;
		}
		
	}
}