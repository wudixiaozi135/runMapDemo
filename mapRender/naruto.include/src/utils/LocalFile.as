package utils
{
	import flash.display.Bitmap;
	import flash.display.Loader;
	
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IOErrorEvent;
	import flash.events.ProgressEvent;
	import flash.net.FileFilter;
	import flash.net.FileReference;
	import flash.utils.ByteArray;
	
	/**
	 * ...
	 * @author Devin Lee
	 */
	/**=============================Devin Lee===================================**

private var _file:LocalFile;

_file = new LocalFile;

private function browse():void{		//*in mouse event handle process!
	_file.read(onBitmapLoad,null,"jpg","png");
}
private function onBitmapLoad(data:Object):void
{
	var bitmap:Bitmap = data as Bitmap;
	addChild(bitmap);
}

_file.write(byteArray, "fileName.lee");

	**=============================Devin Lee=====================================**/
	[Event(name = "complete", type = "flash.events.Event") ]
	[Event(name = "progress", type = "flash.events.ProgressEvent") ]
	[Event(name = "ioError", type = "flash.events.IOErrorEvent") ]
	
	public class LocalFile extends EventDispatcher
	{
		public static const ImageFilter:FileFilter = new FileFilter("Images (*.jpg, *.jpeg, *.gif, *.png)", "*.jpg;*.jpeg;*.gif;*.png");
		public static const AudioFilter:FileFilter = new FileFilter("Audios (*.wav, *.mp3)", "*.wav;*.mp3");
		
		public static function write(data:ByteArray, name:String):LocalFile {
			var f:LocalFile = new LocalFile;
			f.write(data, name);
			return f;
		}
		public var data:ByteArray;
		public var parsedData:Object;
		
		
		private var _file:FileReference;
		private var _onSuccess:Function;
		private var _onError:Function;
		private var _fileFilter:Array;
		private var _needParse:Boolean;
		private var _extensions:Array;
		private var _isRead:Boolean;
		public function LocalFile() 
		{
			_file = new FileReference;
			
			_file.addEventListener(Event.SELECT, onSelect);
		//	_file.addEventListener(Event.CANCEL, onCancel);
			_file.addEventListener(ProgressEvent.PROGRESS, onProgress);
			_file.addEventListener(Event.COMPLETE, onComplete);
		}
		
		private function onProgress(e:ProgressEvent):void 
		{
			dispatchEvent(e);
		}
		public function write(data:Object, name:String = null):void {
			reset();
			_isRead = false;
			_file.save(data, name);
		}
		
		private function reset():void 
		{
			_file.cancel();
			_onSuccess = null;
			_onError = null;
			_fileFilter = null;
			_extensions = null;
		}
		
		public function read(onSuccess:Function=null,onError:Function=null,...extensions):void 
		{
			reset();
			_isRead = true;
			data = null;
			parsedData = null;
			_extensions = extensions;
			_onError = onError;
			_onSuccess = onSuccess;
			
			if(extensions.length>0){
				var i:int, l:int;
				var description:String = "All (", extension:String = "";
				for (i = 0,l = extensions.length; i < l; i++) 
				{
					extensions[i] = extensions[i].toLowerCase();
					if(i==0){
						description += "*." + extensions[i];
						extension += "*." + extensions[i];
					}else {
						description += ",*." + extensions[i];
						extension += ";*." + extensions[i];
					}
				}
				description += ")";
				_fileFilter = [];
				_fileFilter.push(new FileFilter(description, extension));
			}
			_file.browse(_fileFilter);
		}
		public function readAndParse(onSuccess:Function=null,onError:Function=null,...extensions):void 
		{
			_needParse = true;
			read.apply(this, [onSuccess, onError].concat(extensions));
		}
		private function onSelect(e:Event):void 
		{
			if(_isRead){
				try{
					_file.load();
				}catch (e:Error) {
					dispatchError("error:_file.load error!");
				}
			}else {
			}
		}
		private function onComplete(e:Event):void 
		{
			if(_isRead){
				data = _file.data;
				if (_needParse) {
					if(_extensions.indexOf("jpg")>-1 ||_extensions.indexOf("jpeg")>-1 ||_extensions.indexOf("png")>-1 ||_extensions.indexOf("swf")>-1){
						var loader:Loader = new Loader;
						loader.contentLoaderInfo.addEventListener(Event.COMPLETE, onLoaderComplete);
					//	loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, onLoaderIOError);
					//	echoHex(_file.data, 0, _file.data.length);
						try{
							loader.loadBytes(_file.data);
						}catch (e:Error) {
							dispatchError("error:loader.loadBytes error!");
						}
					}else if (_extensions.indexOf("xml") > -1) {
						var xml:XML = XML(data.readUTFBytes(data.bytesAvailable));
						dispatchComplete(xml);
					}else if (_extensions.indexOf("txt") > -1) {
						var str:String = data.readUTFBytes(data.bytesAvailable);
						dispatchComplete(str);
					}else {
						dispatchComplete(data);
					}
				}else {
					dispatchComplete(data);
				}
			}else {
				trace("Write Complete!");
			}
		}
		private function onLoaderComplete(e:Event):void 
		{
		//	trace("onLoadComplete!");
			if(_extensions.indexOf("jpg")>-1 ||_extensions.indexOf("jpeg")>-1 ||_extensions.indexOf("png")>-1){
				var bitmap:Bitmap = e.target.content as Bitmap;
				if (!bitmap) {
					dispatchError("error:not a bitmap!");
					return;
				}
				parsedData = bitmap;
				dispatchComplete(bitmap);
			}else if (_extensions.indexOf("swf") > -1) {
				var sprite:Sprite = e.target.content as Sprite;
				if (!sprite) {
					dispatchError("error:not a sprite!");
					return;
				}
				parsedData = sprite;
				dispatchComplete(sprite);
			}
		}
		private function dispatchComplete(obj:Object):void {
			if (_onSuccess != null) {
				_onSuccess(obj);
			}else {
				dispatchEvent(new Event(Event.COMPLETE));
			}
		}
		private function dispatchError(message:String = ""):void {
			message = "##LocalFile: " + message;
			trace(message);
			
			if (_onError != null) {
				_onError(message);
			}else{
				dispatchEvent(new IOErrorEvent(IOErrorEvent.IO_ERROR, false, false, message));
			}
		}
		public function get size():Number {
			return _file.size;
		}
		public function get name():String {
			return _file.name;
		}
		
		public function get fileFilter():Array { return _fileFilter; }
		public function set fileFilter(value:Array):void 
		{
			_fileFilter = value;
		}
	}

}