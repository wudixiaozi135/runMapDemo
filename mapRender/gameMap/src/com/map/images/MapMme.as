package com.map.images
{
	import com.map.consDef.NpcAssetDef;
	import com.map.data.MapMgImgInfo;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRender;
	import com.tencent.morefun.naruto.mmefile.render.MmeAssetRenderEvent;

	import flash.display.DisplayObjectContainer;

	public class MapMme extends MmeAssetRender
	{
		private var _cfg:MapMgImgInfo;
		private var _url:String;
		private var _isInViewpoint:Boolean;
		private var _parent:DisplayObjectContainer;
		private var _loadStarted:Boolean;
		private var _currActionName:String;
		private var _isPlaying:Boolean;
		private var _isActive:Boolean = true;

		public function MapMme(cfg:MapMgImgInfo, parent:DisplayObjectContainer)
		{
			super(NpcAssetDef.MME_ASSET);

			_cfg = cfg;
			_url = _cfg.url;
			_parent = parent;

			alpha = cfg.alpha;
		}

		public function get isActive():Boolean
		{
			return _isActive;
		}

		public function set isActive(value:Boolean):void
		{
			_isActive = value;
			checkPlay();
		}

		public function get cfg():MapMgImgInfo
		{
			return _cfg;
		}

		public function get url():String
		{
			return _url;
		}

		public function inViewpoint():void
		{
			if (_isInViewpoint)
			{
				return;
			}
			_isInViewpoint = true;
			if (!parent)
			{
				_parent.addChild(this);
			}
			checkPlay();
			if (!_loadStarted)
			{
				_loadStarted = true;
				addEventListener(MmeAssetRenderEvent.READY, onReady);
				loadUrl(cfg.url);
			}

		}

		protected function onReady(event:MmeAssetRenderEvent):void
		{
			removeEventListener(MmeAssetRenderEvent.READY, onReady);

			var names:Array = getActionNames();
			if (names.length > 0)
			{
				_currActionName = names[0];
				checkPlay();
			}
		}

		protected function checkPlay():void
		{
			//如果没有加载完，直接退出，，加载完了还会调到这里来
			if (_currActionName == null)
			{
				return;
			}
			if (_isInViewpoint && isActive)
			{
				if (getCurrFrame() == -1)
				{
					play(_currActionName, cfg.startFrame, true);
				} else
				{
					play(_currActionName, getCurrFrame(), true);
				}
			} else
			{
				stop();
			}
		}

		public function outViewpoint():void
		{
			if (_isInViewpoint == false)
			{
				return;
			}
			_isInViewpoint = false;
			if (parent)
			{
				parent.removeChild(this);
			}
			checkPlay();
		}

		override public function destroy():void
		{
			outViewpoint();
			removeEventListener(MmeAssetRenderEvent.READY, onReady);
			_cfg = null;
			_parent = null;
			super.destroy();
		}
	}
}