package com.tencent.morefun.naruto.plugin.motion.manager.scene.event
{
	import flash.events.Event;

	public class SceneEvent extends Event
	{
		static public const MOVE_COMPLETE:String = "move_complete";//移动完成
		static public const ALPHA_CHANGED:String = "alphaChanged";
		static public const SCENE_MASK:String = "scene_changed";//状�?变更完成
		public var id:int;
		
		public function SceneEvent(type:String,id:int,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			this.id = id;
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

		}
	}
}