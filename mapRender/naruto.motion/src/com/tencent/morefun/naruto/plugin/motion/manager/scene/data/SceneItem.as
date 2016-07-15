package com.tencent.morefun.naruto.plugin.motion.manager.scene.data
{
	import flash.display.DisplayObject;
	import flash.geom.Point;

	public class SceneItem
	{
		public var id:int;//英雄唯一id
		public var display:DisplayObject;//显示对象
		public var movePos:Point = new Point();
		
		public function SceneItem()
		{
			
		}
	
															
		public function autoSetNull():void
		{

			movePos = null;
		}
	}
}