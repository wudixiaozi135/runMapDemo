package com.tencent.morefun.naruto.plugin.motion.data
{

	public class BubbleDialogueData
	{
		public var dialogue:String = "";//冒泡的内容
		public var existTime:uint = 0;
		public var lastTime:uint = 0;
		public var pos:Array = [];//冒泡的忍者
	
															
		public function autoSetNull():void
		{

			dialogue = null;
			pos = null;
		}
	}
}