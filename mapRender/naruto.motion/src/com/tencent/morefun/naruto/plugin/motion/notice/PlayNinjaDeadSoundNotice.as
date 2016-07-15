package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class PlayNinjaDeadSoundNotice extends BaseNotice
	{
		public var ninjaId:int;
		
		public function PlayNinjaDeadSoundNotice(ninjaId:int)
		{
			super();
			
			this.ninjaId = ninjaId;
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