package utils
{
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.utils.ByteArray;
	
	import mx.graphics.codec.JPEGEncoder;
	import mx.graphics.codec.PNGEncoder;

	/**
	 * 文件操作工具函数
	 * @author	Fictiony
	 * @version	2016/7/16
	 */	
	public class FileUtils
	{
		/**
		 * 读取文本数据
		 */		
		static public function readTextFile( f:File ):String
		{
			var fs:FileStream = new FileStream;
			fs.open(f, FileMode.READ);
			var text:String = fs.readUTFBytes(fs.bytesAvailable);
			fs.close();
			return text;
		}

		/**
		 * 写入文本数据
		 */		
		static public function writeTextFile( f:File, text:String ):void
		{
			var fs:FileStream = new FileStream;
			fs.open(f, FileMode.WRITE);
			fs.writeUTFBytes(text);
			fs.close();
		}

		/**
		 * 读取二进制数据
		 */		
		static public function readBinFile( f:File ):ByteArray
		{
			var fs:FileStream = new FileStream;
			fs.open(f, FileMode.READ);
			var bytes:ByteArray = new ByteArray;
			fs.readBytes(bytes);
			fs.close();
			return bytes;
		}

		/**
		 * 写入二进制数据
		 */		
		static public function writeBinFile( f:File, bytes:ByteArray ):void
		{
			var fs:FileStream = new FileStream;
			fs.open(f, FileMode.WRITE);
			fs.writeBytes(bytes);
			fs.close();
		}

		/**
		 * 读取JSON文件
		 */		
		static public function readJSONFile( f:File ):Object
		{
			return JSON.parse(readTextFile(f));
		}

		/**
		 * 写入JSON文件
		 */		
		static public function writeJSONFile( f:File, json:Object ):void
		{
			writeTextFile(f, JSON.stringify(json));
		}

		/**
		 * 读取XML文件
		 */		
		static public function readXMLFile( f:File ):XML
		{
			return XML(readTextFile(f));
		}

		/**
		 * 写入XML文件
		 */		
		static public function writeXMLFile( f:File, xml:XML ):void
		{
			writeTextFile(f, xml.toString());
		}

		/**
		 * 读取图片文件（异步）
		 * @param callback	加载完成后的回调函数，格式为：function( image:DisplayObject ):void
		 */		
		static public function readImageFile( f:File, callback:Function ):void
		{
			var ld:Loader = new Loader;
			ld.contentLoaderInfo.addEventListener(Event.COMPLETE,
				function( e:Event ):void
				{
					callback(ld.content);
				}
			);
			var bytes:ByteArray = readBinFile(f);
			ld.loadBytes(bytes);
		}

		/**
		 * 写入PNG图片文件
		 */		
		static public function writePNGFile( f:File, bmp:BitmapData ):void
		{
			var encoder:PNGEncoder = new PNGEncoder;
			writeBinFile(f, encoder.encode(bmp));
		}

		/**
		 * 写入JPG图片文件
		 */		
		static public function writeJPGFile( f:File, bmp:BitmapData, quality:Number=80 ):void
		{
			var encoder:JPEGEncoder = new JPEGEncoder(quality);
			writeBinFile(f, encoder.encode(bmp));
		}
	}
}