package com.tencent.morefun.naruto.plugin.newplot.events
{
	import flash.events.Event;
	
	public class ActorEvent extends Event
	{
		public static const UPDATE_POSITION:String  ="updatePosition";
		public static const DESTROY:String  ="destroy";
		
		public static const UPDATE_POPUP_POSITION:String = "updatePopupPosition";
		
		public function ActorEvent(type:String)
		{
			super(type);
		}
	}
}