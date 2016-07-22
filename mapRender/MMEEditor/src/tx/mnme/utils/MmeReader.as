package tx.mnme.utils
{
	import com.tencent.morefun.naruto.tools.mmefile.MmeFile;
	import com.tencent.morefun.naruto.tools.mmefile.MmeFileDecode;
	
	import flash.desktop.NativeProcess;
	import flash.desktop.NativeProcessStartupInfo;
	import flash.events.NativeProcessExitEvent;
	import flash.filesystem.File;

	public class MmeReader
	{
		public var source:File;
		public var mmeFile:MmeFile;
		public var doneFun:Function;
		public var errFun:Function;
		
		private var tmpDir:File;
		
		public function MmeReader()
		{
		}
		
		
		public function read(path:String):void
		{
			source = new File(path);
			if(source.exists)
			{
				decompress();
			}else
			{
				errFun && errFun();
			}
		}
		
		private function decompress():void
		{
			tmpDir = File.createTempDirectory();
			var npsi:NativeProcessStartupInfo = new NativeProcessStartupInfo();
			npsi.executable = File.applicationDirectory.resolvePath("ext/7z.exe");
			npsi.arguments = new Vector.<String>;
			npsi.arguments.push("x");
			npsi.arguments.push(source.nativePath);
			npsi.arguments.push("-o"+tmpDir.nativePath);
			
			var np:NativeProcess = new NativeProcess();
			np.addEventListener(NativeProcessExitEvent.EXIT,onExit);
			np.start(npsi);
			
			
		}
		
		protected function onExit(event:NativeProcessExitEvent):void
		{
			var np:NativeProcess = event.currentTarget as NativeProcess;
			
			np.removeEventListener(NativeProcessExitEvent.EXIT,onExit);
			
			var mmeFileDecode:MmeFileDecode = new MmeFileDecode();
			try
			{
				mmeFile = mmeFileDecode.decode(tmpDir);
			}catch(err:Error)
			{
				errFun && errFun();
				return;
			}
			doneFun && doneFun(this);
		}
		
	}
}