package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;
	import flash.display.DisplayObject;

	public class RemoveSceneItemUINotice extends BaseNotice
	{
		public var item:DisplayObject;
		public function RemoveSceneItemUINotice(item:DisplayObject)
		{
			super();
			
			this.item = item;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			item = null;
		}
	}
}