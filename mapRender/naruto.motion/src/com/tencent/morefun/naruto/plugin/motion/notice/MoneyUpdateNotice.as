package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;
	
	public class MoneyUpdateNotice extends BaseNotice
	{
		public var money:int;
		public var pos:int;
		public var teamId:int;
		
		public function MoneyUpdateNotice(money:int, pos:int, teamId:int)
		{
			this.money = money;
			this.pos = pos;
			this.teamId = teamId;
		}
	}
}