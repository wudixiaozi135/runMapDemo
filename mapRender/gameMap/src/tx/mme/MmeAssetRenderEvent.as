package tx.mme
{
	import flash.events.Event;

	public class MmeAssetRenderEvent extends Event
	{
		public static const READY:String = "ready";
		public static const LOAD_ERROR:String = "loadError";
		public static const FRAME_EVENT:String = "frameEvent";
		public static const PLAY_END:String = "playEnd";
		public static const FRAME_SOUND:String = "frameSound";
		
		/**
		 * 帧事件名称
		 */
		public var frameEvent:String;
		/**
		 * 帧事件参数
		 */
		public var param:String;
		
		/**
		 * 音效包ID 
		 */		
		public var sound:uint;
		
		/**
		 * 音效音量；0 ~ 100
		 */
		public var volume:uint;
		
		protected var stopUpdated:Boolean;
		
		public function MmeAssetRenderEvent(type:String, frameEvent:String=null)
		{
			if(frameEvent)
			{
				var i:int = frameEvent.indexOf(":");
				if(i==-1)
				{
					this.frameEvent = frameEvent;
				}else
				{
					this.frameEvent = frameEvent.substring(0,i);
					this.param = frameEvent.substr(i+1);
				}
			}
			super(type);
		}
		
		/**
		 * 使用manualEnterFrame时，当PLAY_END事件 被捕获时，停止原本的更新，从而节省不必要的更新
		 */		
		public function stopUpdate():void
		{
			stopUpdated = true;
		}
		
		
		public function get isStopUpdated():Boolean
		{
			return stopUpdated;
		}
	}
}