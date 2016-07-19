package com.tx.mme
{
	import com.tx.mme.data.FlaData;
	import com.tx.mme.data.FlaFrameBitmapData;
	import com.tx.mme.data.FlaFrameEventData;
	import com.tx.mme.data.PointElementData;

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.display.FrameLabel;
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.geom.Rectangle;
	import flash.system.ApplicationDomain;

	/**
	 * fla资源渲染类
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class FlaInnerRenderer extends BaseInnerRenderer
	{
		private var _mmeAsset:MmeAsset;				//资源提供者
		private var _appDomain:ApplicationDomain;	//程序域

		private var _mc:MovieClip;					//动作影片剪辑
		private var _events:Array;					//事件列表

		private var _flaData:FlaData;				//fla数据
		private var _frameBitmapDatas:Array;		//帧数据列表
		private var _frameBitmap:Bitmap;			//帧上图片
//		private var shape:Shape;

		/**
		 * 构造函数
		 * @param render    渲染器
		 * @param _mmeAsset    资源提供者
		 * @param _appDomain    资源
		 *
		 */
		public function FlaInnerRenderer(render:MmeAssetRender, mmeAsset:MmeAsset, appDomain:ApplicationDomain)
		{
			this._mmeAsset = mmeAsset;
			this._appDomain = appDomain;
			this._flaData = mmeAsset.getFlaData(appDomain);
			super(this.render);
		}

		/**
		 * 定位到固定帧
		 * @param action    动作名称
		 * @param frame        定位到的帧数
		 * @return            是否成功
		 *
		 */
		override internal function gotoAction(action:String, frame:int = 0):Boolean
		{
			if (action != this.currActionName)
			{
				destroyMc();
				destroyFrameBitmapData();

				if (_flaData && _flaData.hasActionName(action))
				{
					_frameBitmapDatas = _flaData.getAction(action);
					this.currTotalFrame = _flaData.getTotalFrame(action) - 1;
				}
				else
				{
					_mc = MmeAsset.createObject(action, _appDomain) as MovieClip;
					_mc.gotoAndStop(_mc.totalFrames); // 兼容
					this.render.addChild(_mc);
					_mc.gotoAndStop(1); // 兼容flash导出音效放在第一帧的情况
					this.currTotalFrame = _mc.totalFrames - 1;
				}

				var datamc:MovieClip = MmeAsset.createObject(action + "_Data", _appDomain) as MovieClip;
				if (datamc)
				{
					_events = createEvents(datamc);
				}
				else
				{
					_events = null;
				}

				this.currActionName = action;
			}

			this.setCurrFrame(frame);
			this.update();

			return true;
		}

		/**
		 * 获取动作名称列表
		 * @return 动作名称列表
		 *
		 */
		override public function getActionNames():Array
		{
			var names:Array = [];
			for each(var name:String in _appDomain["getQualifiedDefinitionNames"]())
			{
				names.push(name);
			}
			return names;
		}

		/**
		 * 是否有该动作
		 * @param name    动作名称
		 * @return 是=true,否=false
		 *
		 */
		override public function hasActionName(name:String):Boolean
		{
			for each(var tmpName:String in _appDomain["getQualifiedDefinitionNames"]())
			{
				if (tmpName == name)
				{
					return true;
				}
			}
			return false;
		}

		/**
		 * 获取当前参考点列表
		 * @return 抛出错误，返回null
		 *
		 */
		override public function getCurrReferPoints():Array
		{
			throw new Error("as_core_1451031566_663");
			return null;
		}

		/**
		 * 根据点名称获取参考点数据
		 * @param pointName    参考点名称
		 * @return            抛出错误，返回null
		 *
		 */
		override public function getCurrReferPointByName(pointName:String):PointElementData
		{
			throw new Error("as_core_1451031566_664");
			return null;
		}

		/**
		 * 根据动作名称和动作帧，获取参考点列表
		 * @param actionName    动做名称
		 * @param frame            动作帧
		 * @return                参考点列表
		 *
		 */
		override public function getReferPointsFromAction(actionName:String, frame:int):Array
		{
			var arr:Array = [];
			var f:int = frame;
			if (f == -1)
			{
				f = this.currFrame;
			}

			if (_frameBitmapDatas)
			{
				var rbds:Array = this.currActionName == actionName ? _frameBitmapDatas : _flaData.getAction(actionName);

				for each(var tmp:FlaFrameBitmapData in rbds)
				{
					if (tmp.index <= f && tmp.index + tmp.length > f)
					{
						return tmp.referPointDatas || arr;
					}
				}
			}
			else
			{
				var datamc:MovieClip = MmeAsset.createObject(actionName + "_Data", _appDomain) as MovieClip;
				if (datamc)
				{
					datamc.gotoAndStop(f + 1);

//					var arr:Array = [];
					for (var i:int = datamc.numChildren - 1; i >= 0; i--)
					{
						var rp:DisplayObject = datamc.getChildAt(i);
						if (rp.name.indexOf("referPoint") == 0)
						{
							var ped:PointElementData = new PointElementData();
							ped.x = rp.x;
							ped.y = rp.y;
							arr.push(ped);
						}
					}
					return arr;
				}
			}
			return arr;
		}

		/**
		 * 根据动作名称、动作帧和参考点名称，获取参考点数据
		 * @param actionName    动做名称
		 * @param frame            动作帧
		 * @param pointName        参考点名称
		 * @return                抛出错误，返回null
		 *
		 */
		override public function getReferPointFromActionByName(actionName:String, frame:int, pointName:String):PointElementData
		{
			throw new Error("as_core_1451031566_665");
			return null;
		}

		/**
		 * 获取事件索引列表
		 * @param actionName    动作名称
		 * @param eventName        事件名称
		 * @param maxNum        最大数量
		 * @return                事件索引列表
		 *
		 */
		override public function eventIndexOf(actionName:String, eventName:String, maxNum:int = 1):Array
		{
			var es:Array;
			if (actionName == this.currActionName)
			{
				es = _events;
			}
			else
			{
				var datamc:MovieClip = MmeAsset.createObject(actionName + "_Data", _appDomain) as MovieClip;
				if (datamc)
				{
					es = createEvents(datamc);
				}
			}

			var arr:Array = [];
			for each(var ffed:FlaFrameEventData in es)
			{
				var tmpEvts:Array = ffed.event.split(",");
				if (tmpEvts.indexOf(eventName) != -1)
				{
					arr.push(ffed.index);
					if (maxNum > 0 && arr.length >= maxNum)
					{
						return arr;
					}
				}
			}
			return arr;
		}

		/**
		 * fla事件
		 * @param event
		 *
		 */
		private function onFlaEvent(event:Event):void
		{
			var eventName:String = event["name"];
			var eventParam:String = event["param"];

			var re:MmeAssetRenderEvent = new MmeAssetRenderEvent(MmeAssetRenderEvent.FRAME_EVENT, eventName);
			re.param = eventParam;
			this.render.dispatchEvent(re);
		}

		/**
		 * 刷新
		 *
		 */
		override internal function update():void
		{
			if (_frameBitmapDatas)
			{
				updateFrameBitmapData();
			}
			else if (_mc)
			{
				updateMc();
			}
		}

		/**
		 * 每帧刷新位图
		 *
		 */
		private function updateFrameBitmapData():void
		{
			if (_frameBitmap)
			{
				_frameBitmap.bitmapData = null;
			}
			else
			{
				_frameBitmap = new Bitmap();
				this.render.addChild(_frameBitmap);
			}

//			if(!shape)
//			{
//				shape = new Shape();
//				render.addChild(shape);
//			}else
//			{
//				shape.graphics.clear();
//			}

			var fbd:FlaFrameBitmapData;
			for each(var tmp:FlaFrameBitmapData in _frameBitmapDatas)
			{
				if (tmp.index <= this.currFrame && tmp.index + tmp.length > this.currFrame)
				{
					fbd = tmp;
					break;
				}
			}

			if (fbd)
			{
				_frameBitmap.x = fbd.x;
				_frameBitmap.y = fbd.y;
				if (!fbd.bitmapData && fbd.bytes && fbd.width && fbd.height)
				{
					fbd.bitmapData = new BitmapData(fbd.width, fbd.height, true, 0);
					fbd.bitmapData.setPixels(new Rectangle(0, 0, fbd.width, fbd.height), fbd.bytes);
					fbd.bytes = null;
				}

				_frameBitmap.bitmapData = fbd.bitmapData;

//				shape.x = fbd.x;
//				shape.y = fbd.y;
//				if(fbd.width && fbd.height)
//				{
//					var bd:BitmapData = new BitmapData(fbd.width,fbd.height,true,0);
//					fbd.bytes.position = 0;
//					bd.setPixels(new Rectangle(0,0,fbd.width,fbd.height),fbd.bytes);
//					shape.graphics.beginBitmapFill(bd);
//					shape.graphics.drawRect(0,0,fbd.width,fbd.height);
//				}
			}
			else
			{
//				_frameBitmap.bitmapData = null;

			}

			updateEvent();
		}

		/**
		 * 销毁数据
		 *
		 */
		private function destroyFrameBitmapData():void
		{
			if (_frameBitmap)
			{
				_frameBitmap.bitmapData = null;
				if (_frameBitmap.parent)
				{
					_frameBitmap.parent.removeChild(_frameBitmap);
				}
				_frameBitmap = null;
			}
//			if(shape)
//			{
//				shape.graphics.clear();
//				if(shape.parent)
//				{
//					shape.parent.removeChild(shape);
//				}
//				shape = null;
//			}
		}

		/**
		 * 刷新fla影片剪辑
		 *
		 */
		private function updateMc():void
		{
			eachgoto(_mc);

			updateEvent();
		}

		/**
		 * 创建fla事件
		 * @param _mc    影片剪辑
		 * @return
		 *
		 */
		private function createEvents(mc:MovieClip):Array
		{
			var ffeds:Array = [];
			for each(var l:FrameLabel in mc.currentLabels)
			{
				if (l.name.indexOf("e:") == 0)
				{
					var ffed:FlaFrameEventData = new FlaFrameEventData();
					ffed.index = l.frame;
					ffed.event = l.name.substr(2);
					ffeds.push(ffed);
				}
			}
			return ffeds;
		}

		/**
		 * 刷新事件
		 *
		 */
		private function updateEvent():void
		{
			for each(var ffed:FlaFrameEventData in _events)
			{
				if (this.currFrame == ffed.index)
				{
					var esarr:Array = ffed.event.split(",");
					for each(var e:String in esarr)
					{
						var earr:Array = e.split(":");
						if (earr.length > 0)
						{
							var re:MmeAssetRenderEvent = new MmeAssetRenderEvent(MmeAssetRenderEvent.FRAME_EVENT, earr[0]);
							if (earr.length > 1)
							{
								re.param = earr[1];
							}
							this.render.dispatchEvent(re);
						}
					}
				}
			}
		}

		/**
		 * 定位到固定帧数
		 * @param _mc    影片剪辑
		 *
		 */
		private function eachgoto(mc:MovieClip):void
		{
//			_mc.gotoAndStop(currFrame);
			mc.gotoAndStop((this.currFrame % (this.currTotalFrame + 1)) + 1);

			var i:int = mc.numChildren;
			while (i--)
			{
				var imc:MovieClip = mc.getChildAt(i) as MovieClip;
				if (imc)
				{
					eachgoto(imc);
				}
			}
		}

		/**
		 * 销毁MovieClip
		 *
		 */
		private function destroyMc():void
		{
			if (_mc)
			{
				_mc.stop();
				_mc.removeEventListener("FlaEvent", onFlaEvent);
				if (_mc.parent)
				{
					_mc.parent.removeChild(_mc);
				}
				_mc = null;
			}
		}

		/**
		 * 销毁
		 *
		 */
		override public function destroy():void
		{
			destroyMc();
			destroyFrameBitmapData();

			this.currFrame = -1;
			_mmeAsset = null;
			_appDomain = null;
			_events = null;
			_frameBitmapDatas = null;

			_flaData = null;

			super.destroy();
		}
	}
}