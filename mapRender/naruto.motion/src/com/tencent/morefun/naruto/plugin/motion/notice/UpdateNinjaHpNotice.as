package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class UpdateNinjaHpNotice extends BaseNotice
	{
		public var hp:int;
		public var pos:int;
		
		public function UpdateNinjaHpNotice(pos:int, hp:int)
		{
			super();
			
			this.hp = hp;
			this.pos = pos;
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