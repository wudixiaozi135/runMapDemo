package tx.mnme.file
{
	import com.tencent.morefun.naruto.mmefile.render.datas.ActionData;
	import com.tencent.morefun.naruto.mmefile.render.datas.AssetData;
	import com.tencent.morefun.naruto.mmefile.render.datas.ColorData;
	import com.tencent.morefun.naruto.mmefile.render.datas.ElementData;
	import com.tencent.morefun.naruto.mmefile.render.datas.FrameData;
	import com.tencent.morefun.naruto.mmefile.render.datas.LayerData;
	import com.tencent.morefun.naruto.mmefile.render.datas.MmeData;
	import com.tencent.morefun.naruto.mmefile.render.datas.PhantomData;
	import com.tencent.morefun.naruto.mmefile.render.datas.PointElementData;
	import com.tencent.morefun.naruto.mmefile.render.utils.registerAlias;
	import com.tencent.morefun.naruto.tools.mmefile.MmeFile;
	import tx.mnme.views.Editor;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.net.URLRequest;
	import flash.system.System;
	import flash.utils.ByteArray;
	
	import mx.controls.Alert;
	
	import net.fixer.utils.MedianCutQuant;
	import net.fixer.utils.OctreeQuant;
	import net.fixer.utils.PNGEncoder;
	import net.zx.swf.file.ByteArrayClassObject;
	import net.zx.swf.file.JPEGClassObject;
	import net.zx.swf.file.PNGClassObject;
	import net.zx.swf.file.SWFResFile;
	import net.zx.swf.file.XMLClassObject;

	public class ExportControl
	{
		private var outFile:File;
		private var mmeFile:MmeFile;
		private var swf:SWFResFile;
		private var warn:String = "";
		private var actions:XML;
		private var alert:Boolean;
		private var ignoreHide:Boolean;
		private var actionName:String;
		
		private var onComplete:Function;
		
//		private var offsets:Object = {};
		
		public function ExportControl(outFile:File,editor:Editor,alert:Boolean,ignoreHide:Boolean,actionName:String,onComplete:Function)
		{
			this.outFile = outFile;
			this.mmeFile = editor.getResource();
			this.swf = new SWFResFile();
			this.alert = alert;
			this.ignoreHide = ignoreHide;
			this.actionName = actionName;
			this.onComplete = onComplete;
			
			checkOutFile();
		}
		
		protected function checkOutFile():void
		{
			if(outFile)
			{
				start();
			}else
			{
				outFile = new File("/mmeasset.swf");
				outFile.addEventListener(Event.SELECT,onOutFile);
				outFile.addEventListener(Event.CANCEL,onOutFile);
				outFile.browseForSave("请指定导出的文件");
			}
		}
		
		protected function onOutFile(event:Event):void
		{
			switch(event.type)
			{
				case Event.SELECT:
					start();
					break;
				case Event.CANCEL:
					destroy();
					break;
			}
		}
		
		private function start():void
		{
			actions = mmeFile.data.encodeSwf(ignoreHide);
			
			var assets:XMLList = new XMLList();
			
			var names:Array = new Array();
			
			for each(var ele:XML in actions..element)
			{
				var name:String = ele.@filename;
				delete ele.@filename;
				if(isNotExport(name))
				{
					ele.@extname = name;
					continue;
				}
				
				
				var index:int = names.indexOf(name);
				if(index==-1)
				{
					index = names.length;
					names.push(name);
					
					var asset:XML = <asset />;
					asset.@id = index;
					asset.@assetName = name;
					//asset.@className = addtoswf(index,name);
					actions.appendChild(asset);
					
					if(actionName == null || actionName == String(ele.parent().parent().parent().@name))
					{
						addtoswf(asset,index,name);
					}
				}
				ele.@assetId = index;
			}
			checkSwf();
		}
		
		private function getLibraryItem(name1:String):XML
		{
			var xmllist:XMLList = mmeFile.data.library..item.(@name==name1);
			if(xmllist.length()>0)
			{
				return xmllist[0];
			}
			return null;
		}
		private function isNotExport(name1:String):Boolean
		{
			var item:XML = getLibraryItem(name1);
			if(item && String(item.@notExport) == "true")
			{
				return true;
			}
			return false;
		}
		
		private var ac:int = 0;
		
		private function addtoswf(asset:XML,index:int,filename:String):void
		{
			var f:File = mmeFile.tempDirectory.resolvePath("images/"+filename);
//			var f:FZipFile = mmeFile.zip.getFileByName(filename);
			if(!f.exists)
			{
				trace("[警告] 资源“"+filename+"”未正常导出.");
				warn += "资源“"+filename+"”未正常导出.";
				return;
			}
			
			ac++;
			var loader:Loader = new Loader();
			loader.contentLoaderInfo.addEventListener(Event.COMPLETE,onComplete);
			loader.load(new URLRequest(f.url));
			
			function onComplete(e:Event):void
			{
				e.currentTarget.removeEventListener(Event.COMPLETE,onComplete);
				
				var bp:Bitmap = loader.content as Bitmap;
				var rect:Rectangle = bp.bitmapData.getColorBoundsRect(0xFF000000,0,false);
				var bytes:ByteArray;
				
				if(rect.x != 0 || rect.y != 0 || rect.width!=0 && rect.width != bp.bitmapData.width || rect.height!=0 && rect.height != bp.bitmapData.height)
				{
					var bd:BitmapData = new BitmapData(rect.width,rect.height);
					bd.copyPixels(bp.bitmapData,rect,new Point());
//					swf.addImageClass(new ImageClassObject("Asset_"+index,bd));/
					
//					bytes = new PNGEncoder().encode(bd);
//					swf.addPNGClass(new PNGClassObject("Asset_"+index,bytes));
					
					addToSwfClass(bd,"Asset_"+index);
					
					asset.@x = int(-bp.width*0.5) + rect.x;
					asset.@y = int(-bp.height*0.5) + rect.y;
//					asset.@x = Math.floor(-bp.width*0.5) + rect.x;
//					asset.@y = Math.floor(-bp.height*0.5) + rect.y;
					
//					if(rect.x != 0 || rect.y != 0)
//					{
//						offsets[filename] = new Point(Math.floor(-bp.width*0.5) + rect.x , Math.floor(-bp.height*0.5) + rect.y);
//						offsets[filename] = new Point((rect.x - Math.floor((bp.width-rect.width)*0.5)),(rect.y -Math.floor((bp.height-rect.height)*0.5)));
//						updateElementPos(filename,rect.x - (bp.width-rect.width)*0.5,rect.y -(bp.height-rect.height)*0.5);
//					}
				}else
				{
//					swf.addImageClass(new ImageClassObject("Asset_"+index,bp.bitmapData,80));
//					bytes = new PNGEncoder().encode(bp.bitmapData);
//					swf.addPNGClass(new PNGClassObject("Asset_"+index,bytes));
					addToSwfClass(bp.bitmapData,"Asset_"+index);
					
					asset.@x = int(-bp.width*0.5);
					asset.@y = int(-bp.height*0.5);
//					asset.@x = Math.floor(-bp.width*0.5);
//					asset.@y = Math.floor(-bp.height*0.5);
				}
				
				ac--;
				
				asset.@className = "Asset_"+index;
				asset.@width = rect.width;
				asset.@height = rect.height;
				
//				updateElementClassName(filename,"Asset_"+index);
				
				checkSwf();
			}
			
			function addToSwfClass(bd:BitmapData,className:String):void
			{
				var bytes:ByteArray;
				if(mmeFile.data.compressTypeIsPNG)
				{
					if(mmeFile.data.compressParamPNG == 8)
					{
						bd = new MedianCutQuant().quant(bd);
//						bd = new MedianCutAlphaQuant().quant(bd);
//						bd = new HexQuant().quant(bd);
						bd = new OctreeQuant(256,6).quantBooleanTransparent(bd);
						bytes = new PNGEncoder().encode(bd);
						swf.addPNGClass(new PNGClassObject(className,bytes));
					}else
					{
						bytes = new PNGEncoder().encode(bd);
						swf.addPNGClass(new PNGClassObject(className,bytes));
					}
				}else if(mmeFile.data.compressTypeIsJPG)
				{
					swf.addJPEGClass(new JPEGClassObject(className,bd,mmeFile.data.compressParamJPG));
				}else
				{
					throw new Error("unknow commpressType:",mmeFile.data.compressType)
				}
			}
		}
		
		
		
		private function updateElementClassName(filename:String,className:String):void
		{
			var list:XMLList = actions..element.(@filename==filename);
			for each(var ele:XML in list)
			{
				ele.@className = className;
			}
		}
		
		
		private function updateElementPos(filename:String,ax:Number,ay:Number):void
		{
			var list:XMLList = actions..element.(@filename==filename);
			for each(var ele:XML in list)
			{
				var x:Number = ele.@x;
				var y:Number = ele.@y;
				var sx:Number = ele.hasOwnProperty("@scaleX")?ele.@scaleX:1;
				var sy:Number = ele.hasOwnProperty("@scaleY")?ele.@scaleY:1;
				ele.@x = x+ax*sx;
				ele.@y = y+ay*sy;
			}
		}
		
		
		private function checkSwf():void
		{
			if(ac==0)
			{
				var amf:ByteArray = createAmf();
				
//				for(var filename:String in offsets)
//				{
//					updateElementPos(filename,offsets[filename].x,offsets[filename].y);
//				}
				swf.addByteArrayClass(new ByteArrayClassObject("ConfigAMF",amf));
				swf.addXmlClass(new XMLClassObject("Config",actions));
				
				var bytes:ByteArray = swf.createFile();
				
				var fs:FileStream = new FileStream();
				fs.open(outFile,FileMode.WRITE);
				fs.writeBytes(bytes);
				fs.close();
				
//				trace(actions)
				
				if(alert)
				{
					Alert.show("导出成功:\n"+outFile.nativePath+(warn?"\n"+warn:""));
				}
				onComplete && onComplete();
				destroy();
			}
		}
		
		private function createAmf():ByteArray
		{
			registerAlias(MmeData);
			registerAlias(AssetData);
			registerAlias(ActionData);
			registerAlias(LayerData);
			registerAlias(FrameData);
			registerAlias(ElementData);
			registerAlias(PointElementData);
			registerAlias(PhantomData);
			registerAlias(ColorData);
			
			var mmeData:MmeData = new MmeData();
			mmeData.decode(actions);
			var ba:ByteArray = new ByteArray();
			ba.writeObject(mmeData);
			ba.position = 0;
			return ba;
		}
		
		public function destroy():void
		{
			outFile.removeEventListener(Event.SELECT,onOutFile);
			outFile.removeEventListener(Event.CANCEL,onOutFile);
			outFile = null;
			mmeFile = null;
			swf = null;
			warn = null;
			actions = null;
//			offsets = null;
			onComplete = null;
			
			System.gc();
		}
	}
}