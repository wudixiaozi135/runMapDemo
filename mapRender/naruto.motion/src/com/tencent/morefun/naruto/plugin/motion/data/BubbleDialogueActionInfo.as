package com.tencent.morefun.naruto.plugin.motion.data
{

	public class BubbleDialogueActionInfo extends BaseActionInfo
	{
		public var dialogueDataList:Array = [];
		
		public function BubbleDialogueActionInfo()
		{
			actionType = ActionTypeDef.DIALOGUE;
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

			dialogueDataList = null;
		}
	}
}