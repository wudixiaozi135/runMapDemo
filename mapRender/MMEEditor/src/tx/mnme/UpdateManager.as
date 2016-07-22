package tx.mnme
{
	import flash.desktop.NativeApplication;
	import flash.desktop.NativeProcess;
	import flash.desktop.NativeProcessStartupInfo;
	import flash.desktop.Updater;
	import flash.errors.IOError;
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.SecurityErrorEvent;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLStream;
	import flash.utils.ByteArray;
	
	import mx.controls.Alert;
	import mx.events.CloseEvent;
	import mx.events.FlexEvent;

	public class UpdateManager
	{
		private var urlLoader:URLLoader;
		private var url:String;
		private var xml:XML;
		private var currVersion:String;
		
		private var urlStream:URLStream;
		
		public function UpdateManager(url:String,autoCheck:Boolean)
		{
			this.url = url;
			initURLLoader();
			
			var appDesc:XML = XML(String(NativeApplication.nativeApplication.applicationDescriptor));
			var ns:Namespace = appDesc.namespace();
			currVersion = appDesc.ns::versionNumber.text();
			
			if(autoCheck)
			{
				check();
			}
		}
		
		private function initURLLoader():void
		{
			urlLoader = new URLLoader();
			urlLoader.addEventListener(Event.COMPLETE,onURLLoader);
			urlLoader.addEventListener(IOErrorEvent.IO_ERROR,onURLLoader);
			urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onURLLoader);
		}
		
		private function onURLLoader(e:Event):void
		{
			switch(e.type)
			{
				case Event.COMPLETE:
					xml = new XML(urlLoader.data);
					checkVersion();
					break;
			}
		}
		
		private function checkVersion():void
		{
			var targetVersion:String = xml.@version;
			if(targetVersion != currVersion && targetVersion!="")
			{
				var msg:String = "发现新版本："+targetVersion+"\r";
				var targetDesc:String = xml.@descript;
				if(targetDesc)
				{
					msg += "描述：\r" + targetDesc + "\r\t\t\t\t\t\t\t";
				}
				
				var alert:Alert = Alert.show(msg,"是否更新",Alert.YES|Alert.NO,null,function(ce:CloseEvent):void{
					if(ce.detail == Alert.YES)
					{
						loadUpdateFile();
					}
				});
				alert.addEventListener(FlexEvent.CREATION_COMPLETE, onAlert);
				function onAlert(e:Event):void
				{
					alert.removeEventListener(FlexEvent.CREATION_COMPLETE,onAlert);
					alert.y = Math.max(0,alert.y-150);
				}
				
			}
		}
		
		private function loadUpdateFile():void
		{
			var path:String = xml.@path;
			if(!urlStream)
			{
				urlStream = new URLStream();
				urlStream.addEventListener(Event.COMPLETE,onUrlStream);
				urlStream.addEventListener(IOErrorEvent.IO_ERROR,onUrlStream);
				urlStream.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onUrlStream);
			}else
			{
				try{
					urlStream.close();
				}catch(e:IOError){}
			}
			
			urlStream.load(new URLRequest(path));
		}
		
		private function onUrlStream(e:Event):void
		{
			switch(e.type)
			{
				case Event.COMPLETE:
					var bytes:ByteArray = new ByteArray();
					urlStream.readBytes(bytes);
					saveUpdateFile(bytes);
					break;
				case IOErrorEvent.IO_ERROR:
				case SecurityErrorEvent:
					Alert.show("更新失败","提示");
					break;
			}
		}
		
		private function saveUpdateFile(bytes:ByteArray):void
		{
			var type:String = String(xml.@type) || "air";
			if(type!="air" && type!="exe")
			{
				return;
			}
			var file:File = File.applicationStorageDirectory.resolvePath("Update."+type);
			var fileStream:FileStream = new FileStream();
			fileStream.addEventListener(Event.CLOSE, savedUpdateAir);
			fileStream.openAsync(file, FileMode.WRITE);
			fileStream.writeBytes(bytes, 0, bytes.length);
			fileStream.close();
		}
		
		private function savedUpdateAir(event:Event):void
		{
			var type:String = String(xml.@type) || "air";
			
			var file:File = File.applicationStorageDirectory.resolvePath("Update."+type);
			if(type=="air")
			{
				var update:Updater = new Updater();
				update.update(file,xml.@version);
			}else if(type=="exe")
			{
				var npsi:NativeProcessStartupInfo = new NativeProcessStartupInfo();
				npsi.executable = file;
				var np:NativeProcess = new NativeProcess();
				np.start(npsi);
				
				Global.mainApp.exit();
			}
		}
		
		public function check():void
		{
			urlLoader.load(new URLRequest(url));
		}
	}
}