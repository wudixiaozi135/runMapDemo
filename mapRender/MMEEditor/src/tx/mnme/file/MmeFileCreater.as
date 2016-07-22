package tx.mnme.file
{
	import com.tencent.morefun.naruto.tools.mmefile.MmeFile;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.MmeData;
	
	import flash.filesystem.File;
	import flash.filesystem.FileMode;
	import flash.filesystem.FileStream;
	import flash.utils.ByteArray;

	public class MmeFileCreater
	{
		public var mmeFile:MmeFile;
		
		public function MmeFileCreater()
		{
		}
		
//		public function create():void
//		{
//			mmeFile = new MmeFile();
//			mmeFile.data = new MmeData();
//			mmeFile.data.actionDatas = new Vector.<ActionData>;
//			
//			var ad:ActionData = new ActionData();
//			ad.name = "动作1";
//			ad.layerDatas = new Vector.<LayerData>;
//			
//			var ld:LayerData = new LayerData();
//			ld.frameDatas = new Vector.<FrameData>;
//			
//			var fd:FrameData = new FrameData();
//			fd.setLength(1);
//			ld.frameDatas.push(fd);
//			
//			ad.layerDatas.push(ld);
//			
//			mmeFile.data.actionDatas.push(ad);
//			
//			mmeFile.zip = new FZip();
//		}
		
		public function createNormal():void
		{
			var file:File = new File(File.applicationDirectory.nativePath+"/template/normal.xml");
			loadFile(file);
		}
		
		public function createRole():void
		{
			var file:File = new File(File.applicationDirectory.nativePath+"/template/role.xml");
			loadFile(file);
		}
		
		public function createEffect():void
		{
			var file:File = new File(File.applicationDirectory.nativePath+"/template/effect.xml");
			loadFile(file);
		}
		
		private function loadFile(file:File):void
		{
			if(!file.exists)
			{
				return;
			}
			var fs:FileStream = new FileStream();
			fs.open(file,FileMode.READ);
			var bytes:ByteArray = new ByteArray();
			fs.readBytes(bytes);
			fs.close();
			
			var xml:XML = new XML(bytes);
			var mmeData:MmeData = new MmeData();
			mmeData.decode(xml);
			
			this.mmeFile = new MmeFile();
			this.mmeFile.data = mmeData;
		}
	}
}