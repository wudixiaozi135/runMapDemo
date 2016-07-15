/**
 * Created by xiaoding on 2016/7/14 0014.
 */
package com.map.view
{
	import com.map.element.BaseMapElement;

	import flash.text.TextField;

	/*
	 * 测试使用的玩家
	 * */
	public class MyPlayer extends BaseMapElement
	{
		public function MyPlayer()
		{
			super();
			this.graphics.clear();
			this.graphics.beginFill(0xff00000);
			this.graphics.drawCircle(0, 0, 15);
			this.graphics.endFill();

			var tf:TextField = new TextField();
			tf.autoSize = "left";
			tf.text = "角色";
			this.addChild(tf);
			tf.x = -tf.textWidth * .5;
			tf.y = -tf.textHeight * .5 - 2;
		}
	}
}
