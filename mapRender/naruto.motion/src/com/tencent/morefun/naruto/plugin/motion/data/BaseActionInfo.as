package com.tencent.morefun.naruto.plugin.motion.data
{

	public class BaseActionInfo
	{
		public var actionType:int;
		public var rendererIndex:int;
		public var isOver:Boolean;
		public var roundId:int;
		public var actionIdList:Array = [];
		
		public function getMotionPos():Array
		{
			return [];
		}
		
		public function isHoldAction():Boolean
		{
			return false;
		}
		
		public function update():void
		{
			
		}
	
															
		public function autoSetNull():void
		{

			actionIdList = null;
		}
	}
}