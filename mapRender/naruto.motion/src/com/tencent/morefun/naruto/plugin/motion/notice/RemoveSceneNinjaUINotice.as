package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.view.BaseItemSceneUI;
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class RemoveSceneNinjaUINotice extends BaseNotice
	{
		public var item:BaseItemSceneUI;
		public function RemoveSceneNinjaUINotice(item:BaseItemSceneUI)
		{
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