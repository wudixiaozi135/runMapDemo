package tx.mme
{
	import flash.display.Shape;

	public class MmeAssetRenderReferPoint extends Shape
	{
		public function MmeAssetRenderReferPoint()
		{
			super();
			
			draw(2,0xFFFFFF,0xFFFFFF);
			draw(1,0xFF3333,0x333333);
		}
		
		private function draw(thick:int,color:uint,color2:uint):void
		{
			graphics.lineStyle(thick,color);
			graphics.drawRect(-5,-5,10,10);
			graphics.lineStyle(thick,color2);
			graphics.moveTo(-20,0);
			graphics.lineTo(20,0);
			graphics.moveTo(0,-20);
			graphics.lineTo(0,20);
		}
	}
}