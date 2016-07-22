package com.tx.mme
{
	import com.tx.mme.data.ElementData;
	import com.tx.mme.data.FrameData;
	import com.tx.mme.data.LayerData;
	import com.tx.mme.data.MmeData;
	import com.tx.mme.data.PointElementData;

	import flash.display.Sprite;
	import flash.system.ApplicationDomain;

	/**
	 * 带幻影的渲染类
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class AdvancedRenderer extends SimpleInnerRenderer
	{
//		internal var phantomLayer:Sprite;
		internal var bitmapLayer:Sprite;	//图片层

//		public static const PHANTOM_MODE_AUTO:String = "auto";
//		public static const PHANTOM_MODE_ON:String = "on";
//		public static const PHANTOM_MODE_OFF:String = "off";
//		
//		private var phantomMode:String = PHANTOM_MODE_AUTO;
//		private var phantomData:PhantomData;
//		
//		private var updatePhantomCount:int = 0;

		/**
		 * 构造函数
		 * @param render    渲染器
		 * @param mmeData    资源数据
		 * @param mmeAsset    资源提供者
		 * @param appDomain    程序域
		 *
		 */
		public function AdvancedRenderer(render:MmeAssetRender, mmeData:MmeData, mmeAsset:MmeAsset, appDomain:ApplicationDomain)
		{
			super(render, mmeData, mmeAsset, appDomain);

			initLayers();
		}

		/**
		 * 初始化层数
		 *
		 */
		private function initLayers():void
		{
//			phantomLayer = new Sprite();
//			render.addChild(phantomLayer);

			bitmapLayer = new Sprite();
			this.render.addChild(bitmapLayer);
		}

		/**
		 * 刷新
		 *
		 */
		override internal function update():void
		{
			bitmapLayer.removeChildren();
			for (var i:int = this.mmeData.actionDatas[this.currActionIndex].layerDatas.length - 1; i >= 0; i--)
			{
				var ld:LayerData = this.mmeData.actionDatas[this.currActionIndex].layerDatas[i];
				for each(var fd:FrameData in ld.frameDatas)
				{
					if (fd.index <= this.currFrame && fd.index + fd.length > this.currFrame)
					{
						if (fd.tween && fd.index != this.currFrame)
						{
							fd = this.getTweenFrameData(this.currFrame, fd, ld.frameDatas) || fd;
						}

						var ed:ElementData = fd.element as ElementData;
						if (ed)
						{
							var bp:MmeAssetBitmap = this.getBitmap("Asset_" + ed.assetId, i);
							bp.blendMode = ed.blendMode || "normal";

							bp.x = ed.x;
							bp.y = ed.y;
							bp.scaleX = ed.scaleX;
							bp.scaleY = ed.scaleY;
							bp.rotation = ed.rotation;
							bp.transform.colorTransform = ed.color.colorTransform || DEFAULT_COLOR_TRANSFORM;
							bp.alpha = ed.alpha;
							bitmapLayer.addChild(bp);
						}

						if (this.render.getReferPointVisible() && fd.element is PointElementData)
						{
							var ped:PointElementData = fd.element as PointElementData;
							var referPoint:MmeAssetRenderReferPoint = new MmeAssetRenderReferPoint();
							referPoint.x = ped.x;
							referPoint.y = ped.y;
							bitmapLayer.addChild(referPoint);
						}

						if (fd.events && fd.index == this.currFrame)
						{
							for each(var et:String in fd.events)
							{
								var e:MmeAssetRenderEvent = new MmeAssetRenderEvent(MmeAssetRenderEvent.FRAME_EVENT, et);
								this.render.dispatchEvent(e);
							}

							if (this.mmeData == null)	//在里面抛出FRAME_EVENT事件的时候，有可能被unload，导致mmeData=null;
							{
								return;
							}
						}
//						if(phantomMode == PHANTOM_MODE_AUTO && fd.index == currFrame)
//						{
//							switch(fd.phantom.type)
//							{
//								//								case PhantomData.TYPE_ON_AND_CLEAR:
//								//									destroyPhantoms();
//								case PhantomData.TYPE_ON:
//									phantomData = fd.phantom;
//									updatePhantomCount = 0;
//									break;
//								case PhantomData.TYPE_ON_AND_SPANNING:
//									phantomData = fd.phantom;
//									break;
//								//								case PhantomData.TYPE_OFF_AND_CLEAR:
//								//									destroyPhantoms();
//								case PhantomData.TYPE_OFF:
//									phantomData = null;
//									updatePhantomCount = 0;
//									break;
//							}
//						}
					}
				}
			}

//			updatePhantom();
		}

//		public function setPhantom(phantomMode:String,phantomData:PhantomData=null):void
//		{
//			this.phantomMode = phantomMode;
//			if(phantomMode == PHANTOM_MODE_ON)
//			{
//				this.phantomData = phantomData;
//				updatePhantomCount = 0;
//			}else
//			{
//				this.phantomData = null;
//			}
//		}

//		private function updatePhantom():void
//		{
//			updatePhantomCount++;
//			if(phantomData 
//				&& (phantomData.type == PhantomData.TYPE_ON || phantomData.type == PhantomData.TYPE_ON_AND_SPANNING)
//				&& (updatePhantomCount % (phantomData.interval+1)) == 1)
//			{
//				createPhantom();
//			}
//			
//			if(phantomLayer == null)
//			{
//				return;
//			}
//			
//			var i:int = phantomLayer.numChildren;
//			while(i--)
//			{
//				var phantom:MmeAssetRenderPhantom = phantomLayer.getChildAt(i) as MmeAssetRenderPhantom;
//				phantom.update();
//				if(phantom.alpha<=0)
//				{
//					phantom.destroy();
//				}
//			}
//			
//			if(currFrame==currTotalFrame && phantomData)
//			{
//				if(phantomData.type != PhantomData.TYPE_ON_AND_SPANNING)
//				{
//					phantomData = null;
//					updatePhantomCount = 0;
//				}
//			}
//		}

//		private function createPhantom():void
//		{
//			var phantom:MmeAssetRenderPhantom = new MmeAssetRenderPhantom(bitmapLayer,phantomData.color.color,phantomData.dAlpha);
//			phantomLayer.addChild(phantom);
//		}
//		
//		/**
//		 * 摧毁幻影
//		 */		
//		public function destroyPhantoms():void
//		{
//			var i:int = phantomLayer.numChildren;
//			while(i--)
//			{
//				var phantom:MmeAssetRenderPhantom = phantomLayer.getChildAt(i) as MmeAssetRenderPhantom;
//				if(phantom)
//				{
//					phantom.destroy();
//				}
//			}
//		}

		/**
		 * 销毁
		 *
		 */
		override public function destroy():void
		{
//			phantomLayer.removeChildren();

			bitmapLayer.removeChildren();
			this.render.removeChildren();

//			destroyPhantoms();

			bitmapLayer = null;
//			phantomLayer = null;
//			phantomData = null;

			super.destroy();
		}
	}
}