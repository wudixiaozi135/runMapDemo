package com.tx.mme
{
	import com.tx.mme.data.ActionData;
	import com.tx.mme.data.AssetData;
	import com.tx.mme.data.ElementData;
	import com.tx.mme.data.FrameData;
	import com.tx.mme.data.LayerData;
	import com.tx.mme.data.MmeData;
	import com.tx.mme.data.PointElementData;
	import com.tx.mme.utils.ObjectUtils;

	import flash.display.BitmapData;
	import flash.geom.ColorTransform;
	import flash.geom.Point;
	import flash.system.ApplicationDomain;
	import flash.utils.Dictionary;

	/**
	 * 常规内部渲染器
	 * @author Leowu
	 *
	 */
	public class SimpleInnerRenderer extends BaseInnerRenderer
	{
		static private var _notFoundAssets:Dictionary = new Dictionary;		//未找到的资源表（避免多次提示）：{资源文件名: true}
		static protected const BLAND_NORMAL:String = "normal";									//normal
		static protected const DEFAULT_COLOR_TRANSFORM:ColorTransform = new ColorTransform();	//颜色转换

		private var _hitTestPointTemp:Point;		//碰撞点

		protected var mmeAsset:MmeAsset;			//资源提供者
		protected var mmeData:MmeData;				//资源数据
		protected var appDomain:ApplicationDomain;	//程序域
		protected var currActionIndex:int;			//当前动作索引
		protected var bitmaps:Dictionary;			//位图列表

		/**
		 * 构造函数
		 * @param render    资源渲染器
		 * @param mmeData    资源数据
		 * @param mmeAsset    资源提供者
		 * @param appDomain    程序域
		 *
		 */
		public function SimpleInnerRenderer(render:MmeAssetRender, mmeData:MmeData, mmeAsset:MmeAsset, appDomain:ApplicationDomain)
		{
			super(render);

			this.mmeData = mmeData;
			this.mmeAsset = mmeAsset;
			this.appDomain = appDomain;
		}

		/**
		 * 跳转到指定动作，指定帧
		 * @param action    动作名称
		 * @param frame        帧数
		 * @return            是否成功
		 *
		 */
		override internal function gotoAction(action:String, frame:int = 0):Boolean
		{
			var ti:int = -1;
			for (var i:int = 0; i < this.mmeData.actionDatas.length; i++)
			{
				if (this.mmeData.actionDatas[i].name == action)
				{
					ti = i;
					break;
				}
			}
			if (ti == -1)
			{
				return false;
			}

			var tf:int = 0;
			for each(var ld:LayerData in this.mmeData.actionDatas[ti].layerDatas)
			{
				for each(var fd:FrameData in ld.frameDatas)
				{
					if (tf < fd.index + fd.length - 1)
					{
						tf = fd.index + fd.length - 1;
					}
				}
			}

			this.currActionName = action;
			this.currActionIndex = ti;
			this.currTotalFrame = tf;
			this.currFrame = Math.max(0, Math.min(frame, tf));
			this.update();

			return true;
		}

		/**
		 * 刷新
		 *
		 */
		override internal function update():void
		{
//			render.removeChildren();
//			var children:Vector.<Shape> = new Vector.<Shape>();
			var childIndex:int = 0;
			var evt:MmeAssetRenderEvent;
			for (var i:int = this.mmeData.actionDatas[this.currActionIndex].layerDatas.length - 1; i >= 0; i--)
			{
				var ld:LayerData = this.mmeData.actionDatas[this.currActionIndex].layerDatas[i];
//				var fd:FrameData = ld.frameDatas[currFrame];
//				if(fd != null)
//				{
				for each(var fd:FrameData in ld.frameDatas)
				{
					if (fd.index <= this.currFrame && fd.index + fd.length > this.currFrame)
					{
						if (fd.sound && fd.index == this.currFrame)
						{
							if (this.render.hasEventListener(MmeAssetRenderEvent.FRAME_SOUND))
							{
								evt = new MmeAssetRenderEvent(MmeAssetRenderEvent.FRAME_SOUND);
								evt.sound = fd.sound;
								this.render.dispatchEvent(evt);
							}
						}
						if (fd.tween && fd.index != this.currFrame)
						{
							fd = this.getTweenFrameData(this.currFrame, fd, ld.frameDatas) || fd;
						}

						var ed:ElementData = fd.element as ElementData;
						if (ed)
						{
							var bp:MmeAssetBitmap;
							if (ed.assetClassName)
							{
								bp = this.getBitmap(ed.assetClassName, i);
								if (!(bp || ed.assetClassName in _notFoundAssets))
								{
									_notFoundAssets[ed.assetClassName] = true;
									trace("Asset not found:", ed.assetClassName);
								}
							}
							else if (ed.assetName)
							{
								bp = this.getBitmapFromShared(ed.assetName, i);
								if (!(bp || ed.assetName in _notFoundAssets))
								{
									_notFoundAssets[ed.assetName] = true;
									trace("Shared asset not found:", ed.assetName);
								}
							}
							if (!bp) continue;

							bp.x = ed.x;
							bp.y = ed.y;
							bp.scaleX = ed.scaleX;
							bp.scaleY = ed.scaleY;
							bp.rotation = ed.rotation;
							bp.blendMode = ed.blendMode || BLAND_NORMAL;
							bp.colorTransform = ed.color.colorTransform || DEFAULT_COLOR_TRANSFORM;
							bp.alpha = ed.alpha;

							if (!this.render.contains(bp))
							{
								this.render.addChildAt(bp, childIndex);
							}
							else
							{
								if (this.render.getChildIndex(bp) != childIndex)
								{
									this.render.setChildIndex(bp, childIndex);
								}
							}
							childIndex++;
						}

						if (this.render.referPointVisible && fd.element is PointElementData)
						{
							var ped:PointElementData = fd.element as PointElementData;
							var referPoint:MmeAssetRenderReferPoint = new MmeAssetRenderReferPoint();
							referPoint.x = ped.x;
							referPoint.y = ped.y;
							if (!this.render.contains(referPoint))
							{
								this.render.addChildAt(referPoint, childIndex++);
							}
							else
							{
								this.render.setChildIndex(referPoint, childIndex++);
							}
						}

						if (fd.events && fd.events.length > 0 && fd.index == currFrame)
						{
							var isStopUpdated:Boolean = false;
							for each(var et:String in fd.events)
							{
								if (this.render.hasEventListener(MmeAssetRenderEvent.FRAME_EVENT))
								{
									evt = new MmeAssetRenderEvent(MmeAssetRenderEvent.FRAME_EVENT, et);
									this.render.dispatchEvent(evt);
									isStopUpdated ||= evt.isStopUpdated;
								}
							}

							if (isStopUpdated || this.mmeData == null)//在里面抛出FRAME_EVENT事件的时候，有可能被unload，导致mmeData=null;
							{
								return;
							}
						}

					}
				}
			}

			while (this.render.numChildren > childIndex)
			{
				this.render.removeChildAt(childIndex);
			}

		}

		/**
		 * 获取当前参考点
		 * @return 参考点数组
		 *
		 */
		override public function getCurrReferPoints():Array
		{
			var arr:Array = [];
			for each(var ld:LayerData in this.mmeData.actionDatas[this.currActionIndex].layerDatas)
			{
				for each(var fd:FrameData in ld.frameDatas)
				{
					if (fd.index <= this.currFrame && this.currFrame < fd.index + fd.length)
					{
						if (fd.tween && fd.index != this.currFrame)
						{
							fd = this.getTweenFrameData(this.currFrame, fd, ld.frameDatas) || fd;
						}
						if (fd.element is PointElementData)
						{
							arr.push(fd.element);
						}
					}
				}
			}
			return arr;
		}

		/**
		 * 获取指定名称的参考点
		 * @param pointName    参考点名称
		 * @return            参考点
		 *
		 */
		override public function getCurrReferPointByName(pointName:String):PointElementData
		{
			for each(var ld:LayerData in this.mmeData.actionDatas[this.currActionIndex].layerDatas)
			{
				for each(var fd:FrameData in ld.frameDatas)
				{
					if (fd.index <= this.currFrame && this.currFrame < fd.index + fd.length)
					{
						if (fd.tween && fd.index != this.currFrame)
						{
							fd = this.getTweenFrameData(this.currFrame, fd, ld.frameDatas) || fd;
						}
						var ped:PointElementData = fd.element as PointElementData;
						if (ped && ped.name == pointName)
						{
							return ped;
						}
					}
				}
			}
			return null;
		}

		/**
		 * 获取指定动作名称、指定帧的参考点
		 * @param actionName    动作名称
		 * @param frame            动作帧
		 * @return                参考点数组
		 *
		 */
		override public function getReferPointsFromAction(actionName:String, frame:int):Array
		{
			if (!this.mmeData)
			{
				return null;
			}

			var arr:Array = [];
			for each(var ad:ActionData in this.mmeData.actionDatas)
			{
				if (ad.name == actionName)
				{
					for each(var ld:LayerData in ad.layerDatas)
					{
						for each(var fd:FrameData in ld.frameDatas)
						{
							if (fd.index <= frame && frame < fd.index + fd.length)
							{
								if (fd.tween && fd.index != this.currFrame)
								{
									fd = this.getTweenFrameData(this.currFrame, fd, ld.frameDatas) || fd;
								}
								if (fd.element is PointElementData)
								{
									arr.push(fd.element);
								}
							}
						}
					}
					break;
				}
			}

			return arr;
		}

		/**
		 * 获取指定动作名称、指定帧数、指定参考点名称的参考点
		 * @param actionName    动作名称
		 * @param frame            帧数
		 * @param pointName        参考点名称
		 * @return                参考点
		 *
		 */
		override public function getReferPointFromActionByName(actionName:String, frame:int, pointName:String):PointElementData
		{
			if (!this.mmeData)
			{
				return null;
			}
			for each(var ad:ActionData in this.mmeData.actionDatas)
			{
				if (ad.name == actionName)
				{
					for each(var ld:LayerData in ad.layerDatas)
					{
						for each(var fd:FrameData in ld.frameDatas)
						{
							if (fd.index <= frame && frame < fd.index + fd.length)
							{
								if (fd.tween && fd.index != this.currFrame)
								{
									fd = this.getTweenFrameData(this.currFrame, fd, ld.frameDatas) || fd;
								}
								var ped:PointElementData = fd.element as PointElementData;
								if (ped && ped.name == pointName)
								{
									return ped;
								}
							}
						}
					}
					break;
				}
			}

			return null;
		}

		/**
		 * 获取指定动作名称的动作总帧数
		 * @param name    动作名称
		 * @return        总帧数
		 *
		 */
		override public function getTotalFrameByActionName(name:String):int
		{
			var ti:int;
			for (var i:int = 0; i < this.mmeData.actionDatas.length; i++)
			{
				if (this.mmeData.actionDatas[i].name == name)
				{
					ti = i;
					break;
				}
			}

			if (ti == -1)
			{
				return -1;
			}

			var tf:int = 0;
			for each(var ld:LayerData in this.mmeData.actionDatas[ti].layerDatas)
			{

				for each(var fd:FrameData in ld.frameDatas)
				{
					if (tf < fd.index + fd.length - 1)
					{
						tf = fd.index + fd.length - 1;
					}
				}
			}
			return tf;
		}

		/**
		 * 获取动作名称数组
		 * @return    动作名称数组
		 *
		 */
		override public function getActionNames():Array
		{
			var arr:Array = [];
			var ti:int = -1;
			for (var i:int = 0; i < this.mmeData.actionDatas.length; i++)
			{
				arr.push(this.mmeData.actionDatas[i].name);
			}
			return arr;
		}

		/**
		 * 检测是否有指定名称的动作
		 * @param name    动作名称
		 * @return        有=true
		 *
		 */
		override public function hasActionName(name:String):Boolean
		{
			if (this.mmeData == null || this.mmeData.actionDatas == null)
			{
				return false;
			}

			for (var i:int = 0; i < this.mmeData.actionDatas.length; i++)
			{
				if (this.mmeData.actionDatas[i].name == name)
				{
					return true;
				}
			}

			return false;
		}

		/**
		 * 检索 eventName 在 actionName 里的帧下标
		 * @param actionName    动作名称
		 * @param eventName        事件名称
		 * @param maxNum        最大个数
		 * @return                返回数组
		 *
		 */
		override public function eventIndexOf(actionName:String, eventName:String, maxNum:int = 1):Array
		{
			if (!this.mmeData)
			{
				return null;
			}

			var arr:Array = [];
			for each(var ad:ActionData in this.mmeData.actionDatas)
			{
				if (ad.name == actionName)
				{
					for each(var ld:LayerData in ad.layerDatas)
					{
						for (var i:int = 0; i < ld.frameDatas.length; i++)
						{
							if (ld.frameDatas[i].events.indexOf(eventName) != -1)
							{
								arr.push(ld.frameDatas[i].index);

								if (arr.length >= maxNum)
								{
									return arr;
								}
							}
						}
					}
					break;
				}
			}

			return arr;
		}

		/**
		 * 获取共享位图
		 * @param assetName
		 * @param i
		 * @return
		 *
		 */
		protected function getBitmapFromShared(assetName:String, i:int):MmeAssetBitmap
		{
			var mmeData:MmeData = this.mmeAsset.getSharedMmeData();
			if (!mmeData) return null;

			var assetData:AssetData = this.mmeAsset.getSharedAssetData(assetName);
			if (!assetData) return null;

			var bpd:BitmapData = assetData.bitmap || this.mmeAsset.getSharedAsset(assetData.className);
			if (!bpd) return null;

			return this.getAssetBitmap(bpd, assetData, i);
		}

		/**
		 * 获取Bitmap
		 * @param name333    名称
		 * @param i
		 * @return
		 *
		 */
		protected function getBitmap(className:String, i:int):MmeAssetBitmap
		{
			var assetData:AssetData = this.mmeData.getAssetData(className);
			if (!assetData) return null;

			var bpd:BitmapData = assetData.bitmap || this.mmeAsset.getAsset(className, appDomain);
			if (!bpd) return null;

			return this.getAssetBitmap(bpd, assetData, i);
		}

		/**
		 * 获取AssetBitmap
		 * @param bpd        位图
		 * @param assetData    资源数据
		 * @param i            索引值
		 * @return
		 *
		 */
		protected function getAssetBitmap(bpd:BitmapData, assetData:AssetData, i:int):MmeAssetBitmap
		{
			this.bitmaps ||= new Dictionary();
			if (i in this.bitmaps)
			{
				this.bitmaps[i].setData(bpd, assetData.x, assetData.y);
			}
			else
			{
				this.bitmaps[i] = new MmeAssetBitmap(bpd, assetData.x, assetData.y);
			}
			return this.bitmaps[i];
		}

		/**
		 * 获取帧数据
		 * @param cf
		 * @param fd    帧频数据
		 * @param fds    帧列表
		 * @return
		 *
		 */
		protected function getTweenFrameData(cf:int, fd:FrameData, fds:Vector.<FrameData>):FrameData
		{
			var tfd:FrameData;
			for each(var fdtmp:FrameData in fds)
			{
				if (fdtmp != fd && fdtmp.index == fd.index + fd.length)
				{
					if (fdtmp.element is ElementData && fd.element is ElementData && ElementData(fdtmp.element).assetId == ElementData(fd.element).assetId)
					{
						tfd = fdtmp;
						break;
					}
					if (fdtmp.element is PointElementData && fd.element is PointElementData)
					{
						tfd = fdtmp;
						break;
					}
				}
			}
			if (tfd)
			{
				var r:Number = (cf - fd.index) / (tfd.index - fd.index);

				var nfd:FrameData = ObjectUtils.clone(fd);
				nfd.element.x = r * (tfd.element.x - fd.element.x) + fd.element.x;
				nfd.element.y = r * (tfd.element.y - fd.element.y) + fd.element.y;

				if (tfd.element is ElementData)
				{
					ElementData(nfd.element).scaleX = r * (ElementData(tfd.element).scaleX - ElementData(fd.element).scaleX) + ElementData(fd.element).scaleX;
					ElementData(nfd.element).scaleY = r * (ElementData(tfd.element).scaleY - ElementData(fd.element).scaleY) + ElementData(fd.element).scaleY;
					ElementData(nfd.element).rotation = r * (ElementData(tfd.element).rotation - ElementData(fd.element).rotation) + ElementData(fd.element).rotation;
					ElementData(nfd.element).alpha = r * (ElementData(tfd.element).alpha - ElementData(fd.element).alpha) + ElementData(fd.element).alpha;
				}
				return nfd;
			}
			else
			{
				return null;
			}
		}

		/**
		 * 销毁位图列表
		 *
		 */
		public function destroyBitmaps():void
		{
			var ks:Array = [];
			for (var k:String in this.bitmaps)
			{
				ks.push(k);
			}
			for each(k in ks)
			{
				this.bitmaps[k].destroy();
				delete this.bitmaps[k];
			}
			this.bitmaps = null;
		}

		/**
		 * 销毁
		 *
		 */
		override public function destroy():void
		{
			this.destroyBitmaps();

			this.mmeAsset = null;
			this.mmeData = null;
			this.appDomain = null;
			this.currActionIndex = -1;

			super.destroy();
		}

		/**
		 * 碰撞检测
		 * @param x    碰撞点x坐标
		 * @param y    碰撞点y坐标
		 * @return    碰撞=true,未碰撞=false
		 *
		 */
		override public function hitTestPoint(x:Number, y:Number):Boolean
		{
			for (var i:int = this.render.numChildren - 1; i >= 0; i--)
			{
				var bp:MmeAssetBitmap = this.render.getChildAt(i) as MmeAssetBitmap;
				if (bp)
				{
					if (_hitTestPointTemp == null)
					{
						_hitTestPointTemp = new Point();
					}
					if (bp.hitTestPoint(x, y))
					{
						return true;
					}
				}
			}
			return false;
		}
	}
}