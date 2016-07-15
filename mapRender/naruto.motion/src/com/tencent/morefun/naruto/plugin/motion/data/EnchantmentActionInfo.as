package com.tencent.morefun.naruto.plugin.motion.data
{

	public class EnchantmentActionInfo extends BaseActionInfo
	{
		public var type:int;
		public var enchatmentId:int;
		public var skillStatusChangedList:Array;
		public var cancelSkillList:Array =[];
		public var kathaChangedList:Array = [];
		public var hpChangedList:Array = [];
		
		
		public function EnchantmentActionInfo()
		{
			this.actionType = ActionTypeDef.ENCHATMENT;
		}
		
		override public function isHoldAction():Boolean
		{
			return true;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			skillStatusChangedList = null;
			cancelSkillList = null;
			kathaChangedList = null;
		}
	}
}