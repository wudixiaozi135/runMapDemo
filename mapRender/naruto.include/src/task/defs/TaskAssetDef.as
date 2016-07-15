package task.defs
{
	import com.tencent.morefun.framework.loader.FileManager;

	public class TaskAssetDef
	{
		public static const TASK_NPC:String = "task_npc";
		public static const TASK_IMAGE:String = "task_image";
		
		public function TaskAssetDef()
		{
		}
		
		public static function getAsset(key:String,arg:Object):String
		{
			switch(key)
			{
				case TASK_NPC:
					return FileManager.getQualifiedUrl("assets/task/tasknpc/"+arg+".swf");
					break;
				case TASK_IMAGE:
					return FileManager.getQualifiedUrl("assets/task/images/"+arg+".png");
					break;
			}
			return null;
		}
	}
}