package com.tencent.morefun.naruto.plugin.motion.data
{

	public class FormatActionInfo extends BaseActionInfo
	{
		public function FormatActionInfo()
		{
			actionType  = ActionTypeDef.FORMATION;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

		}
	}
}