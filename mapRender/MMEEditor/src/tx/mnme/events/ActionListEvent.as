package tx.mnme.events
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.ActionData;
	
	import flash.events.Event;
	import flash.filesystem.File;
	
	public class ActionListEvent extends Event
	{
		public static const SELECT:String = "select";
		public static const REMOVE:String = "remove";
		
		public static const CAN_IMPORT_FOLDER:String = "canImportFolder";
		public static const IMPORT_FOLDER:String = "importFolder";
		public static const UN_IMPORT_FOLDER:String = "unImportFolder";
		
		public var actionData:ActionData;
		
		public var folder:File;
		
		public var isManual:Boolean = false;
		
		public function ActionListEvent(type:String)
		{
			super(type,false,true);
		}
	}
}