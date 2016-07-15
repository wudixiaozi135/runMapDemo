package com.tencent.morefun.naruto.plugin.motion.after
{
	import flash.display.Sprite;
	import flash.events.Event;

	public class BaseAfterEffect extends Sprite
	{
		public function BaseAfterEffect()
		{
			super();
		}
		
		public function render(scene:Sprite):void
		{
			
		}
		
		public function end():void
		{
			
		}
		
		public function complete():void
		{
			this.dispatchEvent(new Event(Event.COMPLETE));
		}
	
																				
		public function autoSetNull():void
		{

		}
	}
}