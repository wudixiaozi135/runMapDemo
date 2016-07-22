package tx.mnme.views.panels.timeline
{
	import mx.core.UIComponent;
	
	public class TimelineNeedle extends UIComponent
	{
		public function TimelineNeedle()
		{
			super();
			
			normal();
		}
		
		private function get h():Number
		{
			if(parent)
			{
				return parent.height;
			}else
			{
				return 125;
			}
			
		}
		
		public function normal():void
		{
			graphics.clear();
			graphics.lineStyle(1,0xFF0000);
			graphics.beginFill(0xFF0000,0.5);
			graphics.drawRect(0,0,15,30);
			graphics.moveTo(7.5,30);
			graphics.lineTo(7.5,h);
			graphics.endFill();
		}
		
		public function mousedown():void
		{
			graphics.clear();
			graphics.lineStyle(2,0);
			graphics.moveTo(7.5,0);
			graphics.lineTo(7.5,h);
			graphics.endFill();
		}
	}
}