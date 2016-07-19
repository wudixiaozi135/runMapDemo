package com.tx.mme
{
	import flash.display.Sprite;

	/**
	 * MmeAssetRender的一个多层封装
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class MmeAssetMultiRender extends Sprite
	{
		private var _renders:Vector.<MmeAssetRender>;	//渲染列表
		private var _layerNum:int;						//层数

		/**
		 * 构造函数
		 * @param _layerNum    层数
		 * @param assets    资源提供者
		 * @param frameRate    帧频
		 *
		 */
		public function MmeAssetMultiRender(layerNum:int, assets:MmeAsset = null)
		{
			super();

			_layerNum = layerNum;
			_renders = new Vector.<MmeAssetRender>(layerNum);

			for (var i:int = 0; i < layerNum; i++)
			{
				_renders[i] = new MmeAssetRender(assets);
				this.addChild(_renders[i]);
			}
		}

		/**
		 * 为每一层添加侦听
		 * @param frameListener    侦听函数
		 *
		 */
		public function addFrameEventListener(frameListener:Function):void
		{
			for (var i:int = 0; i < _layerNum; i++)
			{
				_renders[i].addEventListener(MmeAssetRenderEvent.FRAME_EVENT, frameListener);
			}
		}

		/**
		 * 移除每一层上的侦听
		 * @param frameListener    侦听函数
		 *
		 */
		public function removeFrameEventListener(frameListener:Function):void
		{
			for (var i:int = 0; i < _layerNum; i++)
			{
				_renders[i].removeEventListener(MmeAssetRenderEvent.FRAME_EVENT, frameListener);
			}
		}

		/**
		 * 播放所有层上的指定动作，如果没还载入资源的层将不进行播放
		 * @param action    动作名称
		 * @param frame        开始帧
		 * @param loop        是否循环播放
		 *
		 */
		public function play(action:String, frame:int = 0, loop:Boolean = false):void
		{
			for (var i:int = 0; i < _layerNum; i++)
			{
				if (_renders[i].getMmeData() != null)
				{
					_renders[i].play(action, frame, loop);
				}
			}
		}

		/**
		 * 停止所有层的播放
		 *
		 */
		public function stop():void
		{
			for (var i:int = 0; i < _layerNum; i++)
			{
				_renders[i].stop();
			}
		}

		/**
		 * 显示所有层
		 *
		 */
		public function show():void
		{
			for (var i:int = 0; i < _layerNum; i++)
			{
				_renders[i].visible = true;
			}
		}

		/**
		 * 隐藏所有层
		 *
		 */
		public function hide():void
		{
			for (var i:int = 0; i < _layerNum; i++)
			{
				_renders[i].visible = false;
			}
		}

		/**
		 * 通过索引获取某一层
		 * @param index    层索引
		 * @return        该层渲染器
		 *
		 */
		public function getRenderByIndex(index:int):MmeAssetRender
		{
			return _renders[index];
		}

		/**
		 * 销毁索引相关层级（这里仅效果层内资源）
		 * @param index    层索引
		 *
		 */
		public function destoryByIndex(index:int):void
		{
			if (_renders[index] != null)
			{
				_renders[index].destroy();
			}
		}

		/**
		 * 销毁全部
		 *
		 */
		public function destory():void
		{
			for (var i:int = 0; i < _layerNum; i++)
			{
				_renders[i].destroy();
			}

			this.removeChildren();
		}
	}
}