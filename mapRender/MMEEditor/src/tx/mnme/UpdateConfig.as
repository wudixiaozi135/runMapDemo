package tx.mnme
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.net.URLLoader;
	import flash.net.URLRequest;

	public class UpdateConfig
	{
		private var localPath:String;
		private var remotePath:String
		public var localXML:XML;
		private var doneFun:Function;
		
		private var loader:URLLoader;
		
		public function UpdateConfig(localPath:String,remotePath:String,doneFun:Function)
		{
			this.doneFun = doneFun;
			this.localPath = localPath;
			this.remotePath = remotePath;
			
			loadLocalXML();
			
			loader = new URLLoader();
			loader.addEventListener(Event.COMPLETE,onLoader);
			loader.addEventListener(IOErrorEvent.IO_ERROR,onLoader);
			loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onLoader);
			loader.load(new URLRequest(remotePath));
		}
		
		private function loadLocalXML():void
		{
			var file:File = File.applicationDirectory.resolvePath(localPath);
			if(file.exists)
			{
				var fileStream:FileStream = new FileStream();
				fileStream.open(file,FileMode.READ);
				var str:String = fileStream.readUTFBytes(fileStream.bytesAvailable);
				fileStream.close();
				
				localXML = new XML(str);
			}
		}
		
		protected function onLoader(event:Event):void
		{
			loader.removeEventListener(Event.COMPLETE,onLoader);
			loader.removeEventListener(IOErrorEvent.IO_ERROR,onLoader);
			loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onLoader);
			
			switch(event.type)
			{
				case Event.COMPLETE:
					checkVersion(new XML(loader.data));
					break;
				default:
					doneFun && doneFun(this);
			}
		}
		
		private function checkVersion(remoteXML:XML):void
		{
			if(localXML)
			{
				if(String(localXML.@version) != String(remoteXML.@version))
				{
					save(remoteXML);
				}else
				{
					doneFun && doneFun(this);
				}
			}else
			{
				save(remoteXML);
			}
		}
		
		private function save(remoteXML:XML):void
		{
			var file:File = new File(File.applicationDirectory.nativePath + "/template/event.xml");
			var fileStream:FileStream = new FileStream();
			fileStream.open(file,FileMode.WRITE);
			fileStream.writeUTFBytes(remoteXML);
			fileStream.close();
			
			localXML = remoteXML;
			
			doneFun && doneFun(this);
		}
		
		public function destroy():void
		{
			localXML = null;
			doneFun = null;
			
			loader.removeEventListener(Event.COMPLETE,onLoader);
			loader.removeEventListener(IOErrorEvent.IO_ERROR,onLoader);
			loader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,onLoader);
			try{
				loader.close();
			}catch(e:Error){}
			loader = null;
		}
	}
}