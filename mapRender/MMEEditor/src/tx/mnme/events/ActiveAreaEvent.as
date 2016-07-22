package tx.mnme.events
{
	import tx.mnme.views.panels.activearea.BaseItem;
	
	import flash.events.Event;
	
	public class ActiveAreaEvent extends Event
	{
		public static const SELECT:String = "select";
		public static const UNSELECT:String = "unselect";
		public static const UPDATE_ATTRIBUTE:String = "updateAttribute";
		public static const DELETE:String = "delete";
		public static const UN_DELETE:String = "unDelete";
		public static const GET_LIBRARY_FILE:String = "getLibraryFile";
		public static const CAN_SELECT_ELEMENT:String = "canSelectElement";
		public static const CHANGE_BACKGROUND_COLOR:String = "changeBackgroundColor";
		
		public static const ADD_POINT_ITEM:String = "addPointItem";
		
		public var baseItem:BaseItem;
		public var canSelectElement:Boolean = false;
		
		public function ActiveAreaEvent(type:String,baseItem:BaseItem)
		{
			super(type);
			this.baseItem = baseItem;
		}
	}
}