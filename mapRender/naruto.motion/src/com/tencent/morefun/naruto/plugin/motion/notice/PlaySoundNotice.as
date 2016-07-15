package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class PlaySoundNotice extends BaseNotice
	{
		public var soundId:int;
		public var volume:int;
		
		public function PlaySoundNotice(soundId:int, volume:int)
		{
			super();
			
			this.soundId = soundId;
			this.volume = volume;
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