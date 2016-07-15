package com.tencent.morefun.naruto.plugin.motion.data
{

	public class DefenceAttribute
	{
		public var id:int;
		public var desc:String;
		public var type:int;
		public var fixAction:String;
		public var defenceAction:String;
		
		public function set data(value:XML):void
		{
			id = value.@id;
			desc = value.@desc;
			type = value.@type;
			fixAction = value.@fixAction;
			defenceAction = value.@defenceAction;
		}
	
															
		public function autoSetNull():void
		{

			desc = null;
			fixAction = null;
			defenceAction = null;
		}
	}
}