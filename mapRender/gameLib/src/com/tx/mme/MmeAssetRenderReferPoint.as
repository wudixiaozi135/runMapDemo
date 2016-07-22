package com.tx.mme
{
	import flash.display.Shape;

	/**
	 * 渲染动作参考点
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class MmeAssetRenderReferPoint extends Shape
	{
		/**
		 * 构造函数
		 *
		 */
		public function MmeAssetRenderReferPoint()
		{
			super();

			draw(2, 0xFFFFFF, 0xFFFFFF);
			draw(1, 0xFF3333, 0x333333);
		}

		/**
		 * 绘制参考点
		 * @param thick        萧条粗细
		 * @param color        线条颜色值1
		 * @param color2    线条颜色值2
		 *
		 */
		private function draw(thick:int, color:uint, color2:uint):void
		{
			this.graphics.lineStyle(thick, color);
			this.graphics.drawRect(-5, -5, 10, 10);
			this.graphics.lineStyle(thick, color2);
			this.graphics.moveTo(-20, 0);
			this.graphics.lineTo(20, 0);
			this.graphics.moveTo(0, -20);
			this.graphics.lineTo(0, 20);
		}
	}
}