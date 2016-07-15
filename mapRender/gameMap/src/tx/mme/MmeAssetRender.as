package tx.mme
{
	import flash.display.Loader;
	import flash.display.LoaderInfo;
	import flash.display.Shape;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.system.ApplicationDomain;
	
	import tx.loader.LoadManager;
	import tx.loader.def.LoaderDef;
	import tx.loader.pub;
	
	import tx.mme.datas.MmeData;
	import tx.mme.datas.PointElementData;

	[Event(name="ready", type="tx.mme.MmeAssetRenderEvent")]
	[Event(name="loadError", type="tx.mme.MmeAssetRenderEvent")]
	[Event(name="frameEvent", type="tx.mme.MmeAssetRenderEvent")]
	[Event(name="playEnd", type="tx.mme.MmeAssetRenderEvent")]
	[Event(name="frameSound", type="tx.mme.MmeAssetRenderEvent")]
	public class MmeAssetRender extends Sprite
	{
		private static const loaderManager:LoadManager = LoadManager.getManager(LoaderDef.MME_ASSETS);
		{
			if (MmeAssetRender.loaderManager.pub::log == null)
			{
				MmeAssetRender.loaderManager.pub::log = trace;
			}
		}
		
		private var mmeData:MmeData;
		private var url:String;
		private var appDomain:ApplicationDomain;
		
		
		private var currFrame:int = -1;
		private var totalFrame:int = 0;
		private var loop:Boolean = false;
		private var frameRate:int = 24;
		private var mmeAsset:MmeAssetEx;
		private var manualEnterFramePlayEnd:Boolean = false;
		private var innerRenderer:BaseInnerRenderer;
		
		private static var shape:Shape = new Shape();
		
		/**
		 * Mme资源播放器 构造方法
		 * @param mmeAsset 资源缓存类，如果需要单独为某些资源缓存及释放资源，可以设置mmeAsset
		 * @see MmeAssetEx
		 * @see MmeAssetBitmap
		 */
		public function MmeAssetRender(mmeAsset:MmeAssetEx=null)
		{
			setMmeAsset(mmeAsset);
		}
		
		/**
		 * 重写x 为了让幻影层和位图分离
		 */
		override public function set x(value:Number):void
		{
			if(innerRenderer is AdvancedRenderer)
			{
				AdvancedRenderer(innerRenderer).bitmapLayer.x = value;
			}else
			{
				super.x = value;
			}
		}
		
		override public function get x():Number
		{
			if(innerRenderer is AdvancedRenderer)
			{
				return AdvancedRenderer(innerRenderer).bitmapLayer.x;
			}else
			{
				return super.x;
			}
		}
		
		/**
		 * 重写y 为了让幻影层和位图分离
		 */
		override public function set y(value:Number):void
		{
			if(innerRenderer is AdvancedRenderer)
			{
				AdvancedRenderer(innerRenderer).bitmapLayer.y = value;
			}else
			{
				super.y = value;
			}
		}
		
		override public function get y():Number
		{
			if(innerRenderer is AdvancedRenderer)
			{
				return AdvancedRenderer(innerRenderer).bitmapLayer.y;
			}else
			{
				return super.y;
			}
		}
		
		override public function set scaleX(value:Number):void
		{
			if(innerRenderer is AdvancedRenderer)
			{
				AdvancedRenderer(innerRenderer).bitmapLayer.scaleX = value;
			}else
			{
				super.scaleX = value;
			}
		}
		
		override public function get scaleX():Number
		{
			if(innerRenderer is AdvancedRenderer)
			{
				return AdvancedRenderer(innerRenderer).bitmapLayer.scaleX;
			}else
			{
				return super.scaleX;
			}
		}
		
		override public function set scaleY(value:Number):void
		{
			if(innerRenderer is AdvancedRenderer)
			{
				AdvancedRenderer(innerRenderer).bitmapLayer.scaleY = value;
			}else
			{
				super.scaleY = value;
			}
		}
		
		override public function get scaleY():Number
		{
			if(innerRenderer is AdvancedRenderer)
			{
				return AdvancedRenderer(innerRenderer).bitmapLayer.scaleY;
			}else
			{
				return super.scaleY;
			}
		}
		
		override public function set rotation(value:Number):void
		{
			if(innerRenderer is AdvancedRenderer)
			{
				AdvancedRenderer(innerRenderer).bitmapLayer.rotation = value;
			}else
			{
				super.rotation = value;
			}
		}
		
		override public function get rotation():Number
		{
			if(innerRenderer is AdvancedRenderer)
			{
				return AdvancedRenderer(innerRenderer).bitmapLayer.rotation;
			}else
			{
				return super.rotation;
			}
		}
		
		public function get isReady():Boolean
		{
			return innerRenderer!=null;
		}
		
		
		/**
		 * 跳转到指定动作，指定帧
		 * @param action 动作名称
		 * @param frame 帧数
		 * @param stop 是否暂停播放
		 * @return 是否成功
		 */
		public function gotoAction(action:String,frame:int=0,stop:Boolean=false):Boolean
		{
			if(!innerRenderer)
			{
				return false;
			}
			var r:Boolean = innerRenderer.gotoAction(action,frame);
			if(!r)
			{
				return false;
			}
			if(stop)
			{
				enterFrameCount = 0;
				this.stop();
			}
			
			currFrame = frame;
			totalFrame = innerRenderer.getCurrTototalFrame();
			if(currFrame == totalFrame)
			{
				manualEnterFramePlayEnd = true;
			}else
			{
				manualEnterFramePlayEnd = false;
			}
			
			
			return true;
		}
		
		/**
		 * 播放指定动作名称
		 * @param action 动作名称
		 * @param frame 帧数
		 * @param loop 是否循环
		 * @return  是否成功 
		 * 
		 */		
		public function play(action:String,frame:int=0,loop:Boolean=false):Boolean
		{
			this.loop = loop;
			var r:Boolean = gotoAction(action,frame);
			if(r)
			{
				shape.removeEventListener(Event.ENTER_FRAME,dispatchPlayEnd);
				enterFrameCount = 0;
				shape.addEventListener(Event.ENTER_FRAME,onEnterFrame);
			}
			return r;
		}
		/**
		 * 暂停播放
		 */		
		public function stop():void
		{
			shape.removeEventListener(Event.ENTER_FRAME,dispatchPlayEnd);
			shape.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
		}
		
		/**
		 * 获得stage的帧频
		 * @return stage帧频
		 */
		private function get stageFrameRate():int
		{
			if(stage!=null)
			{
				return stage.frameRate;
			}else
			{
				return 24;
			}
		}
			
		private var enterFrameCount:int;
		private function onEnterFrame(e:Event):void
		{
			enterFrameCount++;
			var fr:int = frameRate||mmeData.frameRate;
			var v:int = enterFrameCount%(stageFrameRate/fr);
			if(v!=0)
			{
				return;
			}
			if(currFrame == -1)
			{
				return;
			}
			var prevFrame:int = currFrame;
			calculateUpdate();
			if(currFrame == totalFrame)
			{
				!loop && stop();
				if(prevFrame != currFrame || totalFrame == 0)
				{
					shape.addEventListener(Event.ENTER_FRAME,dispatchPlayEnd);
					if(loop)
					{
						shape.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
						shape.addEventListener(Event.ENTER_FRAME,onEnterFrame);
					}
				}
			}
		}
		
		private function dispatchPlayEnd(e:Event):void
		{
			if(e)
			{
				shape.removeEventListener(Event.ENTER_FRAME,dispatchPlayEnd);
			}
			if(hasEventListener(MmeAssetRenderEvent.PLAY_END))
			{
				dispatchEvent(new MmeAssetRenderEvent(MmeAssetRenderEvent.PLAY_END));
			}
		}
		
		/**
		 * 手动执行一次enterFrame
		 */
		public function manualEnterFrame():void
		{
			if(manualEnterFramePlayEnd)
			{
				manualEnterFramePlayEnd = false;
				var event:MmeAssetRenderEvent = new MmeAssetRenderEvent(MmeAssetRenderEvent.PLAY_END);
				dispatchEvent(event);
				if(event.isStopUpdated)
				{
					return;
				}
			}
			if(currFrame==-1)
			{
				return;
			}
			var prevFrame:int = currFrame;
			calculateUpdate();
			if(currFrame == totalFrame && (prevFrame != currFrame || totalFrame == 0))
			{
				manualEnterFramePlayEnd = true;
			}
		}
		
		
		private function calculateUpdate():void
		{
			var nf:int = currFrame +1;
			if(nf>totalFrame)
			{
				nf = loop?0:totalFrame;
			}
			if(nf!=currFrame)
			{
				currFrame = nf;
				update();
			}
		}
		
		private function update():void
		{
			if(!innerRenderer)
			{
				return;
			}
			innerRenderer.setCurrFrame(currFrame);
			innerRenderer.update();
		}
		
		
		/**
		 * 加载一个mmeData,appDomain
		 * @param mmeData
		 * @param appDomain
		 */
		public function loadMmeData(mmeData:MmeData,appDomain:ApplicationDomain):void
		{
			this.mmeData = mmeData;
			this.appDomain = appDomain;
			
			
			destroyInnerRenderer();
			
			
			if(mmeData.advanced)
			{
				innerRenderer = new AdvancedRenderer(this,mmeData,mmeAsset,appDomain);
				x = super.x;
				y = super.y;
				super.x = super.y = 0;
			}else
			{
				innerRenderer = new SimpleInnerRenderer(this,mmeData,mmeAsset,appDomain);
			}
			
			dispatchEvent(new MmeAssetRenderEvent(MmeAssetRenderEvent.READY));
		}
		
		private function loadFla(appDomain:ApplicationDomain):void
		{
			this.appDomain = appDomain;
			destroyInnerRenderer();
			
			innerRenderer = new FlaInnerRenderer(this,mmeAsset,appDomain);
			
			dispatchEvent(new MmeAssetRenderEvent(MmeAssetRenderEvent.READY));
		}
		
		/**
		 * 加载一个appDomain
		 * @param appDomain
		 */
		public function load(appDomain:ApplicationDomain,url:String=null):void
		{
			if(MmeAssetEx.hasObject(MmeAssetEx.KEY_CONFIG,appDomain) || MmeAssetEx.hasObject(MmeAssetEx.KEY_CONFIG_AMF,appDomain))
			{
				var mmeData:MmeData = mmeAsset.getMmeData(appDomain, url);
				loadMmeData(mmeData,appDomain);
			}
			else
			{
				this.mmeData = null;
				loadFla(appDomain);
			}
		}
		
		/**
		 * 加载url
		 * @param url
		 */
		public function loadUrl(url:String):void
		{
			this.destroyLoader();
			if (url)
			{
				this.url = url;
				var appDomain:ApplicationDomain = mmeAsset.getAppDomain(url);
				if (appDomain)
				{
					load(appDomain,url);
				}
				else
				{
					MmeAssetRender.loaderManager.loadTask(url, this.onLoader, null, new ApplicationDomain());
				}
				
			}
		}
		
		/**
		 * 加载url并且自动循环播放
		 * @param url
		 * 
		 */		
		public function loadUrlAndAutoPlay(url:String):void
		{
			if(url)
			{
				addEventListener(MmeAssetRenderEvent.READY,onAutoPlayReady,false,100);
				addEventListener(MmeAssetRenderEvent.LOAD_ERROR,onAutoPlayReady,false,100);
				loadUrl(url);
			}
		}
		
		private function onAutoPlayReady(e:MmeAssetRenderEvent):void
		{
			removeEventListener(MmeAssetRenderEvent.READY,onAutoPlayReady);
			removeEventListener(MmeAssetRenderEvent.LOAD_ERROR,onAutoPlayReady);
			switch(e.type)
			{
				case MmeAssetRenderEvent.READY:
					if(mmeData && mmeData.actionDatas.length > 0)
					{
						play(mmeData.actionDatas[0].name,0,true);
					}
					break;
				case MmeAssetRenderEvent.LOAD_ERROR:
					break;
			}
		}
		
		private function onLoader(loader:Loader, url:String, tween:Boolean = true):void
		{
			if (loader && url == this.url)
			{
				var loaderInfo:LoaderInfo = loader.contentLoaderInfo;
				this.load(loaderInfo.applicationDomain, url);
			}
			else
			{
				this.dispatchEvent(new MmeAssetRenderEvent(MmeAssetRenderEvent.LOAD_ERROR));
			}
		}
		
		private function destroyLoader():void
		{
			MmeAssetRender.loaderManager.killCompleteCallback(this.url, this.onLoader);
			MmeAssetRender.loaderManager.releaseAsset(this.url);
		}
		
		/**
		 * 检索 eventName 在 actionName 里的帧下标
		 * @param actionName	动作名称
		 * @param eventName		事件名称
		 * @param maxNum		最大个数
		 * @return 				返回数组
		 */
		public function eventIndexOf(actionName:String,eventName:String,maxNum:int=1):Array
		{
			return innerRenderer.eventIndexOf(actionName,eventName,maxNum);
		}
		
		/**
		 * 获得当前mmeData
		 * @return 当前mmeData
		 */
		public function getMmeData():MmeData
		{
			return mmeData;
		}
		/**
		 * 获得当前appDomain
		 * @return 当前appDomain
		 */		
		public function getAppDomain():ApplicationDomain
		{
			return appDomain;
		}
		
		/**
		 * 获得所有动作名称
		 * @return 动作名称数组
		 */
		public function getActionNames():Array
		{
			return innerRenderer.getActionNames();
		}
		
		/**
		 * 是否存在指定动作名
		 * @param name 指定动作名
		 * @return 是否存在
		 */		
		public function hasActionName(name:String):Boolean
		{
			return innerRenderer.hasActionName(name);
		}
		
		/**
		 * 获得当前动作名称
		 * @return 当前动作名称
		 */
		public function getCurrActionName():String
		{
			return innerRenderer.getCurrActionName();
		}
		
		/**
		 * 获得当前帧
		 * @return 当前帧
		 */		
		public function getCurrFrame():int
		{
			return currFrame;
		}
		
		/**
		 * 设置当前loop 一般在manulEnterFrame时需要考虑这个参数
		 * @param value
		 */
		public function setLoop(value:Boolean):void
		{
			this.loop = value;
		}
		
		public function getLoop():Boolean
		{
			return loop;
		}
		
		/**
		 * 获得当前动作的总帧数
		 * @return 当前动作的总帧数
		 */
		public function getTotalFrame():int
		{
			return totalFrame;
		}
		
		/**
		 * 获得指定动作的总帧数
		 * @param name 指定动作名称
		 * @return 总帧数
		 */
		public function getTotalFrameByActionName(name:String):int
		{
			return innerRenderer.getTotalFrameByActionName(name);
		}
		
		internal var referPointVisible:Boolean = false;
		/**
		 * 设置参考点是否显示
		 * @param v 是否显示
		 */
		public function setReferPointVisible(v:Boolean):void
		{
			referPointVisible = v;
		}
		/**
		 * 获得参考点是否显示
		 */
		public function getReferPointVisible():Boolean
		{
			return referPointVisible;
		}
		
		/**
		 * 获得当前参考点
		 * @return 当前参考点数组
		 */
		public function getCurrReferPoints():Array
		{
			return innerRenderer.getCurrReferPoints();
		}
		/**
		 * 获得当前指定名称的参考点
		 * @param pointName 指定参考点名称
		 * @return 参考点
		 */		
		public function getCurrReferPointByName(pointName:String):PointElementData
		{
			return innerRenderer.getCurrReferPointByName(pointName);
		}
		
		
		/**
		 * 获得指定动作指定帧的参考点
		 * @param actionName	指定动作名
		 * @param frame			指定帧
		 * @return  参考点数组
		 * 
		 */
		public function getReferPointsFromAction(actionName:String,frame:int):Array
		{
			return innerRenderer.getReferPointsFromAction(actionName,frame);
		}
		
		/**
		 *  获得指定名称、指定动作指定帧的参考点
		 * @param actionName 	指定动作名
		 * @param frame			指定帧
		 * @param pointName		指定参考点名称
		 * @return 参考点
		 */		
		public function getReferPointFromActionByName(actionName:String,frame:int,pointName:String):PointElementData
		{
			return innerRenderer.getReferPointFromActionByName(actionName,frame,pointName);
		}
		
		/**
		 * 设置播放帧频，PS.该帧帧频小于等于stage帧频
		 * @param value
		 */
		public function setFrameRate(value:int):void
		{
			this.frameRate = value;
		}
		/**
		 * 获得当前帧频
		 * @return 当前帧频
		 */
		public function getFrameRate():int
		{
			return this.frameRate;
		}
		
		public function setMmeAsset(value:MmeAssetEx):void
		{
			this.mmeAsset = value||MmeAssetEx.mmeAsset;
		}
		
		public function getMmeAsset():MmeAssetEx
		{
			return this.mmeAsset;
		}
		
		/**
		 * 卸载全部
		 */		
		public function unload():void
		{
			this.stop();
			this.destroyInnerRenderer();
			this.destroyLoader();
			this.removeEventListener(MmeAssetRenderEvent.READY,onAutoPlayReady);
			this.removeEventListener(MmeAssetRenderEvent.LOAD_ERROR,onAutoPlayReady);
			currFrame = -1;
			totalFrame = 0;
			mmeData = null;
			url = null;
			appDomain = null;
		}
		
		internal function destroyInnerRenderer():void
		{
			if(innerRenderer)
			{
				innerRenderer.destroy();
				innerRenderer = null;
			}
		}
		
		/**
		 * 摧毁全部
		 */
		public function destroy():void
		{
			unload();
			if(parent)
			{
				parent.removeChild(this);
			}
			mmeAsset = null;
		}
		
		override public function hitTestPoint(x:Number, y:Number, shapeFlag:Boolean=false):Boolean
		{
			if(!shapeFlag)
			{
				return super.hitTestPoint(x,y,shapeFlag);
			}
			if(innerRenderer && innerRenderer is SimpleInnerRenderer)
			{
				return SimpleInnerRenderer(innerRenderer).hitTestPoint(x,y);
			}else
			{
				return super.hitTestPoint(x,y,shapeFlag);
			}
		}
	}
}
