package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class HpChangedNotice extends BaseNotice
	{
		public var hp:int;
		public var pos:int;
		public var teamId:int;
		
		public function HpChangedNotice(hp:int, pos:int, teamId:int)
		{
			this.hp = hp;
			this.pos = pos;
			this.teamId = teamId;
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