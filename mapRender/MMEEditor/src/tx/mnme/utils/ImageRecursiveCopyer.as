package tx.mnme.utils
{
	import flash.events.Event;
	import flash.filesystem.File;

	public class ImageRecursiveCopyer
	{
		public var doneFun:Function;
		public var progressFun:Function;
		public var skips:Array;
		
		private var sourceDir:File;
		private var targetDir:File;
		private var imageNames:Array;
		private var index:int;
		private var dirlist:Object = {};
		
		
		public function ImageRecursiveCopyer()
		{
		}
		
		public function copy(sourceDir:File,targetDir:File,imageNames:Array):void
		{
			this.sourceDir = sourceDir;
			this.targetDir = targetDir;
			this.imageNames = imageNames;
			this.skips = [];
			
			next();
		}
		
		private function findFile(file:File,name:String):File
		{
			if(file.isDirectory)
			{
				var list:Array = dirlist[file.name];
				if(!list)
				{
					dirlist[file.name] = list = file.getDirectoryListing();
				}
				for each(var f:File in list)
				{
					var ff:File = findFile(f,name);
					if(ff)
					{
						return ff;
					}
				}
			}else
			{
				if(file.name == name)
				{
					return file;
				}
			}
			
			return null;
		}
		
		private function next():void
		{
			index++;
			progressFun(index,imageNames.length);
			
			if(index >= imageNames.length)
			{
				doneFun(this);
				destroy();
			}else
			{
				var f:File = findFile(sourceDir,imageNames[index]);
				if(f)
				{
					f.addEventListener(Event.COMPLETE,onCopyToAsync);
					f.copyToAsync(targetDir.resolvePath(f.name),true);
				}else
				{
					skips.push(imageNames[index]);
					next();
				}
			}
		}
		
		protected function onCopyToAsync(event:Event):void
		{
			var f:File = event.currentTarget as File;
			f.removeEventListener(Event.COMPLETE,onCopyToAsync);
			next();
		}
		
		
		public function destroy():void
		{
			doneFun = null;
			progressFun = null;
			
			sourceDir = null;
			targetDir = null;
			imageNames = null;
			dirlist = null;
		}
		
	}
}