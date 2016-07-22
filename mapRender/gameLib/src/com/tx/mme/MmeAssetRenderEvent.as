package com.tx.mme
{
	import com.tx.mme.data.SoundData;

	import flash.events.Event;

	/**
	 * 资源渲染事件
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class MmeAssetRenderEvent extends Event
	{
		/** 资源已准备好 */
		public static const READY:String = "ready";
		/** 资源加载错误 */
		public static const LOAD_ERROR:String = "loadError";
		/** 每帧执行 */
		public static const FRAME_EVENT:String = "frameEvent";
		/** 动作播放结束 */
		public static const PLAY_END:String = "playEnd";
		/** 动作帧内的声音 */
		public static const FRAME_SOUND:String = "frameSound";

		protected var stopUpdated:Boolean;	//是否停止更新

		/**
		 * 构造函数
		 * @param type
		 * @param frameEvent
		 *
		 */
		public function MmeAssetRenderEvent(type:String, frameEvent:String = null)
		{
			if (frameEvent)
			{
				var i:int = frameEvent.indexOf(":");
				if (i == -1)
				{
					this.frameEvent = frameEvent;
				}
				else
				{
					this.frameEvent = frameEvent.substring(0, i);
					this.param = frameEvent.substr(i + 1);
				}
			}
			super(type);
		}

		/** 帧事件名称 */
		public var frameEvent:String;
		/** 帧事件参数 */
		public var param:String;

		/** 音效信息 */
		public var sound:SoundData;

		/**
		 * 设置停止更新（使用manualEnterFrame时，当PLAY_END事件 被捕获时，停止原本的更新，从而节省不必要的更新）
		 *
		 */
		public function stopUpdate():void
		{
			this.stopUpdated = true;
		}

		/**
		 * 获取是否停止更新（使用manualEnterFrame时，当PLAY_END事件 被捕获时，停止原本的更新，从而节省不必要的更新）
		 * @return
		 *
		 */
		public function get isStopUpdated():Boolean
		{
			return this.stopUpdated;
		}
	}
}