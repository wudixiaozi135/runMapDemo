package com.tencent.morefun.naruto.plugin.motion.data
{

	public class AbortSkillActionInfo extends BaseActionInfo
	{
		public var abortPosList:Array = [];
		
		public function AbortSkillActionInfo()
		{
			actionType = ActionTypeDef.ABORT;
		}
		
		override public function getMotionPos():Array
		{
			return abortPosList;
		}
	
																																			
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			abortPosList = null;
		}
	}
}