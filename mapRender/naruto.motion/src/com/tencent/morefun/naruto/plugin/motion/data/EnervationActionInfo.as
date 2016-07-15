package com.tencent.morefun.naruto.plugin.motion.data
{

	public class EnervationActionInfo extends BaseActionInfo
	{
		public static const TYPE_IN:int = 0;
		public static const TYPE_OUT:int = 1;
		
		public var type:int;
		public var posList:Array = [];
		
		public function EnervationActionInfo()
		{
			super();
			
			this.actionType = ActionTypeDef.ENERVATION;
		}
		
		override public function isHoldAction():Boolean
		{
			return true;
		}
		
		override public function getMotionPos():Array
		{
			return posList;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			posList = null;
		}
	}
}