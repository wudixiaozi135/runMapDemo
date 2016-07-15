package
{
	import flash.events.EventDispatcher;
	import flash.utils.Dictionary;

	public class EventCenter extends EventDispatcher
	{
		private static var frameEventMap:Dictionary = new Dictionary();
		private static var targetProxyMap:Dictionary = new Dictionary();

		public function EventCenter()
		{
			super();
		}

		public static function addEventHandler(target:Object, event:String, handler:Function, ignoreTarget:Boolean = false):void
		{
			var targetMap:Dictionary;
			var handlerList:Array;

			targetMap = frameEventMap[target];
			if (targetMap == null)
			{
				targetMap = new Dictionary();
				frameEventMap[target] = targetMap;
			}

			handlerList = targetMap[event];
			if (handlerList == null)
			{
				handlerList = new Array();
				targetMap[event] = handlerList;
			}

			if (getHandlerInfo(handlerList, handler) == null)
			{
				handlerList.push({handler: handler, ignoreTarget: ignoreTarget});
			}
		}

		private static function getHandlerInfo(handlerList:Array, handler:Function):Object
		{
			for each(var handlerInfo:Object in handlerList)
			{
				if (handlerInfo.handler == handler)
				{
					return handlerInfo;
				}
			}

			return null;
		}

		public static function addEventProxy(sourceTarget:Object, destTarget:Object):void
		{
			var destTargetMap:Dictionary;
			var sourceTargetMap:Dictionary;
			var event:String;

			targetProxyMap[sourceTarget] = destTarget;

			sourceTargetMap = frameEventMap[sourceTarget];
			if (sourceTargetMap == null)
			{
				return;
			}

			destTargetMap = frameEventMap[destTarget];
			if (destTargetMap == null)
			{
				destTargetMap = new Dictionary();
				frameEventMap[destTarget] = destTargetMap;
			}
		}

		public static function removeEventProxy(sourceTarget:Object):void
		{
			var sourceTargetMap:Dictionary;

			delete targetProxyMap[sourceTarget];
		}

		public static function removeEventHandler(target:Object, event:String, handler:Function):void
		{
			var targetMap:Dictionary;
			var handlerList:Array;
			var handlerListInfo:Object;
			var proxyTarget:Object;

			targetMap = frameEventMap[target];
			if (targetMap == null)
			{
				return;
			}

			handlerList = targetMap[event];
			if (handlerList == null)
			{
				return;
			}

			handlerListInfo = getHandlerInfo(handlerList, handler);
			if (handlerListInfo != null)
			{
				handlerList.splice(handlerList.indexOf(handlerListInfo), 1);
			}
		}

		public static function executeHandler(target:Object, event:String, arg:Object = null):void
		{
			var targetMap:Dictionary;
			var handlerList:Array;
			var ignoreTarget:Boolean;
			var proxyTarget:Object;
			var handler:Function;

			proxyTarget = checkProxy(target);
			if (proxyTarget != target)
			{
				executeHandler(proxyTarget, event, arg);
			}

			targetMap = frameEventMap[target];
			if (targetMap == null)
			{
				return;
			}

			handlerList = targetMap[event];
			if (handlerList == null)
			{
				return;
			}

			handlerList = handlerList.concat();
			for each(var handlerListInfo:Object in handlerList)
			{
				handler = handlerListInfo.handler;
				ignoreTarget = handlerListInfo.ignoreTarget;
				if (ignoreTarget)
				{
					if (arg != null)
					{
						handler(arg);
					}
					else
					{
						handler();
					}
				}
				else
				{
					if (arg != null)
					{
						handler(target, arg);
					}
					else
					{
						handler(target);
					}

				}
			}
		}

		public static function destroy():void
		{
			frameEventMap = new Dictionary();
			targetProxyMap = new Dictionary();
		}

		private static function checkProxy(target:Object):Object
		{
			var proxyTarget:Object;

			proxyTarget = targetProxyMap[target];
			if (proxyTarget != null)
			{
				return proxyTarget;
			}

			return target;
		}


		public function autoSetNull():void
		{

			frameEventMap = null;
			targetProxyMap = null;
		}
	}
}