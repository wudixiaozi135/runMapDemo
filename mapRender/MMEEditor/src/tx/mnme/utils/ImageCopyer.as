package tx.mnme.utils
{
	import flash.desktop.NativeProcess;
	import flash.desktop.NativeProcessStartupInfo;
	import flash.events.NativeProcessExitEvent;
	import flash.filesystem.File;

	public class ImageCopyer
	{
		public var doneFun:Function;
		
		public function ImageCopyer()
		{
		}
		
		public function copy(sourceDir:File,targetDir:File,names:Array):void
		{
			var npsi:NativeProcessStartupInfo = new NativeProcessStartupInfo();
			//兼容老版本，把根目录的图片移进images下
			npsi.executable = File.applicationDirectory.resolvePath("ext/robocopy.exe");
			npsi.arguments = new Vector.<String>;
			npsi.arguments.push(sourceDir.nativePath);
			npsi.arguments.push(targetDir.nativePath);
			
			for each(var name:String in names)
			{
				npsi.arguments.push(name);
			}
			npsi.arguments.push("/move");
			
			var np:NativeProcess = new NativeProcess();
			
			np.addEventListener(NativeProcessExitEvent.EXIT,onExit2);
			np.start(npsi);
		}
		
		protected function onExit2(event:NativeProcessExitEvent):void
		{
			var np:NativeProcess = event.currentTarget as NativeProcess;
			np.removeEventListener(NativeProcessExitEvent.EXIT,onExit2);
			
			doneFun && doneFun(this);
		}
	}
}