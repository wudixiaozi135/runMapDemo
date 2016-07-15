package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;
	
	public class ChooseNinjaNotice extends BaseNotice
	{
		public var pos:int;
		
		public function ChooseNinjaNotice(pos:int)
		{
			super();
			
			this.pos = pos;
		}
	}
}