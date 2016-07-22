package 
{
	import LibCore.mme.MmeAssetRender;
	import LibCore.mme.data.AssetData;
	import LibCore.mme.data.MmeData;
	import LibCore.utils.FileUtils;
	import LibCore.utils.Functor;
	import LibCore.utils.ProcessUtils;
	import LibCore.utils.StringUtils;
	
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.ErrorEvent;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.NativeProcessExitEvent;
	import flash.filesystem.File;

	/**
	 * MME动画工具函数
	 * @author	Fictiony
	 * @version	2016/7/19
	 */	
	public class MmeUtils
	{
		static private const ZIP_EXE:File = File.applicationDirectory.resolvePath("ext/7z.exe");	//压缩程序
		
		static private var _tempDir:File;			//临时文件夹对象

		/**
		 * 导出资源图片
		 * @param render	动画渲染器
		 */
		static public function exportAssets( f:File, render:MmeAssetRender ):void
		{
			for each (var asset:AssetData in render.getMmeData().assetDatas)
			{
				var bmp:BitmapData = asset.bitmap || render.getMmeAsset().getAsset(asset.className, render.getAppDomain());
				if (!bmp)
				{
					trace("Asset not found:", asset.encode());
					continue;
				}
				FileUtils.writePNGFile(f.resolvePath(StringUtils.changeExt(asset.assetName, "png")), bmp);
			}
		}

		/**
		 * 读取MME动画文件
		 * @param render	动画渲染器
		 * @param callback	回调函数，格式为：functin (success:Boolean, errMsg:String):void
		 */
		static public function readMmeFile( f:File, render:MmeAssetRender, callback:Function ):void
		{
			//解压后处理
			function handle( success:Boolean, errMsg:String ):void
			{
				if (success)
				{
					try
					{
						var data:MmeData = new MmeData;
						
						//读取库配置
						var library_xml:XML = FileUtils.readXMLFile(_tempDir.resolvePath("library.xml"));
						data.decodeLibrary(library_xml);
						
						//读取资源文件
						for each (var asset:AssetData in data.assetDatas)
						{
							var image_file:File = _tempDir.resolvePath("images/" + asset.assetName);
							if (image_file.exists)
							{
								FileUtils.readImageFile(image_file, Functor.createLeft(readImageCallback, asset));
							}
							else
							{
								trace("Asset file not found:", asset.assetName);
							}
						}

						//读取动作配置
						var action_xml:XML = FileUtils.readXMLFile(_tempDir.resolvePath("action.xml"));
						data.decode(action_xml);
						
						//设置给动画渲染器
						render.loadMmeData(data, render.getMmeAsset().getAppDomain(f.url));
					}
					catch (e:Error)
					{
						success = false;
						errMsg = e.toString();
					}
				}
				callback(success, errMsg);
			};

			//解压到临时文件夹
			_tempDir = File.createTempDirectory();
			ProcessUtils.startProcess(ZIP_EXE, ["x", f.nativePath, "-o" + _tempDir.nativePath],
				null, callback != null ? Functor.createLeft(handleProcess, handle) : null);
		}
		
		/**
		 * 读取图片文件回调
		 */		
		static private function readImageCallback( image:Bitmap, asset:AssetData ):void
		{
			var bmp:BitmapData = image ? image.bitmapData : null;
			if (bmp)
			{
				asset.bitmap		= bmp;
				if (!asset.width || !asset.height)
				{
					asset.x			= int(-bmp.width / 2);
					asset.y			= int(-bmp.height / 2);
					asset.width		= bmp.width;
					asset.height	= asset.bitmap.height;
				}
			}
		}
		
		/**
		 * 写入MME动画文件
		 * @param render	动画渲染器
		 * @param callback	回调函数，格式为：functin (success:Boolean, errMsg:String):void
		 */		
		static public function writeMmeFile( f:File, render:MmeAssetRender, callback:Function ):void
		{
			//输出到临时文件夹
			_tempDir = File.createTempDirectory();
			FileUtils.writeXMLFile(_tempDir.resolvePath("action.xml"), render.getMmeData().encode(false));
			FileUtils.writeXMLFile(_tempDir.resolvePath("library.xml"), render.getMmeData().encodeLibrary());
			exportAssets(_tempDir.resolvePath("images"), render);

			//压缩成MME
			ProcessUtils.startProcess(ZIP_EXE, ["a", f.nativePath, _tempDir.nativePath + "/*", "-mx=0"],
				null, callback != null ? Functor.createLeft(handleProcess, callback) : null);
		}
		
		/**
		 * 内部进程处理
		 */
		static private function handleProcess( e:Event, callback:Function ):void
		{
			switch (e.type)
			{
				case NativeProcessExitEvent.EXIT:
					callback(true, null);
					break;
				case IOErrorEvent.STANDARD_ERROR_IO_ERROR:
				case IOErrorEvent.STANDARD_OUTPUT_IO_ERROR:
					callback(false, (e as ErrorEvent).text);
					break;
			}
		}
		
		/**
		 * 生成动画文件
		 */
//		this.swf = new SWFResFile();
//		public function encode
//			actions = mmeFile.data.encodeSwf(ignoreHide);
//			
//			var assets:XMLList = new XMLList();
//			
//			var names:Array = new Array();
//			
//			for each(var ele:XML in actions..element)
//			{
//				var name:String = ele.@filename;
//				delete ele.@filename;
//				if(isNotExport(name))
//				{
//					ele.@extname = name;
//					continue;
//				}
//				
//				
//				var index:int = names.indexOf(name);
//				if(index==-1)
//				{
//					index = names.length;
//					names.push(name);
//					
//					var asset:XML = <asset />;
//					asset.@id = index;
//					asset.@assetName = name;
//					//asset.@className = addtoswf(index,name);
//					actions.appendChild(asset);
//					
//					if(actionName == null || actionName == String(ele.parent().parent().parent().@name))
//					{
//						addtoswf(asset,index,name);
//					}
//				}
//				ele.@assetId = index;
//			}

		/**
		 * 删除临时文件夹
		 */
		static public function deleteTempDir():void
		{
			try
			{
				_tempDir.deleteDirectory(true);
			}
			catch (e:Error)
			{
			}
		}
	}
}