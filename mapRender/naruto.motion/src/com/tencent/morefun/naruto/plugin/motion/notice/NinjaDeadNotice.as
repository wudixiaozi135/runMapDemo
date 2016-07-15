package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;
	
	public class NinjaDeadNotice extends BaseNotice
	{
		public var pos:int;
		public function NinjaDeadNotice(pos:int)
		{
			super();
			
			this.pos = pos;
		}
	}
}