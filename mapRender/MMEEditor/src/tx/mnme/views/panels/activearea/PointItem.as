package tx.mnme.views.panels.activearea
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.PointElementData;
	
	import flash.display.Graphics;
	import flash.display.Sprite;
	
	public class PointItem extends BaseItem
	{
		private var sprite:Sprite;
		
		public function PointItem(data:PointElementData, layerIndex:int, x:int=1000, y:int=1000)
		{
			super(data, layerIndex, x, y);
		}
		
		private function initSprite():void
		{
			sprite = new Sprite();
			addChild(sprite);
			
			sprite.graphics.beginFill(0,0);
			sprite.graphics.drawRect(-5,-5,10,10);
			sprite.graphics.endFill();
			
			draw(sprite.graphics,2,0xFFFFFF,0xFFFFFF);
			draw(sprite.graphics,1,0xFF3333,0x333333);
		}
		
		override public function initDisplay():void
		{
			initSprite();
		}
		
		private function draw(graphics:Graphics,thick:int,color:uint,color2:uint):void
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