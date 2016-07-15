package com.tencent.morefun.naruto.plugin.motion.data
{

	public class ScriptActionInfo extends BaseActionInfo
	{
		public var delay:int;
		public var scriptId:uint;
		
		public function ScriptActionInfo()
		{
			super();
			
			this.actionType = ActionTypeDef.SCRIPT;
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

		}
	}
}