package tx.mnme.file
{
	import com.tencent.morefun.naruto.tools.mmefile.MmeFile;
	import com.tencent.morefun.naruto.tools.mmefile.MmeFileDecode;
	import com.tencent.morefun.naruto.tools.mmefile.MmeFileEncode;
	import tx.mnme.Global;
	import tx.mnme.commands.CommandManager;
	import tx.mnme.views.Editor;
	import tx.mnme.views.windows.ProgressWindow;
	
	import flash.desktop.NativeApplication;
	import flash.desktop.NativeProcess;
	import flash.desktop.NativeProcessStartupInfo;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.NativeProcessExitEvent;
	import flash.events.ProgressEvent;
	import flash.filesystem.File;
	import flash.net.FileFilter;
	import flash.system.System;
	
	import mx.controls.Alert;
	import mx.events.CloseEvent;

	public class FileControl
	{
		private var currEditor:Editor;
		private var currFile:File;
		private var currTmpDir:File;
		
		public function FileControl()
		{
		}
		
		public function getCurrentEditor():Editor
		{
			return currEditor;
		}
		
		public function getCurrentFile():File
		{
			return currFile;
		}
		
		public function create():void
		{
			if(currEditor)
			{
				Alert.show("目前暂不支持同时打开多个文件，请先关闭当前文件。");
				return;
			}
			var creater:MmeFileCreater = new MmeFileCreater();
			creater.createNormal();
			var mmeFile:MmeFile = creater.mmeFile;
			mmeFile.tempDirectory = currTmpDir = File.createTempDirectory();
			openFile(mmeFile);
			currFile = null;
		}
		
		public function createRole():void
		{
			if(currEditor)
			{
				Alert.show("目前暂不支持同时打开多个文件，请先关闭当前文件。");
				return;
			}
			var creater:MmeFileCreater = new MmeFileCreater();
			creater.createRole();
			var mmeFile:MmeFile = creater.mmeFile;
			mmeFile.tempDirectory = currTmpDir = File.createTempDirectory();
			openFile(mmeFile);
			currFile = null;
		}
		
		public function createEffect():void
		{
			if(currEditor)
			{
				Alert.show("目前暂不支持同时打开多个文件，请先关闭当前文件。");
				return;
			}
			var creater:MmeFileCreater = new MmeFileCreater();
			creater.createEffect();
			var mmeFile:MmeFile = creater.mmeFile;
			mmeFile.tempDirectory = currTmpDir = File.createTempDirectory();
			openFile(mmeFile);
			currFile = null;
		}
		
		public function open():void
		{
			if(currEditor)
			{
				Alert.show("目前暂不支持同时打开多个文件，请先关闭当前文件。");
				return;
			}
			
			var file:File = new File("/");
			file.addEventListener(Event.SELECT,onOpenSelectFile);
			file.browseForOpen("打开文件",[new FileFilter("动画编辑文件(*.mme)","*.mme")]);
		}
		
		private function onOpenSelectFile(e:Event):void
		{
			var file:File = e.currentTarget as File;
			file.removeEventListener(Event.SELECT,onOpenSelectFile);
			openSystemFile(file);
		}
		
		public function openSystemFile(file:File):void
		{
			if(currEditor)
			{
				Alert.show("请先关闭当前文件");
				return;
			}
			
			currFile = file;
			Global.mainApp.setTitle(currFile.nativePath);
			
			currTmpDir = File.createTempDirectory();
			var npsi:NativeProcessStartupInfo = new NativeProcessStartupInfo();
			npsi.executable = File.applicationDirectory.resolvePath("ext/7z.exe");
			npsi.arguments = new Vector.<String>;
			npsi.arguments.push("x");
			npsi.arguments.push(currFile.nativePath);
			npsi.arguments.push("-o"+currTmpDir.nativePath);
			
			var np:NativeProcess = new NativeProcess();
			np.addEventListener(NativeProcessExitEvent.EXIT,onExit);
			np.start(npsi);
			
			ProgressWindow.getInstance().show("打开中...");
			function onExit(e:NativeProcessExitEvent):void
			{
				np.removeEventListener(NativeProcessExitEvent.EXIT,onExit);
				
				ProgressWindow.getInstance().hide();
				var mmeFileDecode:MmeFileDecode = new MmeFileDecode();
				var mmeFile:MmeFile = mmeFileDecode.decode(currTmpDir);
				openFile(mmeFile);
				if(mmeFile.version=="")
				{
					//兼容老版本，把根目录的图片移进images下
					npsi.executable = File.applicationDirectory.resolvePath("ext/robocopy.exe");
					npsi.arguments = new Vector.<String>;
					npsi.arguments.push(currTmpDir.nativePath);
					npsi.arguments.push(currTmpDir.resolvePath("images").nativePath);
					npsi.arguments.push("*.png");
					npsi.arguments.push("*.jpg");
					npsi.arguments.push("/move");
					
					np.addEventListener(NativeProcessExitEvent.EXIT,onExit2);
					np.start(npsi);
				}else
				{
					ProgressWindow.getInstance().hide();
				}
				mmeFile.version = Global.mainApp.version;
			}
			
			function onExit2(e:NativeProcessExitEvent):void
			{
				np.removeEventListener(NativeProcessExitEvent.EXIT,onExit2);
				
				ProgressWindow.getInstance().hide();
			}
		}
		
		private function openFile(mmeFile:MmeFile):void
		{
			destroyEditor();
			currEditor = new Editor();
			currEditor.left = 0;
			currEditor.right = 0;
			currEditor.top = 0;
			currEditor.bottom = 0;
			Global.mainApp.addElement(currEditor);
			
			currEditor.setResource(mmeFile);
			
			System.gc();
		}
		
		public function openTempDirectory():void
		{
			if(currTmpDir)
			{
				currTmpDir.openWithDefaultApplication();
//				var np:NativeProcess = new NativeProcess();
//				var npsi:NativeProcessStartupInfo = new NativeProcessStartupInfo();
//				npsi.executable = new File("c:/windows/explorer.exe");
//				npsi.arguments = new Vector.<String>;
//				npsi.arguments[0] = currTmpDir.nativePath;
//				np.start(npsi);
			}
		}
		
		protected function destroyEditor():void
		{
			if(currEditor)
			{
				CommandManager.getInstance().clear();
				if(currTmpDir)
				{
					try{
						currTmpDir.deleteDirectory(true);
					}catch(e:Error){};
				}
				currEditor.destroy();
				currEditor = null;
				currFile = null;
				currTmpDir = null;
				System.gc();
				Global.mainApp.setTitle("");
			}
		}
		
		public function closing(event:Event):void
		{
			if(currEditor)
			{
				if(currEditor.isDirty)
				{
					event.preventDefault();
					Alert.show("当前文件尚未保存，是否继续退出？","警告",Alert.YES|Alert.NO,null,function(ce:CloseEvent):void{
						switch(ce.detail)
						{
							case Alert.YES:
								NativeApplication.nativeApplication.exit();
								break;
						}
					});
				}
			}
		}
		
		public function close():void
		{
			if(currEditor)
			{
//				currEditor.save();
				if(currEditor.isDirty)
				{
					Alert.show("当前文件尚未保存，是否继续退出？","警告",Alert.YES|Alert.NO,null,function(ce:CloseEvent):void{
						switch(ce.detail)
						{
							case Alert.YES:
								destroyEditor();
								break;
						}
					});
					return;
				}
				destroyEditor();
			}
		}
		
		public function save():void
		{
			if(currEditor)
			{
				if(currFile)
				{
					saveFile(currFile);
				}else
				{
					saveAs();
				}
			}
		}
		
		public function saveAs():void
		{
			if(!currEditor)
			{
				return;
			}
			var saveFile:File = new File(currFile?currFile.nativePath:"/");
			saveFile.addEventListener(Event.SELECT,onSaveAsFile);
			saveFile.addEventListener(Event.CANCEL,onSaveAsFile);
			saveFile.browseForSave("另存为...");
		}
		
		private function onSaveAsFile(e:Event):void
		{
			var sf:File = e.currentTarget as File;
			sf.removeEventListener(Event.SELECT,onSaveAsFile);
			sf.removeEventListener(Event.CANCEL,onSaveAsFile);
			
			switch(e.type)
			{
				case Event.SELECT:
					if(sf.extension!="mme")
					{
						sf = new File(sf.nativePath+".mme");
					}
					currFile = sf;
					Global.mainApp.setTitle(currFile.nativePath);
					saveFile(sf);
					break;
				case Event.CANCEL:
					break;
			}
		}
		
		private function saveFile(file:File):void
		{
			new MmeFileEncode().encode(currEditor.getResource());
			
			
			try
			{
				if(file.exists)
				{
					file.deleteFile();
				}
			}catch(err:Error){
				Alert.show("保存失败\r#无法删除"+file.nativePath,"提示");
				return;
			}
				
				
			var np:NativeProcess = new NativeProcess();
			np.addEventListener(ProgressEvent.STANDARD_OUTPUT_DATA, onNativeProcess);
			np.addEventListener(ProgressEvent.STANDARD_ERROR_DATA, onNativeProcess);
			np.addEventListener(NativeProcessExitEvent.EXIT, onNativeProcess);
			np.addEventListener(IOErrorEvent.STANDARD_OUTPUT_IO_ERROR, onNativeProcess);
			np.addEventListener(IOErrorEvent.STANDARD_ERROR_IO_ERROR, onNativeProcess);
			
			var npsi:NativeProcessStartupInfo = new NativeProcessStartupInfo();
			npsi.executable = File.applicationDirectory.resolvePath("ext/7z.exe");
			npsi.arguments = new Vector.<String>;
			npsi.arguments.push("a");
			npsi.arguments.push(file.nativePath);
			npsi.arguments.push(currTmpDir.nativePath+"/*");
			npsi.arguments.push("-mx=0");
			np.start(npsi);
			
			ProgressWindow.getInstance().show("保存中...");
			
		}
		
		private function onNativeProcess(e:Event):void
		{
			switch(e.type)
			{
				case ProgressEvent.STANDARD_OUTPUT_DATA:
					break;
				case ProgressEvent.STANDARD_ERROR_DATA:
					break;
				case NativeProcessExitEvent.EXIT:
					var np:NativeProcess = e.currentTarget as NativeProcess;
					np.removeEventListener(ProgressEvent.STANDARD_OUTPUT_DATA, onNativeProcess);
					np.removeEventListener(ProgressEvent.STANDARD_ERROR_DATA, onNativeProcess);
					np.removeEventListener(NativeProcessExitEvent.EXIT, onNativeProcess);
					np.removeEventListener(IOErrorEvent.STANDARD_OUTPUT_IO_ERROR, onNativeProcess);
					np.removeEventListener(IOErrorEvent.STANDARD_ERROR_IO_ERROR, onNativeProcess);
					
					Alert.show("保存成功","提示");
					ProgressWindow.getInstance().hide();
					
					if(currEditor)
					{
						currEditor.clearAllDirty();
					}
					break;
				case IOErrorEvent.STANDARD_OUTPUT_IO_ERROR:
					break;
				case IOErrorEvent.STANDARD_ERROR_IO_ERROR:
					break;
			}
		}
		
		
	}
}