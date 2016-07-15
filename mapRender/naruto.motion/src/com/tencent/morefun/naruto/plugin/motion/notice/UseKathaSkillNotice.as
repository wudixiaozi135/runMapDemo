package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class UseKathaSkillNotice extends BaseNotice
	{
		public var pos:int;
		public var skillId:int;
		
		public function UseKathaSkillNotice(pos:int, skillId:int)
		{
			super();
			
			this.pos = pos;
			this.skillId = skillId;
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