package tx.sce.data
{
	
	import tx.sce.tools.MyZip;
	
	import flash.filesystem.File;

	public class ProjectData
	{
		public var file:File;
		public var dataZip:MyZip;
		public var isDirty:Boolean;
		
		public function ProjectData(_file:File = null, fzip:MyZip= null)
		{
			file = _file;
			dataZip = fzip;
			isDirty = false;
		}
		
	}
}