package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class StartScriptNotice extends BaseNotice
	{
		public var delay:int;
		public var scriptId:int;
		
		public function StartScriptNotice(scriptId:int, delay:int)
		{
			super();
			
			this.delay = delay;
			this.scriptId = scriptId;
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