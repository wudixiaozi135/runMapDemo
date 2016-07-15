package ui
{
	import flash.display.DisplayObject;
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;
	
	public class LoadingManager extends EventDispatcher
	{
		private static var _isLoading:Boolean;
		
		private static var _hideLoadingCallBackMap:Dictionary = new Dictionary();
		private static var loadingView:DisplayObject;
		
		public function LoadingManager()
		{
			super();
		}
		
		public static function isLoading():Boolean
		{
			return _isLoading;
		}
		
		public static function hideLoadingCallBack(func:Function, data:Object):void
		{
			//var funcDataList:Array;
			//
			//funcDataList = _hideLoadingCallBackMap[func];
			//if(!funcDataList)
			//{
				//funcDataList = [];
				//_hideLoadingCallBackMap[func] = funcDataList;
			//}
			//
			//funcDataList.push(data);
		}
		
		public static function setLoadingView(view:DisplayObject):void
		{
			//LoadingManager.loadingView = map;
		}
		
		public static function showWaitLoading():void
		{
			//loadingView["showWaitLoading"]();
		}
		
		public static function hideWaitLoading():void
		{
			//loadingView["hideWaitLoading"]();
		}
		
		public static function showCountDownText():void
		{
			//loadingView["showCountDownText"]();
		}
		
		public static function hideCountDownText():void
		{
			//loadingView["hideCountDownText"]();
		}
		
		public static function setCountDownInfo(info:String):void
		{
			//loadingView["setCountDownInfo"](info);
		}
		
		public static function showWaitLoadingText():void
		{
			//loadingView["showWaitLoadingText"]();
		}
		
		public static function hideWaitLoadingText():void
		{
			//loadingView["hideWaitLoadingText"]();
		}
		
		public static function setWaitLoadingInfo(info:String):void
		{
			//loadingView["setWaitLoadingInfo"](info);
		}
		
		public static function showFullLoading():void
		{
			//_isLoading = true;
			//loadingView["showFullLoaidng"]();
			//setWaitLoadingInfo("");
		}
		
		public static function showFirstLoading():void
		{
			//_isLoading = true;
			//loadingView["showFirstLoading"]();
		}
		
		public static function hideFirstLoading():void
		{
			//_isLoading = false;
			//loadingView["hideFirstLoading"]();
		}
		
		private static var isLockFullLoading:Boolean;
		public static function set lockFullLoading(value:Boolean):void
		{
			//isLockFullLoading = value; 
		}
		
		public static function hideFullLoading():void
		{
			//if(!isLockFullLoading)
			//{
				//_isLoading = false;
				//loadingView["hideFullLoading"]();
				//callBackFunc();
			//}
		}
		
		public static function hideTotalText():void
		{
			//loadingView["hideTotalText"]();
		}
		
		public static function showLoading(mask:Boolean = true):void
		{
			//_isLoading = true;
			//loadingView["showLoading"](mask);
			//setWaitLoadingInfo("");
		}
		
		public static function hideLoading():void
		{
			//_isLoading = false;
			//loadingView["hideLoading"]();
			//callBackFunc();
		}
		
		public static function updateCurrentFile(cur:int):void
		{
			//loadingView["updateCurrentFile"](cur);
		}
		
		public static function updateFileProgress(cur:int, max:int):void
		{
			//loadingView["setTotalFile"](max);
			//loadingView["updateCurrentFile"](cur);
		}
		
		public static function showBusy():void
		{
			//loadingView["showBusyLoding"]();
		}
		
		public static function showBusyNoIcon():void
		{
			//loadingView["showBusyNoIcon"]();
		}
		
		public static function hideBusy():void
		{
			//loadingView["hideBusyLoading"]();
		}
		
		public static function setLoingString(value:String):void
		{
			//loadingView["setInfo"](value);
		}
		
		public static function setErrorLoingString(value:String):void
		{
			//loadingView["setErrorInfo"](value);
		}
		
		public static function setLoadingProgress(cur:int, max:int):void
		{
			//loadingView["setPercent"](cur, max);
		}
		
		private static function callBackFunc():void
		{
			//var funcDataList:Array;
			//
			//for(var func:* in  _hideLoadingCallBackMap)
			//{
				//funcDataList = _hideLoadingCallBackMap[func];
				//for each(var data:Object in funcDataList)
				//{
					//func(data);
				//}
			//}
			//
			//_hideLoadingCallBackMap = new Dictionary();
		}
	}
}