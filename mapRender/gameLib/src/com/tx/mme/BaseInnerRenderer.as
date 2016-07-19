package com.tx.mme
{
	import com.tx.mme.data.PointElementData;

	/**
	 * 渲染基类
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	internal class BaseInnerRenderer
	{
		protected var render:MmeAssetRender;	//渲染器

		protected var currFrame:int = -1;		//当前动作当前帧
		protected var currTotalFrame:int;		//当前动作总帧
		protected var currActionName:String;	//当前动作名称

		/**
		 * 构造函数
		 * @param render    渲染器
		 *
		 */
		public function BaseInnerRenderer(render:MmeAssetRender)
		{
			this.render = render;
		}

		/**
		 * 定位到指定帧
		 * @param action    动作名称
		 * @param frame        指定的帧数
		 * @return            是否成功，成功=true
		 *
		 */
		internal function gotoAction(action:String, frame:int = 0):Boolean
		{
			return false;
		}

		/**
		 * 刷新
		 *
		 */
		internal function update():void
		{

		}

		/**
		 * 设置当前动作当前帧
		 * @param v    当前帧数
		 *
		 */
		public function setCurrFrame(v:int):void
		{
			this.currFrame = v;
		}

		/**
		 * 获取当前动作当前帧
		 * @return 当前帧数
		 *
		 */
		public function getCurrFrame():int
		{
			return this.currFrame;
		}

		/**
		 * 获取当前动作总帧数
		 * @return    总帧数
		 *
		 */
		public function getCurrTototalFrame():int
		{
			return this.currTotalFrame;
		}

		/**
		 * 获取当前动作名称
		 * @return 动作名称
		 *
		 */
		public function getCurrActionName():String
		{
			return this.currActionName;
		}

		/**
		 * 获取当前参考点列表
		 * @return 参考点列表
		 *
		 */
		public function getCurrReferPoints():Array
		{
			return null;
		}

		/**
		 * 根据点名称获取参考点数据
		 * @param pointName    参考点名称
		 * @return            参考点数据
		 *
		 */
		public function getCurrReferPointByName(pointName:String):PointElementData
		{
			return null;
		}

		/**
		 * 根据动作名称和动作帧，获取参考点列表
		 * @param actionName    动做名称
		 * @param frame            动作帧
		 * @return                参考点列表
		 *
		 */
		public function getReferPointsFromAction(actionName:String, frame:int):Array
		{
			return null;
		}

		/**
		 * 根据动作名称、动作帧和参考点名称，获取参考点数据
		 * @param actionName    动做名称
		 * @param frame            动作帧
		 * @param pointName        参考点名称
		 * @return                参考点数据
		 *
		 */
		public function getReferPointFromActionByName(actionName:String, frame:int, pointName:String):PointElementData
		{
			return null;
		}

		/**
		 * 根据动作名称获取动作总帧数
		 * @param name    动做名称
		 * @return        总帧数
		 *
		 */
		public function getTotalFrameByActionName(name:String):int
		{
			return 0;
		}

		/**
		 * 获取动作名称列表
		 * @return 动作名称列表
		 *
		 */
		public function getActionNames():Array
		{
			return null;
		}

		/**
		 * 是否有该动作
		 * @param name    动作名称
		 * @return        是=true,否=false
		 *
		 */
		public function hasActionName(name:String):Boolean
		{
			return false;
		}

		/**
		 * 获取事件索引列表
		 * @param actionName    动作名称
		 * @param eventName        事件名称
		 * @param maxNum        最大数量
		 * @return                事件索引列表
		 *
		 */
		public function eventIndexOf(actionName:String, eventName:String, maxNum:int = 1):Array
		{
			return null;
		}

		/**
		 * 销毁
		 *
		 */
		public function destroy():void
		{
			this.currActionName = null;
			this.currFrame = -1;
			this.currTotalFrame = 0;
			this.render = null;
		}

		/**
		 * 碰撞检测
		 * @param x    碰撞点x坐标
		 * @param y    碰撞点y坐标
		 * @return 碰撞=true,未碰撞=false
		 *
		 */
		public function hitTestPoint(x:Number, y:Number):Boolean
		{
			throw new Error("as_core_1451031566_660");
		}
	}
}