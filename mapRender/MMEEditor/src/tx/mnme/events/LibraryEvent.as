package tx.mnme.events
{
	import flash.events.Event;
	import flash.filesystem.File;
	
	public class LibraryEvent extends Event
	{
		public static const ADD_MULTI_TO_ACTIVE_AREA:String = "addMultiToActiveArea";
//		public static const ADD_TO_ACTIVE_AREA:String = "addToActiveArea";
		public static const ADD_MME_TO_ACTION_AREA:String = "addMmeToActiveArea";
		public static const REMOVE_FILE:String = "removeFile";
		
		public static const DRAG_TO_ACTIVE_AREA:String = "dragToActiveArea";
		
		public static const GET_USED_IMAGE_NAMES:String = "getUsedImageNames";
		public var rsUsedImageNames:Vector.<String>;
		
		public var file:File;
//		public var id:int;
//		public var libItem:LibraryItem;
		public var multFiles:Vector.<File>;
		
		public function LibraryEvent(type:String,file:File)
		{
			super(type);
			
//			this.libItem = item;
			this.file = file;
		}
	}
}