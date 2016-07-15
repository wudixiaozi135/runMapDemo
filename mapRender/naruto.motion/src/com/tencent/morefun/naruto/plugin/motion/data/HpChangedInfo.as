package com.tencent.morefun.naruto.plugin.motion.data
{

	public class HpChangedInfo
	{
		public var pos:int;
		public var hp:int;
		public var curHp:int;
		public var oldHp:int;
		public var money:int;
		public var baseChangedInfoList:Array;
	
															
		public function autoSetNull():void
		{

			baseChangedInfoList = null;
		}
	}
}