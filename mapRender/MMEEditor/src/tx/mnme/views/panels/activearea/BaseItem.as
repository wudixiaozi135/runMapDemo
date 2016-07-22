package tx.mnme.views.panels.activearea
{
	
	import com.tencent.morefun.naruto.tools.mmefile.timeline.BaseElementData;
	
	import flash.display.Sprite;
	import flash.geom.Rectangle;
	
	public class BaseItem extends Sprite
	{
//		public static const filter:GlowFilter = new GlowFilter(0x0000FF);
		
		private var _selected:Boolean;
//		public var id:int;
//		public var file:FZipFile;
//		public var filename:String;
		public var layerIndex:int;
		protected var data:BaseElementData;
		
		public function BaseItem(data:BaseElementData,layerIndex:int,x:int=1000,y:int=1000)
		{
			super();
			this.mouseChildren = false;
			
//			this.id = id;
//			this.file = file;
			this.data = data;
			this.layerIndex = layerIndex;
			this.x = x;
			this.y = y;
		}
		
		public function getData():BaseElementData
		{
			return data;
		}
		
		public function get selected():Boolean
		{
			return _selected;
		}

		public function set selected(value:Boolean):void
		{
			_selected = value;
			
			this.graphics.clear();
			
			if(selected)
			{
//				this.filters = [filter];
				
				var rect:Rectangle = getBounds(this);
				
				this.graphics.lineStyle(4,0x6666FF);
				this.graphics.drawRect(rect.x,rect.y,rect.width,rect.height);
				this.graphics.endFill();
				
			}else
			{
//				this.filters = [];
			}
		}
		
		public function setPosition(x:int,y:int,andData:Boolean=false):void
		{
			this.x = 1000 + x;
			this.y = 1000 + y;
			if(andData)
			{
				data.x = x;
				data.y = y;
			}
		}
		
		
		public function initDisplay():void
		{
			
		}
		
		public function destroy():void
		{
			
			if(parent)
			{
				parent.removeChild(this);
			}
			
			data = null;
//			this.file = null;
		}

	}
}