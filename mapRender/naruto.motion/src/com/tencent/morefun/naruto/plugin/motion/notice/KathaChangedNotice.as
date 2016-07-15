package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class KathaChangedNotice extends BaseNotice
	{
		public var pos:int;
		public var team:int;
		public var katha:int;
		
		public function KathaChangedNotice(pos:int, team:int, katha:int)
		{
			super();
			
			this.pos = pos;
			this.team = team;
			this.katha = katha;
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