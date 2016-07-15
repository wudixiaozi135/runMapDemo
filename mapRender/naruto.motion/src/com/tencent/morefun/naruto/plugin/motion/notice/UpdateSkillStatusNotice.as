package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class UpdateSkillStatusNotice extends BaseNotice
	{
		public var skillStates:Array;
		
		public function UpdateSkillStatusNotice(skillStates:Array)
		{
			super();
			
			this.skillStates = skillStates;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			skillStates = null;
		}
	}
}