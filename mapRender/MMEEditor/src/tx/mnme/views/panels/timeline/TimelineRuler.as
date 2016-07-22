package tx.mnme.views.panels.timeline
{
	import tx.mnme.views.panels.Timeline;
	
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	import mx.core.UIComponent;
	
	public class TimelineRuler extends UIComponent
	{
		public var w:int = Timeline.WIDTH;
		public function TimelineRuler()
		{
			super();
			reref();
//			addEventListener(ResizeEvent.RESIZE,onResize);
		}
		
//		private function onResize(e:ResizeEvent):void
//		{
//			this.w = this.width;
//			reref();
//		}
		
		public function resize(w:int):void
		{
			this.w = w;
			reref();
		}
		
		public function reref():void
		{
			removeChildren();
			this.graphics.clear();
			this.graphics.lineStyle(1,0xCCCCCC);
			for(var i:int=0;i<w/TimelineBlock.WIDTH;i++)
			{
				graphics.moveTo(i*TimelineBlock.WIDTH,20);
				graphics.lineTo(i*TimelineBlock.WIDTH,30);
				
				if(i==0 || (i+1)%5 ==0)
				{
					var txt:TextField = new TextField();
					txt.mouseEnabled = txt.mouseWheelEnabled = false;
					txt.text = String(i+1);
					txt.textColor = 0x333333;
					txt.defaultTextFormat = new TextFormat("宋体",9);
					txt.x = 1+(i*TimelineBlock.WIDTH);
					txt.y = 10;
					addChild(txt);
				}
			}
			this.graphics.endFill();
		}
	}
}