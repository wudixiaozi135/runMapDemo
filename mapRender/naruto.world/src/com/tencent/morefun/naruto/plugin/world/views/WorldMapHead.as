package com.tencent.morefun.naruto.plugin.world.views
{
	import com.tencent.morefun.naruto.plugin.exui.base.Image;
	
	import flash.display.Sprite;
	
	import base.ApplicationData;
	
	import def.NinjaAssetDef;
	
	import ui.world.WorldMapHeadUI;
	
	public class WorldMapHead extends Sprite
	{
		private var img:Image;
		public function WorldMapHead()
		{
			super();
			
			initUI();
		}
		
		private function initUI():void
		{
			mouseChildren = false;
			mouseEnabled = false;
			
			var selfUI:WorldMapHeadUI = new WorldMapHeadUI();
			img = new Image(28,28,true);
			img.load(NinjaAssetDef.getAsset(NinjaAssetDef.HEAD_SMALL,ApplicationData.singleton.selfInfo.ninja,true));
			img.x = -14;
			img.y = -36;
			selfUI.addChild(img);
			addChild(selfUI);
		}
		
		public function destroy():void
		{
			img.dispose();
			img = null;
		}
	}
}