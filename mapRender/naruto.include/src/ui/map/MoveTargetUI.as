/**
 * Created by Administrator on 2016/7/13 0013.
 */
package ui.map
{
	import flash.display.MovieClip;
	import flash.display.Sprite;

	public class MoveTargetUI extends MovieClip
	{
		public function MoveTargetUI()
		{
			super();
			var sp:Sprite = new Sprite();
			sp.graphics.clear();
			sp.graphics.beginFill(0xff0000);
			sp.graphics.drawRect(0, 0, 50, 50);
			sp.graphics.endFill();
			this.addChild(sp);
		}
	}
}
