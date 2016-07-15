package ui
{
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	public class GlobelUIManager extends EventDispatcher
	{
		private static var busyHandler:Function;
		private static var systemLoadHanlder:Function;
		private static var systemAlterHandler:Function;
		private static var commondHanlder:Function;
		
		public function GlobelUIManager(target:IEventDispatcher=null)
		{
			super(target);
		}
		
		public static function setSystemLoadHandler(handler:Function):void
		{
			systemLoadHanlder = handler;
		}
		
		public static function setCommondLoadingHandler(handler:Function):void
		{
			commondHanlder = handler;
		}
		
		public static function setBusyHandler(handler:Function):void
		{
			busyHandler = handler;
		}
		
		public static function setSystemAlter(handler:Function):void
		{
			systemAlterHandler = handler;
		}
		
		public static function showSystemAlter(content:String):void
		{
			systemLoadHanlder(content, true);
		}
		
		public static function hideSystemAlter():void
		{
			systemLoadHanlder(false);
		}
		
		public static function showSystemLoading():void
		{
			systemLoadHanlder(true);
		}
		
		public static function hideSystemLoading():void
		{
			systemLoadHanlder(false);
		}
		
		public static function showBusy():void
		{
			busyHandler(true);
		}
		
		public static function hideBusy():void
		{
			busyHandler(false);
		}
	}
}