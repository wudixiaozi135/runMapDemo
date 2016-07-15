package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class PromptSkillStartNotice extends BaseNotice
	{
		public var pos:int;
		public var skillId:int;
		public var comboIndex:int;
		
		public function PromptSkillStartNotice(pos:int, comboIndex:int, skillId:int)
		{
			super();
			
			this.pos = pos;
			this.skillId = skillId;
			this.comboIndex = comboIndex;
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