package tx.mnme.views.windows
{	
	import com.tencent.morefun.naruto.mmefile.render.MmeAsset;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetError;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent;
	import tx.mnme.views.CheckBoxList;
	
	import flash.desktop.ClipboardFormats;
	import flash.desktop.NativeDragManager;
	import flash.display.BitmapData;
	import flash.display.BlendMode;
	import flash.display.Loader;
	import flash.display.NativeMenu;
	import flash.display.NativeMenuItem;
	import flash.display.Shape;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.MouseEvent;
	import flash.events.NativeDragEvent;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.filters.GlowFilter;
	import flash.geom.Matrix;
	import flash.net.URLRequest;
	import flash.text.TextField;
	import flash.text.TextFormat;
	import flash.utils.ByteArray;
	
	import mx.controls.Alert;
	import mx.core.UIComponent;
	import mx.events.CloseEvent;
	import mx.events.ResizeEvent;
	import mx.graphics.codec.PNGEncoder;
	
	import spark.components.CheckBox;
	import spark.components.Label;
	import spark.components.Window;
	
	public class PreviewNativeWidnow extends Window
	{
		private var render:MmeAssetRender;
		private var asset:MmeAsset;
		private var action:String;
		private var actionIndex:int = 0;
		private var shape:Shape;
		private var loading:TextField;
		
		private var label:Label;
		private var ang:CheckBoxList;
		private var ui:UIComponent;
		private var cbPoint:CheckBox;
		private var cbLine:CheckBox;
		
		private static var cbPointSelected:Boolean = false;
		private static var cbLineSelected:Boolean = false;
		
		
		public function PreviewNativeWidnow()
		{
//			var options:NativeWindowInitOptions = new NativeWindowInitOptions();
			super();
			
			addEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
			addEventListener(NativeDragEvent.NATIVE_DRAG_ENTER,onNativeDragEvent);
			addEventListener(NativeDragEvent.NATIVE_DRAG_DROP,onNativeDragEvent);
			addEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
			addEventListener(Event.ENTER_FRAME,onEnterFrame);
			
			width = 800;
			height = 600;
			title = "动画预览窗口";
			showStatusBar = false;
			
			shape = new Shape();
			shape.visible = cbLineSelected;
			shape.graphics.lineStyle(1,0xFFFFFF);
			shape.graphics.moveTo(-1000,0);
			shape.graphics.lineTo(1000,0);
			shape.graphics.moveTo(0,-1000);
			shape.graphics.lineTo(0,1000);
			shape.graphics.endFill();
			shape.blendMode = BlendMode.DIFFERENCE;
			
			loading = new TextField();
			loading.defaultTextFormat = new TextFormat("",30,0xFF3333);
			loading.autoSize = "left";
			loading.text = "loading...";
			
			var gf:GlowFilter = new GlowFilter(0xFFFFFF,1,2,2,10,1);
			label = new Label();
			label.height = 25;
			label.top = label.left = 10;
			label.filters = [gf];
			label.addEventListener(MouseEvent.ROLL_OVER,onLabel);
			label.addEventListener(MouseEvent.ROLL_OUT,onLabel);
			addElement(label);
			
			ang = new CheckBoxList();
			ang.setStyle("backgroundAlpha",0);
			ang.setStyle("borderAlpha",0);
			ang.addEventListener(MouseEvent.ROLL_OVER,onLabel);
			ang.addEventListener(MouseEvent.ROLL_OUT,onLabel);
			ang.addEventListener(Event.CHANGE,onActionNameGroup);
			ang.filters = [gf];
			ang.visible = false;
			ang.top = 25;
			ang.bottom = 10;
			ang.left = 10;
			ang.width = 200;
			addElement(ang);
			
			cbPoint = new CheckBox();
			cbPoint.filters = [gf];
			cbPoint.selected = cbPointSelected;
			cbPoint.right = 10;
			cbPoint.top = 10;
			cbPoint.label = "参考点";
			cbPoint.visible = false;
			cbPoint.addEventListener(Event.CHANGE,onChangeCB);
			addElement(cbPoint);
			
			cbLine = new CheckBox();
			cbLine.filters = [gf];
			cbLine.selected = cbLineSelected;
			cbLine.right = 10;
			cbLine.top = 30;
			cbLine.label = "参考线";
			cbLine.visible = false;
			cbLine.addEventListener(Event.CHANGE,onChangeCB);
			addElement(cbLine);
			
			asset = new MmeAsset();
			render = new MmeAssetRender(asset);
			render.mouseEnabled = false;
			render.mouseChildren = false;
			render.setReferPointVisible(cbPointSelected);
//			var pd:PhantomData = new PhantomData();
//			pd.color = 0x0000FF;
//			pd.interval = 5;
//			pd.type = PhantomData.TYPE_ON;
//			pd.dAlpha = 0.05;
//			render.setPhantom(MmeAssetRender.PHANTOM_MODE_ON,pd);
			render.addEventListener(MmeAssetRenderEvent.FRAME_EVENT,onRender);
			render.addEventListener(MmeAssetRenderEvent.FRAME_SOUND,onRender);
			render.addEventListener(MmeAssetRenderEvent.READY,onRender);
			render.addEventListener(MmeAssetRenderEvent.PLAY_END,onRender);
			
			
			onResize(null);
			addEventListener(ResizeEvent.RESIZE,onResize);
//			addEventListener(MouseEvent.MIDDLE_CLICK,onMiddleClick);
			addEventListener(Event.CLOSE,onClose);
			
			contextMenu = new NativeMenu();
			contextMenu.addItem(new NativeMenuItem("导出位图序列"));
			contextMenu.addEventListener(Event.SELECT,onRightMenu);
		}
		
		protected function onRightMenu(event:Event):void
		{
			var item:NativeMenuItem = event.target as NativeMenuItem;
			switch(item.label)
			{
				case "导出位图序列":
					exportBitmaps();
					break;
			}
		}		
		
		private function exportBitmaps():void
		{
			var file:File = new File();
			file.addEventListener(Event.SELECT,onEcportBitmapsSelected);
			file.browseForDirectory("请选择导出目录");
			
			function onEcportBitmapsSelected(event:Event):void
			{
				file.removeEventListener(Event.SELECT,onEcportBitmapsSelected);
				var n:int = 1;
				for each(var name:String in ang.selectedItems)
				{
					var bd:BitmapData = new BitmapData(width,height,true,0);
					var tf:int = render.getTotalFrame();
					for(var i:int=0;i<tf;i++)
					{
						renderGoto(name,i);
						bd.fillRect(bd.rect,0);
						bd.draw(render,new Matrix(1,0,0,1,width>>1,height>>1));
						saveExportBitmap(file.nativePath,n,bd);
						n++;
					}
				}
			}
		}
		
		private function saveExportBitmap(dir:String,n:int, bd:BitmapData):void
		{
			var fn:String = ("0000"+n).substr(-4) + ".png";
			var file:File = new File(dir+File.separator+fn);
			var fileStream:FileStream = new FileStream();
			fileStream.open(file,FileMode.WRITE);
			var bytes:ByteArray = new PNGEncoder().encode(bd);
			fileStream.writeBytes(bytes);
			fileStream.close();
		}
		
		protected function onMouseMove(event:MouseEvent):void
		{
			var b:Boolean = mouseX + 50 > cbPoint.x && mouseY < 100;
			 cbPoint.visible = b;
			 cbLine.visible = b;
		}
		
		protected function onChangeCB(event:Event):void
		{
			switch(event.currentTarget)
			{
				case cbPoint:
					cbPointSelected = cbPoint.selected;
					render.setReferPointVisible(cbPoint.selected);
					break;
				case cbLine:
					cbLineSelected = cbLine.selected;
					shape.visible = cbLine.selected;
					break;
			}
		}
		
		protected function onNativeDragEvent(event:NativeDragEvent):void
		{
			var arr:Array;
			var file:File;
			switch(event.type)
			{
				case NativeDragEvent.NATIVE_DRAG_ENTER:
					arr = event.clipboard.getData(ClipboardFormats.FILE_LIST_FORMAT) as Array;
					if(arr.length == 1)
					{
						file = arr[0] as File;
						if(file && file.extension == "swf")
						{
							NativeDragManager.acceptDragDrop(this);
						}
					}
					break;
				case NativeDragEvent.NATIVE_DRAG_DROP:
					arr = event.clipboard.getData(ClipboardFormats.FILE_LIST_FORMAT) as Array;
					if(arr.length == 1)
					{
						file = arr[0] as File;
						if(file && file.extension == "swf")
						{
							setData(file,null,null,null);
						}
					}
					break;
				
			}
		}
		
		protected function onActionNameGroup(e:Event):void
		{
			if(ang.selectedItems.length>0)
			{
				label.text = ang.selectedItems.join(",");
				actionIndex = 0;
//				render.play(ang.selectedItems[actionIndex],0,false);
				renderGoto(ang.selectedItems[actionIndex]);
			}else
			{
				label.text = "null";
			}
		}
		
		protected function onLabel(event:MouseEvent):void
		{
			switch(event.type)
			{
				case MouseEvent.ROLL_OVER:
					if(ang.enabled == true)
					{
						ang.visible = true;
					}
					break;
				case MouseEvent.ROLL_OUT:
					ang.visible = false;
					break;
			}
		}
		
		protected function onAddedToStage(e:Event):void
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			stage.addChild(shape);
			
			
			stage.addChild(loading);
			
			stage.addChild(render);
		}
		
//		protected function onMiddleClick(event:MouseEvent):void
//		{
//			shape.visible = !shape.visible;
//		}
		
		protected function onClose(event:Event):void
		{
			destroy();
		}
		
		protected function onResize(event:ResizeEvent):void
		{
			if(render)
			{
				render.x = width >> 1;
				render.y = height >> 1;
			}
			if(shape)
			{
				shape.x = width * 0.5;
				shape.y = height * 0.5;
			}
			if(loading)
			{
				loading.x = width * 0.5 - loading.width*0.5;
				loading.y = height * 0.5 - loading.height*0.5;
			}
		}
		
		public function clear():void
		{
			action = null;
			ang.removeItems();
			render.unload();
			asset.dispose();
		}
		
		public function setData(file:File,action:String,docFile:File,external:String,disableActionGroup:Boolean=false):void
		{
			title =  "动画预览窗口";
			if(file)
			{
				title += " -- " + file.nativePath;
			}
			
			
			clear();
			
			ang.enabled = !disableActionGroup;
			
			
			this.action = action;
			if(external)
			{
				var externalFile:File
				if(external.indexOf(":")!=-1)
				{
					externalFile = new File(external);
				}else
				{
					externalFile = new File(docFile.parent.nativePath+File.separator+external);
				}
				var loader:Loader = new Loader();
				loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onLoader);
				loader.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoader);
				loader.load(new URLRequest(externalFile.nativePath));
			}else
			{
				if(file)
				{
					render.loadUrl(file.nativePath);
				}
			}
			
			function onLoader(event:Event):void
			{
				loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onLoader);
				loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoader);
				
				switch(event.type)
				{
					case Event.COMPLETE:
						asset.setSharedAppDomain(loader.contentLoaderInfo.applicationDomain,loader.contentLoaderInfo.url);
						render.loadUrl(file.nativePath);
						break;
					case IOErrorEvent.IO_ERROR:
						Alert.show("共享资源加载失败!\r是否继续？","提示",Alert.YES|Alert.NO,null,function(ce:CloseEvent):void{
							if(ce.detail == Alert.YES)
							{
								render.loadUrl(file.nativePath);
							}
						});
						break;
				}
			}
		}
		
		protected function onRender(event:MmeAssetRenderEvent):void
		{
			switch(event.type)
			{
				case MmeAssetRenderEvent.READY:
					if(loading.parent)
					{
						loading.parent.removeChild(loading);
					}
					for each(var an:String in render.getActionNames())
					{
						if(action == null)
						{
							action = an;
						}
						ang.addItem(an,an==action);
					}
//					render.play(action,0,true);
					
					break;
				case MmeAssetRenderEvent.PLAY_END:
					if(ang.selectedItems.length > 0 )
					{
						actionIndex ++;
						actionIndex %= ang.selectedItems.length;
//						render.play(ang.selectedItems[actionIndex],0,false);
						renderGoto(ang.selectedItems[actionIndex]);
					}
					break;
				case MmeAssetRenderEvent.FRAME_EVENT:
					trace("MmeAssetRenderEvent.FRAME_EVENT:",event.frameEvent);
					break;
				
				case MmeAssetRenderEvent.FRAME_SOUND:
				{
					trace("MmeAssetRenderEvent.FRAME_SOUND:", "id/" + event.sound + ", volume/" + event.volume);
					break;
				}
			}
		}
		
		protected function renderGoto(name:String,frame:int=0,stop:Boolean=false):void
		{
			try
			{
				render.gotoAction(name,frame,stop);
			}catch(err:MmeAssetError)
			{
				onMmeAssetError(err);
			}
		}
		
		protected function onEnterFrame(e:Event):void
		{
			if(render && render.isReady)
			{
				try
				{
					render.manualEnterFrame();
				}catch(err:MmeAssetError)
				{
					onMmeAssetError(err);
				}
			}
		}
		
		protected function onMmeAssetError(error:MmeAssetError):void
		{
			Alert.show(error.message,"警告",Alert.OK,this);
			
			removeEventListener(Event.ENTER_FRAME,onEnterFrame);
			ang.enabled = false;
		}
		
		
		
		
		protected function destroy():void
		{
			removeEventListener(Event.ADDED_TO_STAGE,onAddedToStage);
			removeEventListener(NativeDragEvent.NATIVE_DRAG_ENTER,onNativeDragEvent);
			removeEventListener(NativeDragEvent.NATIVE_DRAG_DROP,onNativeDragEvent);
			removeEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
			removeEventListener(Event.ENTER_FRAME,onEnterFrame);
			removeEventListener(ResizeEvent.RESIZE,onResize);
			removeEventListener(Event.CLOSE,onClose);
			
			cbPoint.removeEventListener(Event.CHANGE,onChangeCB);
			cbLine.removeEventListener(Event.CHANGE,onChangeCB);
			
			if(asset)
			{
				asset.destroy();
				asset = null;
			}
			if(render)
			{
				render.removeEventListener(MmeAssetRenderEvent.FRAME_EVENT,onRender);
				render.removeEventListener(MmeAssetRenderEvent.FRAME_SOUND,onRender);
				render.removeEventListener(MmeAssetRenderEvent.READY,onRender);
				render.removeEventListener(MmeAssetRenderEvent.PLAY_END,onRender);
				render.destroy();
				render = null;
			}
			
			
		}
	}
}
