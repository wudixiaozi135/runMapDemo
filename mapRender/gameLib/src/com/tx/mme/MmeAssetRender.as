package com.tx.mme
{
	import com.tx.loader.LoadManager;
	import com.tx.loader.def.LoaderDef;
	import com.tx.loader.pub;
	import com.tx.mme.data.MmeData;
	import com.tx.mme.data.PointElementData;

	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.system.ApplicationDomain;

	use namespace pub;

	/**
	 * 资源已准备好
	 */
	[Event(name="ready", type="com.tx.mme.MmeAssetRenderEvent")]

	/**
	 * 资源加载错误
	 */
	[Event(name="loadError", type="com.tx.mme.MmeAssetRenderEvent")]

	/**
	 * 每帧执行事件
	 */
	[Event(name="frameEvent", type="com.tx.mme.MmeAssetRenderEvent")]

	/**
	 * 动作播放完成
	 */
	[Event(name="playEnd", type="com.tx.mme.MmeAssetRenderEvent")]

	/**
	 * 帧上声音事件
	 */
	[Event(name="frameSound", type="com.tx.mme.MmeAssetRenderEvent")]

	/**
	 * 渲染器
	 * @author    Leowu
	 * @version    2016/7/18
	 */
	public class MmeAssetRender extends Sprite
	{
		/** 加载器 */
		private static const loaderManager:LoadManager = LoadManager.getManager(LoaderDef.MME_ASSETS);
		{
			if (MmeAssetRender.loaderManager.pub::log == null)
			{
				MmeAssetRender.loaderManager.pub::log = trace;
			}
		}

		private static var shape:Shape = new Shape();			//绘制Shape

		internal var referPointVisible:Boolean = false;			//参考点是否显示

		private var _mmeData:MmeData;							//资源数据
		private var _url:String;								//资源地址
		private var _appDomain:ApplicationDomain;				//资源

		private var _currFrame:int = -1;						//当前动作当前帧
		private var _totalFrame:int = 0;						//当前动作总帧数
		private var _loop:Boolean = false;						//是否循环播放
		private var _frameRate:int = 24;						//舞台帧频
		private var _mmeAsset:MmeAsset;							//资源提供者
		private var _manualEnterFramePlayEnd:Boolean = false;	//手动驱动一次EnterFrame
		private var _innerRenderer:BaseInnerRenderer;			//内部渲染类
		private var _enterFrameCount:int;						//次数

		/**
		 * Mme资源播放器 构造方法
		 * @param mmeAsset    资源缓存类，如果需要单独为某些资源缓存及释放资源，可以设置mmeAsset
		 *
		 */
		public function MmeAssetRender(mmeAsset:MmeAsset = null)
		{
			this.setMmeAsset(mmeAsset);
		}

		/**
		 * 是否准备好
		 * @return    是=true
		 *
		 */
		public function get isReady():Boolean
		{
			return _innerRenderer != null;
		}

		/**
		 * 设置x坐标（为了让幻影层和位图分离）
		 * @param value
		 *
		 */
		override public function set x(value:Number):void
		{
			if (_innerRenderer is AdvancedRenderer)
			{
				AdvancedRenderer(_innerRenderer).bitmapLayer.x = value;
			}
			else
			{
				super.x = value;
			}
		}

		/**
		 * 获取x坐标（为了让幻影层和位图分离）
		 * @return
		 *
		 */
		override public function get x():Number
		{
			if (_innerRenderer is AdvancedRenderer)
			{
				return AdvancedRenderer(_innerRenderer).bitmapLayer.x;
			}
			else
			{
				return super.x;
			}
		}

		/**
		 * 设置y坐标（为了让幻影层和位图分离）
		 * @param value
		 *
		 */
		override public function set y(value:Number):void
		{
			if (_innerRenderer is AdvancedRenderer)
			{
				AdvancedRenderer(_innerRenderer).bitmapLayer.y = value;
			}
			else
			{
				super.y = value;
			}
		}

		/**
		 * 获取y坐标（为了让幻影层和位图分离）
		 * @return
		 *
		 */
		override public function get y():Number
		{
			if (_innerRenderer is AdvancedRenderer)
			{
				return AdvancedRenderer(_innerRenderer).bitmapLayer.y;
			}
			else
			{
				return super.y;
			}
		}

		/**
		 * 设置scaleX（为了让幻影层和位图分离）
		 * @param value
		 *
		 */
		override public function set scaleX(value:Number):void
		{
			if (_innerRenderer is AdvancedRenderer)
			{
				AdvancedRenderer(_innerRenderer).bitmapLayer.scaleX = value;
			}
			else
			{
				super.scaleX = value;
			}
		}

		/**
		 * 获取scaleX（为了让幻影层和位图分离）
		 * @return
		 *
		 */
		override public function get scaleX():Number
		{
			if (_innerRenderer is AdvancedRenderer)
			{
				return AdvancedRenderer(_innerRenderer).bitmapLayer.scaleX;
			}
			else
			{
				return super.scaleX;
			}
		}

		/**
		 * 设置scaleY（为了让幻影层和位图分离）
		 * @param value
		 *
		 */
		override public function set scaleY(value:Number):void
		{
			if (_innerRenderer is AdvancedRenderer)
			{
				AdvancedRenderer(_innerRenderer).bitmapLayer.scaleY = value;
			}
			else
			{
				super.scaleY = value;
			}
		}

		/**
		 * 获取scaleY（为了让幻影层和位图分离）
		 * @return
		 *
		 */
		override public function get scaleY():Number
		{
			if (_innerRenderer is AdvancedRenderer)
			{
				return AdvancedRenderer(_innerRenderer).bitmapLayer.scaleY;
			}
			else
			{
				return super.scaleY;
			}
		}

		/**
		 * 设置旋转角度（为了让幻影层和位图分离）
		 * @return
		 *
		 */
		override public function set rotation(value:Number):void
		{
			if (_innerRenderer is AdvancedRenderer)
			{
				AdvancedRenderer(_innerRenderer).bitmapLayer.rotation = value;
			}
			else
			{
				super.rotation = value;
			}
		}

		/**
		 * 获取旋转角度（为了让幻影层和位图分离）
		 * @return
		 *
		 */
		override public function get rotation():Number
		{
			if (_innerRenderer is AdvancedRenderer)
			{
				return AdvancedRenderer(_innerRenderer).bitmapLayer.rotation;
			}
			else
			{
				return super.rotation;
			}
		}

		/**
		 * 获得stage的帧频
		 * @return stage帧频
		 *
		 */
		private function get stageFrameRate():int
		{
			if (stage != null)
			{
				return stage.frameRate;
			}
			else
			{
				return 24;
			}
		}

		/**
		 * 跳转到指定动作，指定帧
		 * @param action    动作名称
		 * @param frame        帧数
		 * @param stop        是否暂停播放
		 * @return            是否成功
		 *
		 */
		public function gotoAction(action:String, frame:int = 0, stop:Boolean = false):Boolean
		{
			if (!_innerRenderer)
			{
				return false;
			}
			var r:Boolean = _innerRenderer.gotoAction(action, frame);
			if (!r)
			{
				return false;
			}
			if (stop)
			{
				_enterFrameCount = 0;
				this.stop();
			}

			_currFrame = frame;
			_totalFrame = _innerRenderer.getCurrTototalFrame();
			if (_currFrame == _totalFrame)
			{
				_manualEnterFramePlayEnd = true;
			}
			else
			{
				_manualEnterFramePlayEnd = false;
			}

			return true;
		}

		/**
		 * 播放指定动作名称
		 * @param action    动作名称
		 * @param frame        帧数
		 * @param loop        是否循环
		 * @return            是否成功
		 *
		 */
		public function play(action:String, frame:int = 0, loop:Boolean = false):Boolean
		{
			_loop = loop;
			var r:Boolean = this.gotoAction(action, frame);
			if (r)
			{
				shape.removeEventListener(Event.ENTER_FRAME, dispatchPlayEnd);
				_enterFrameCount = 0;
				shape.addEventListener(Event.ENTER_FRAME, onEnterFrame);
			}
			return r;
		}

		/**
		 * 暂停播放
		 *
		 */
		public function stop():void
		{
			shape.removeEventListener(Event.ENTER_FRAME, dispatchPlayEnd);
			shape.removeEventListener(Event.ENTER_FRAME, onEnterFrame);
		}

		/**
		 * 每帧执行函数
		 * @param e
		 *
		 */
		private function onEnterFrame(e:Event):void
		{
			_enterFrameCount++;
			var fr:int = _frameRate || _mmeData.frameRate;
			var v:int = _enterFrameCount % (stageFrameRate / fr);
			if (v != 0)
			{
				return;
			}
			if (_currFrame == -1)
			{
				return;
			}
			var prevFrame:int = _currFrame;
			calculateUpdate();
			if (_currFrame == _totalFrame)
			{
				!_loop && this.stop();
				if (prevFrame != _currFrame || _totalFrame == 0)
				{
					shape.addEventListener(Event.ENTER_FRAME, dispatchPlayEnd);
					if (_loop)
					{
						shape.removeEventListener(Event.ENTER_FRAME, onEnterFrame);
						shape.addEventListener(Event.ENTER_FRAME, onEnterFrame);
					}
				}
			}
		}

		/**
		 * 抛出动作播放结束事件
		 * @param e
		 *
		 */
		private function dispatchPlayEnd(e:Event):void
		{
			if (e)
			{
				shape.removeEventListener(Event.ENTER_FRAME, dispatchPlayEnd);
			}
			if (hasEventListener(MmeAssetRenderEvent.PLAY_END))
			{
				this.dispatchEvent(new MmeAssetRenderEvent(MmeAssetRenderEvent.PLAY_END));
			}
		}

		/**
		 * 手动执行一次enterFrame
		 *
		 */
		public function manualEnterFrame():void
		{
			if (_manualEnterFramePlayEnd)
			{
				_manualEnterFramePlayEnd = false;
				var event:MmeAssetRenderEvent = new MmeAssetRenderEvent(MmeAssetRenderEvent.PLAY_END);
				this.dispatchEvent(event);
				if (event.isStopUpdated)
				{
					return;
				}
			}

			if (_currFrame == -1)
			{
				return;
			}
			var prevFrame:int = _currFrame;
			calculateUpdate();
			if (_currFrame == _totalFrame && (prevFrame != _currFrame || _totalFrame == 0))
			{
				_manualEnterFramePlayEnd = true;
			}
		}

		/**
		 * 刷新
		 *
		 */
		private function calculateUpdate():void
		{
			var nf:int = _currFrame + 1;
			if (nf > _totalFrame)
			{
				nf = _loop ? 0 : _totalFrame;
			}
			if (nf != _currFrame)
			{
				_currFrame = nf;
				update();
			}
		}

		/**
		 * 刷新
		 *
		 */
		private function update():void
		{
			if (!_innerRenderer)
			{
				return;
			}
			_innerRenderer.setCurrFrame(_currFrame);
			_innerRenderer.update();
		}


		/**
		 * 加载一个mmeData,appDomain
		 * @param mmeData    资源数据
		 * @param appDomain    程序域
		 *
		 */
		public function loadMmeData(mmeData:MmeData, appDomain:ApplicationDomain):void
		{
			_mmeData = mmeData;
			_appDomain = appDomain;

			this.destroyInnerRenderer();

			if (mmeData.advanced)
			{
				_innerRenderer = new AdvancedRenderer(this, mmeData, _mmeAsset, appDomain);
				this.x = super.x;
				this.y = super.y;
				super.x = super.y = 0;
			}
			else
			{
				_innerRenderer = new SimpleInnerRenderer(this, mmeData, _mmeAsset, appDomain);
			}

			this.dispatchEvent(new MmeAssetRenderEvent(MmeAssetRenderEvent.READY));
		}

		/**
		 * 加载fla
		 * @param appDomain    资源
		 *
		 */
		private function loadFla(appDomain:ApplicationDomain):void
		{
			this._appDomain = appDomain;
			this.destroyInnerRenderer();

			_innerRenderer = new FlaInnerRenderer(this, _mmeAsset, appDomain);

			this.dispatchEvent(new MmeAssetRenderEvent(MmeAssetRenderEvent.READY));
		}

		/**
		 * 加载一个appDomain
		 * @param appDomain    程序域
		 * @param url        资源url
		 *
		 */
		public function load(appDomain:ApplicationDomain, url:String = null):void
		{
			if (MmeAsset.hasObject(MmeAsset.KEY_CONFIG, appDomain))
			{
				var mmeData:MmeData = _mmeAsset.getMmeData(appDomain, url);
				this.loadMmeData(mmeData, appDomain);
			}
			else
			{
				this._mmeData = null;
				loadFla(appDomain);
			}
		}

		/**
		 * 根据url地址进行加载
		 * @param url    资源地址
		 *
		 */
		public function loadUrl(url:String):void
		{
			this.destroyLoader();
			if (url)
			{
				_url = url;
				var appDomain:ApplicationDomain = _mmeAsset.getAppDomain(url);
				if (appDomain)
				{
					this.load(appDomain, url);
				}
				else
				{
					MmeAssetRender.loaderManager.loadTask(url, this.onLoader, null, new ApplicationDomain());
				}

			}
		}

		/**
		 * 加载url并且自动循环播放
		 * @param url    资源地址
		 *
		 */
		public function loadUrlAndAutoPlay(url:String):void
		{
			if (url)
			{
				this.addEventListener(MmeAssetRenderEvent.READY, onAutoPlayReady, false, 100);
				this.addEventListener(MmeAssetRenderEvent.LOAD_ERROR, onAutoPlayReady, false, 100);
				this.loadUrl(url);
			}
		}

		/**
		 * 自动循环播放
		 * @param e
		 *
		 */
		private function onAutoPlayReady(e:MmeAssetRenderEvent):void
		{
			this.removeEventListener(MmeAssetRenderEvent.READY, onAutoPlayReady);
			this.removeEventListener(MmeAssetRenderEvent.LOAD_ERROR, onAutoPlayReady);
			switch (e.type)
			{
				case MmeAssetRenderEvent.READY://资源已准备好
					if (_mmeData && _mmeData.actionDatas.length > 0)
					{
						play(_mmeData.actionDatas[0].name, 0, true);
					}
					break;
				case MmeAssetRenderEvent.LOAD_ERROR://资源加载错误

					break;
			}
		}

		/**
		 * 加载中
		 * @param loader    加载器
		 * @param url        资源地址
		 * @param tween
		 *
		 */
		private function onLoader(loader:Loader, url:String, tween:Boolean = true):void
		{
			if (loader && url == _url)
			{
				var loaderInfo:LoaderInfo = loader.contentLoaderInfo;
				this.load(loaderInfo.applicationDomain, url);
			}
			else
			{
				this.dispatchEvent(new MmeAssetRenderEvent(MmeAssetRenderEvent.LOAD_ERROR));
			}
		}

		/**
		 * 销毁加载器
		 *
		 */
		private function destroyLoader():void
		{
			MmeAssetRender.loaderManager.killCompleteCallback(_url, onLoader);
			MmeAssetRender.loaderManager.releaseAsset(_url);
		}

		/**
		 * 检索 eventName 在 actionName 里的帧下标
		 * @param actionName    动作名称
		 * @param eventName        事件名称
		 * @param maxNum        最大个数
		 * @return                返回数组
		 *
		 */
		public function eventIndexOf(actionName:String, eventName:String, maxNum:int = 1):Array
		{
			return _innerRenderer.eventIndexOf(actionName, eventName, maxNum);
		}

		/**
		 * 获得当前mmeData
		 * @return 当前mmeData
		 *
		 */
		public function getMmeData():MmeData
		{
			return _mmeData;
		}

		/**
		 * 获得当前appDomain
		 * @return 当前appDomain
		 *
		 */
		public function getAppDomain():ApplicationDomain
		{
			return _appDomain;
		}

		/**
		 * 获得所有动作名称
		 * @return    动作名称数组
		 *
		 */
		public function getActionNames():Array
		{
			return _innerRenderer.getActionNames();
		}

		/**
		 * 是否存在指定动作名
		 * @param name    指定动作名
		 * @return        是否存在
		 *
		 */
		public function hasActionName(name:String):Boolean
		{
			return _innerRenderer.hasActionName(name);
		}

		/**
		 * 获取当前动作名称
		 * @return 当前动作名称
		 *
		 */
		public function getCurrActionName():String
		{
			return _innerRenderer.getCurrActionName();
		}

		/**
		 * 获得当前帧
		 * @return 当前帧
		 *
		 */
		public function getCurrFrame():int
		{
			return _currFrame;
		}

		/**
		 * 设置当前loop 一般在manulEnterFrame时需要考虑这个参数
		 * @param value
		 *
		 */
		public function setLoop(value:Boolean):void
		{
			_loop = value;
		}

		/**
		 * 获取是否循环播放
		 * @return 是=true
		 *
		 */
		public function getLoop():Boolean
		{
			return _loop;
		}

		/**
		 * 获得当前动作的总帧数
		 * @return 当前动作的总帧数
		 *
		 */
		public function getTotalFrame():int
		{
			return _totalFrame;
		}

		/**
		 * 获得指定动作的总帧数
		 * @param name    指定动作名称
		 * @return        总帧数
		 *
		 */
		public function getTotalFrameByActionName(name:String):int
		{
			return _innerRenderer.getTotalFrameByActionName(name);
		}

		/**
		 * 设置参考点是否显示
		 * @param v    是否显示
		 *
		 */
		public function setReferPointVisible(v:Boolean):void
		{
			this.referPointVisible = v;
		}

		/**
		 * 获得参考点是否显示
		 * @return
		 *
		 */
		public function getReferPointVisible():Boolean
		{
			return this.referPointVisible;
		}

		/**
		 * 获得当前参考点
		 * @return 当前参考点数组
		 *
		 */
		public function getCurrReferPoints():Array
		{
			return _innerRenderer.getCurrReferPoints();
		}

		/**
		 * 获得当前指定名称的参考点
		 * @param pointName 指定参考点名称
		 * @return            参考点
		 */
		public function getCurrReferPointByName(pointName:String):PointElementData
		{
			return _innerRenderer.getCurrReferPointByName(pointName);
		}

		/**
		 * 获得指定动作指定帧的参考点
		 * @param actionName    指定动作名
		 * @param frame            指定帧
		 * @return                参考点数组
		 *
		 */
		public function getReferPointsFromAction(actionName:String, frame:int):Array
		{
			return _innerRenderer.getReferPointsFromAction(actionName, frame);
		}

		/**
		 * 获得指定名称、指定动作指定帧的参考点
		 * @param actionName    指定动作名
		 * @param frame            指定帧
		 * @param pointName        指定参考点名称
		 * @return                参考点
		 */
		public function getReferPointFromActionByName(actionName:String, frame:int, pointName:String):PointElementData
		{
			return _innerRenderer.getReferPointFromActionByName(actionName, frame, pointName);
		}

		/**
		 * 设置播放帧频，PS.该帧帧频小于等于stage帧频
		 * @param value
		 *
		 */
		public function setFrameRate(value:int):void
		{
			_frameRate = value;
		}

		/**
		 * 获得当前帧频
		 * @return 当前帧频
		 *
		 */
		public function getFrameRate():int
		{
			return _frameRate;
		}

		/**
		 * 设置资源提供者
		 * @param value
		 *
		 */
		public function setMmeAsset(value:MmeAsset):void
		{
			_mmeAsset = value || MmeAsset.mmeAsset;
		}

		/**
		 * 获取资源提供者
		 * @return
		 *
		 */
		public function getMmeAsset():MmeAsset
		{
			return _mmeAsset;
		}

		/**
		 * 卸载全部
		 *
		 */
		public function unload():void
		{
			this.stop();
			this.destroyInnerRenderer();
			this.destroyLoader();
			this.removeEventListener(MmeAssetRenderEvent.READY, onAutoPlayReady);
			this.removeEventListener(MmeAssetRenderEvent.LOAD_ERROR, onAutoPlayReady);
			_currFrame = -1;
			_totalFrame = 0;
			_mmeData = null;
			_url = null;
			_appDomain = null;
		}

		/**
		 * 销毁内部渲染器
		 *
		 */
		internal function destroyInnerRenderer():void
		{
			if (_innerRenderer)
			{
				_innerRenderer.destroy();
				_innerRenderer = null;
			}
		}

		/**
		 * 摧毁全部
		 *
		 */
		public function destroy():void
		{
			this.unload();
			if (this.parent)
			{
				this.parent.removeChild(this);
			}
			_mmeAsset = null;
		}

		/**
		 * 碰撞检测
		 * @param x            碰撞点x坐标
		 * @param y            碰撞点y坐标
		 * @param shapeFlag
		 * @return            碰撞=true,未碰撞=false
		 *
		 */
		override public function hitTestPoint(x:Number, y:Number, shapeFlag:Boolean = false):Boolean
		{
			if (!shapeFlag)
			{
				return super.hitTestPoint(x, y, shapeFlag);
			}
			if (_innerRenderer && _innerRenderer is SimpleInnerRenderer)
			{
				return SimpleInnerRenderer(_innerRenderer).hitTestPoint(x, y);
			}
			else
			{
				return super.hitTestPoint(x, y, shapeFlag);
			}
		}
	}
}
