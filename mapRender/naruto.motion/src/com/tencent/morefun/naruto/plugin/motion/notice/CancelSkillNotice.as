package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class CancelSkillNotice extends BaseNotice
	{
		public var cancelSkillList:Array;
		
		public function CancelSkillNotice(cancelSkillList:Array)
		{
			super();
			
			this.cancelSkillList = cancelSkillList;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			cancelSkillList = null;
		}
	}
}