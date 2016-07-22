package tx.mnme.events
{
	import flash.events.Event;

	public class MmeAttributeEvent extends AttributeEvent
	{
		public static const CHANGE_POS:String = "changePos";
		public static const CHANGE_URL:String = "changeUrl";
		public static const CHANGE_ACTION:String = "changeAction";
		
		public function MmeAttributeEvent(type:String)
		{
			super(type);
		}
		
	}
}