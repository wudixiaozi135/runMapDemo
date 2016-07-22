package tx.sce.tools
{
	import flash.events.Event;
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.utils.ByteArray;
	import flash.utils.setTimeout;
	
	import mx.controls.Alert;

	public class MyZip
	{
		private var folder:File;
		
		public function MyZip()
		{
			var i:int = 0;
			folder = new File(File.applicationDirectory.nativePath+"\\tmpZip"+i);
			while (folder.exists)
			{
				i++;
				folder = new File(File.applicationDirectory.nativePath+"\\tmpZip"+i);
			}
			folder.createDirectory();
		}
		
		public function getFileCount():int
		{
			return folder.getDirectoryListing().length;
		}
		
		public function getFileAt(index:int):File
		{
			var file:File = folder.getDirectoryListing()[index];
			return file;
		}
		
		public function getFileByName(name:String):File
		{
			var file:File = folder.resolvePath(name);
			return (file.exists)? file :null;
		}
				
		public function addFile(file:File):void
		{
			var destFile:File = folder.resolvePath(file.name);
			file.copyTo(destFile);
		}
		
		public function addFileFromString(name:String, content:String):void
		{
			var stream:FileStream = new FileStream();
			var file:File = new File(folder.nativePath+"\\"+name);
			try
			{
				stream.open(file,FileMode.WRITE);
				stream.writeUTFBytes(content);
				stream.close();
			} 
			catch(err:Error) 
			{
				Alert.show("file failed:"+err.toString(),"error");
				trace(err);
			}
		}
		
		public function removeFileAt(index:int):void
		{
			var file:File = folder.getDirectoryListing()[index];
			file.deleteFile();
		}
		
		public function getFolderPath():String
		{
			return folder.nativePath;
		}
		
		public function getFileList():Array
		{
			return folder.getDirectoryListing();
		}
		
		public function destroy():void
		{
			folder.deleteDirectory(true);
		}
	}
}