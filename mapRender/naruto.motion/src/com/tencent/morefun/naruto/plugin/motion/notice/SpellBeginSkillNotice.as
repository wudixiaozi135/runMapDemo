package com.tencent.morefun.naruto.plugin.motion.notice
{

	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class SpellBeginSkillNotice extends BaseNotice
	{
		public var isStart:Boolean;
		public function SpellBeginSkillNotice(isStart:Boolean)
		{
			super();
			this.isStart = isStart;
		}
	
	}
}