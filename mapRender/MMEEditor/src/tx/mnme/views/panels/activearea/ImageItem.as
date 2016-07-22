package tx.mnme.views.panels.activearea
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.ColorData;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.ElementData;
	import tx.mnme.BitmapDataCache;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.filesystem.File;
	import flash.geom.ColorTransform;
	import flash.net.URLRequest;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	public class ImageItem extends BaseItem
	{
		private var loader:Loader;
		private var bitmap:Bitmap;
		public var file:File;
		
		public function ImageItem(layerIndex:int,file:File,elementData:ElementData)
		{
			this.file = file;
			super(elementData,layerIndex);
		}
		
		private function get edata():ElementData
		{
			return data as ElementData;
		}
		
		override public function initDisplay():void
		{
			if(file==null || !file.exists)
			{
				onLoadError(null);
			}else{
				var bd:BitmapData = BitmapDataCache.getBitmapData(file.name);
				if(bd)
				{
					bitmap = new Bitmap(bd,"auto",true);
					bitmap.x = -bitmap.width*0.5;
					bitmap.y = -bitmap.height*0.5;
//					bitmap.x = Math.floor(-bitmap.width*0.5);
//					bitmap.y = Math.floor(-bitmap.height*0.5);
					
//					bitmap.x = -bitmap.width>>1;
//					bitmap.y = -bitmap.height>>1;
					addChild(bitmap);
				}else
				{
					loader = new Loader();
					loader.mouseChildren = false;
					loader.name = file.name;
					loader.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoadComplete);
					loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onLoadError);
					loader.load(new URLRequest(file.nativePath));
					addChild(loader);
				}
			}
		}
		
		protected function onLoadComplete(event:Event):void
		{
			var loader:Loader = (event.currentTarget as LoaderInfo).loader;
			loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoadComplete);
			loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onLoadError);
			loader.x = -loader.width*0.5;
			loader.y = -loader.height*0.5;
			if(selected)
			{
				selected = selected;
			}
			
			var bp:Bitmap = loader.content as Bitmap;
			bp.smoothing = true;
			BitmapDataCache.setBtimapData(loader.name,bp.bitmapData);
		}
		
		private function onLoadError(e:IOErrorEvent):void
		{
			if(e)
			{
				(e.currentTarget as LoaderInfo).removeEventListener(Event.COMPLETE,onLoadComplete);
				(e.currentTarget as LoaderInfo).removeEventListener(IOErrorEvent.IO_ERROR,onLoadError);
			}
			
			var errSprite:Sprite = new Sprite();
			
			var txt:TextField = new TextField();
			txt.width = 90;
			txt.height = 90;
			txt.defaultTextFormat = new TextFormat(null,12,0xFFFFFF,true);
			txt.text = "name:'"+edata.filename+"'";
			txt.x = txt.y = 5;
			txt.mouseEnabled = false;
			errSprite.addChild(txt);
			
			errSprite.graphics.lineStyle(1,0xFF0000);
			errSprite.graphics.lineTo(100,100);
			errSprite.graphics.moveTo(0,100);
			
			errSprite.graphics.beginFill(0xFF0000,0.5);
			errSprite.graphics.lineTo(100,0);
			errSprite.graphics.drawRect(0,0,100,100);
			errSprite.graphics.endFill();
			
			addChild(errSprite);
		}
		
		override public function destroy():void
		{
			
			
			if(loader)
			{
//				try{
//					loader.close();
//				}catch(err:Error){};
//				loader.unload();
				if(loader.parent)
				{
					loader.parent.removeChild(loader);
				}
				loader = null;
			}
			
			
			if(bitmap)
			{
				bitmap.bitmapData = null;
				if(bitmap.parent)
				{
					bitmap.parent.removeChild(bitmap)
				}
				bitmap = null;
			}
			
			super.destroy();
		}
		
		public function setScale(scaleX:Number,scaleY:Number,andData:Boolean=false):void
		{
			this.scaleX = scaleX;
			this.scaleY = scaleY;
			if(andData)
			{
				edata.scaleX = scaleX;
				edata.scaleY = scaleY;
			}
		}
		
		public function setRotation(rotation:Number,andData:Boolean=false):void
		{
			this.rotation = rotation;
			if(andData)
			{
				edata.rotation = rotation;
			}
		}
		
		public function setAlpha(alpha:Number,andData:Boolean=false):void
		{
			this.alpha = alpha;
			if(andData)
			{
				edata.alpha = alpha;
			}
		}
		
		
		public function setBlendMode(value:String,andData:Boolean=false):void
		{
			this.blendMode = value||"normal";
			if(andData)
			{
				edata.blendMode = value;
			}
		}
		
		public function setColor(color:ColorData,andData:Boolean=false):void
		{
			var ct:ColorTransform = new ColorTransform();
			ct.alphaMultiplier = alpha;
			if(color.empty)
			{
				
			}else
			{
				var a:Number = color.a / 0xFF;
				ct.redMultiplier = 1-a;
				ct.greenMultiplier = 1-a;
				ct.blueMultiplier = 1-a;
				ct.redOffset = color.r*a;
				ct.greenOffset = color.g*a;
				ct.blueOffset = color.b*a;
			}
			this.transform.colorTransform = ct;
			if(andData)
			{
				edata.color.color = color.color;
				edata.color.empty = color.empty;
			}
		}
	}
}