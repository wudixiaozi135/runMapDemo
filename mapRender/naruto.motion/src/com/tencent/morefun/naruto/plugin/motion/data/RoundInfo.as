package com.tencent.morefun.naruto.plugin.motion.data
{

	public class RoundInfo
	{
		public var id:String;//RoundID
//		public var spList:Array = [];
		public var actions:Array = [];//行为列表
		public var buffList:Array = [];//BUFF列表
	
															
		public function autoSetNull():void
		{

			actions = null;
			buffList = null;
		}
	}
}