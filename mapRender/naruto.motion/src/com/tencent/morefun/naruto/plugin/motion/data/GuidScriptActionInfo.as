package com.tencent.morefun.naruto.plugin.motion.data
{
	public class GuidScriptActionInfo extends BaseActionInfo
	{
		public var delay:int;
		public var scriptId:uint;
		
		public function GuidScriptActionInfo()
		{
			super();
			
			this.actionType = ActionTypeDef.GUID_SCRIPT;
		}
		
		override public function isHoldAction():Boolean
		{
			return true;
		}
	}
}