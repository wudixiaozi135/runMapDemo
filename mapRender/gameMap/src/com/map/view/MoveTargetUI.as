/**
 * Created by Administrator on 2016/7/13 0013.
 */
package com.map.view
{
	import flash.display.MovieClip;
	import flash.display.Sprite;

	/*
	 * 地图上寻路到目标的UI
	 * */
	public class MoveTargetUI extends MovieClip
	{
		public function MoveTargetUI()
		{
			super();
			var sp:Sprite = new Sprite();
			sp.graphics.clear();
			sp.graphics.beginFill(0xff0);
			sp.graphics.drawRect(0, 0, 25, 25);
			sp.graphics.endFill();
			this.addChild(sp);
		}
	}
}
