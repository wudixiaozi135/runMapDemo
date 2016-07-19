package com.map.player
{
	import com.map.element.BaseMapElement;
	import com.map.events.MapElementEvent;
	import com.map.player.datas.PlayerData;
	import com.map.player.def.MajorNinjaDef;
	import com.map.player.def.NinjaAssetDef;
	import com.map.player.events.PlayerDataEvent;
	import com.tx.mme.MmeAsset;
	import com.tx.mme.MmeAssetRender;
	import com.tx.mme.MmeAssetRenderEvent;
	import com.tx.mme.data.PointElementData;

	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.DisplayObject;
	import flash.filters.GlowFilter;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormat;

	public class BasePlayer extends BaseMapElement
	{
		protected var data:PlayerData;
		protected var resRenderer:MmeAssetRender;
		protected var currActionName:String = "idle_0";
		protected var headPos:Point;
		protected var nameTxt:TextField;
		protected var mmeAsset:MmeAsset;
		protected var isDisposed:Boolean;
		protected var _bodyVisible:Boolean = true;
		public var resNinjaId:int;

		protected static const MOSUE_OVER_FILTER:GlowFilter = new GlowFilter(0xFFFFFF);

		private static const SHADOW_BITMAP_DATA:BitmapData = null;//影子
		private var shadow:Bitmap;

		public function BasePlayer(mmeAsset:MmeAsset)
		{
			super();
			this.mmeAsset = mmeAsset;
		}

		override protected function onMouseOverElement(event:MapElementEvent):void
		{
			if (resRenderer)
			{
				resRenderer.filters = [mouseOverFilter];
			}
		}


		override protected function onMouseOutElement(event:MapElementEvent):void
		{
			if (resRenderer)
			{
				resRenderer.filters = null;
			}
		}

		override protected function get mouseOverFilter():GlowFilter
		{
			return MOSUE_OVER_FILTER;
		}

		protected function onPropertyUpdate(event:PlayerDataEvent):void
		{
			switch (event.property)
			{
				case PlayerData.PROPERTY_VIP_LEVEL:
					break;
				case PlayerData.PROPERTY_LEVEL:
				case PlayerData.PROPERTY_NAME:
					if (nameTxt)
					{
						updateNameText();
					}
					break;
				case PlayerData.PROPERTY_NINJA:
				case PlayerData.PROPERTY_SHOW_NINJA:
				case PlayerData.PROPERTY_FASHION_NINJA:
					if (resRenderer)
					{
						changeNinja();
					}
					break;
				case PlayerData.PROPERTY_WIN_STREAK_TIMES:
					break;
				case PlayerData.PROPERTY_TITLE:
					break;
				case PlayerData.PROPERTY_TASK_SIGN:
					break;
				case PlayerData.PROPERTY_KNOWLEDGE_SCORE:
					break;
			}
		}

		protected function changeNinja():void
		{
			destroyEntryEffect();
		}

		protected function changeNinja_startLoad():void
		{
			resRenderer.loadUrl("player.swf");
			return;
			if (data.showNinja == 0 || MajorNinjaDef.isMajorNinjaId(data.showNinja))
			{
				resRenderer.loadUrl(NinjaAssetDef.getAsset(NinjaAssetDef.AVATAR, data.fashionNinja || data.ninja));
				resNinjaId = data.fashionNinja || data.ninja;
			} else
			{
				resNinjaId = data.showNinja;
			}
		}

		protected function destroyEntryEffect():void
		{
		}

		public function getData():PlayerData
		{
			return data;
		}

		public function setData(data:PlayerData):void
		{
			this.data = data;
			this.data.addEventListener(PlayerDataEvent.PROPERTY_UPDATE, onPropertyUpdate);

			if (nameTxt)
			{
				if (data.name)
				{
					updateNameText();
				}
			}

			headPosUpdated();
		}

		public function destroyData():void
		{
			if (data)
			{
				data.removeEventListener(PlayerDataEvent.PROPERTY_UPDATE, onPropertyUpdate);
				data = null;
			}
		}

		protected var inited:Boolean = false;

		protected function initUI():void
		{
			if (inited)
			{
				return;
			}
			inited = true;
			initNameTxt();
			initVipIcon();
			initShadow();
			initWinStreakTimesTxt();
			initTaskSignAni();
			initKnowledgeScoreUI();
			// 玩家称号
			initResRenderer();
		}

		protected function initKnowledgeScoreUI():void
		{
		}

		public function updateKnowledgeScoreUI():void
		{
		}

		protected function headPosUpdated():void
		{
			if (headPos == null)
			{
				return;
			}
		}


		private function onEffectEnd(e:MmeAssetRenderEvent):void
		{
			var renderer:MmeAssetRender = e.currentTarget as MmeAssetRender;
			renderer.stop();
			renderer.visible = false;
		}

		protected function initResRenderer():void
		{
			if (resRenderer == null)
			{
				resRenderer = new MmeAssetRender(mmeAsset);
				resRenderer.addEventListener(MmeAssetRenderEvent.READY, onResRendererReady);
				resRenderer.addEventListener(MmeAssetRenderEvent.LOAD_ERROR, onResRendererError);
				changeNinja_startLoad();
				if (this._bodyVisible)
				{
					this.addChild(this.resRenderer);
				}
			}
		}

		protected function initShadow():void
		{
			if (shadow == null)
			{
				shadow = new Bitmap(SHADOW_BITMAP_DATA);
				shadow.x = -shadow.width >> 1;
				shadow.y = -shadow.height >> 1;
				addChildAt(shadow, 0);
			}
		}

		protected function destroyShadow():void
		{
			if (shadow)
			{
				if (shadow.parent)
				{
					shadow.parent.removeChild(shadow);
				}
				shadow.bitmapData = null;
				shadow = null;
			}
		}

		protected function destroyResRenderer():void
		{
			if (resRenderer)
			{
				resRenderer.removeEventListener(MmeAssetRenderEvent.READY, onResRendererReady);
				resRenderer.removeEventListener(MmeAssetRenderEvent.LOAD_ERROR, onResRendererError);
				resRenderer.destroy();
				resRenderer = null;
			}
		}

		public static const NAME_TEXT_FORMAT:TextFormat = new TextFormat("SimSun", 13, 0xFFFFFF);
		public static const NAME_FILTERS:Array = [new GlowFilter(0x0, 1, 2, 2, 10, 1)];
		public static const WIN_STREAK_TIMES_FILTERS:Array = [new GlowFilter(0x0, 1, 2, 2, 10, 1)];

		protected function initWinStreakTimesTxt():void
		{

		}

		protected function initNameTxt():void
		{
			if (nameTxt == null)
			{
				nameTxt = new TextField();
				nameTxt.autoSize = TextFieldAutoSize.LEFT;
				nameTxt.multiline = false;
				nameTxt.selectable = false;
				nameTxt.mouseEnabled = false;
				nameTxt.defaultTextFormat = BasePlayer.NAME_TEXT_FORMAT;
				nameTxt.filters = BasePlayer.NAME_FILTERS;
				nameTxt.y = -nameTxt.height;
				addChild(nameTxt);
			}
		}

		protected function updateWinStreakTimesTxt():void
		{
			headPosUpdated();
		}

		protected function updateNameText():void
		{
		}

		protected function destroyNameTxt():void
		{
			if (nameTxt)
			{
				if (nameTxt.parent)
				{
					nameTxt.parent.removeChild(nameTxt);
				}
				nameTxt = null;
			}
		}

		protected function destroyKnowledgeScoreUI():void
		{
		}

		protected function destroyWinStreakTimesTxt():void
		{
		}

		protected function initVipIcon():void
		{
		}

		protected function updateVipIconData():void
		{
		}

		protected function destroyVipIcon():void
		{
		}


		protected function initTaskSignAni():void
		{
		}

		protected function updateTaskSignAni():void
		{
		}

		protected function destroyTaskSignAni():void
		{
		}

		protected function onResRendererReady(e:MmeAssetRenderEvent):void
		{
			calcHeadPos();
			playAction(currActionName, false, true);
		}

		protected function onResRendererError(e:MmeAssetRenderEvent):void
		{
		}

		protected function calcHeadPos():void
		{
			if (headPos == null)
			{
				headPos = new Point();
			}
			//如果资源里面定义了参考点，那就使用参考点的坐标来
			if (resRenderer.isReady && resRenderer.hasActionName(NinjaAssetDef.AVATAR_POS_ACTION_NAME))
			{
				var ped:PointElementData = resRenderer.getReferPointFromActionByName(NinjaAssetDef.AVATAR_POS_ACTION_NAME, 0, NinjaAssetDef.AVATAR_HEAD_POS_NAME);
				if (ped)
				{
					headPos.x = ped.x;
					headPos.y = ped.y;
					headPosUpdated();
					return;
				}
			}
			resRenderer.gotoAction("idle_0", 0, true);
			var bound:Rectangle = resRenderer.getBounds(null);
			headPos.y = int(bound.top);
			headPosUpdated();
		}

		public function playAction(actionName:String, keepFrame:Boolean, loop:Boolean):void
		{
			currActionName = actionName;
			if (resRenderer && resRenderer.isReady && isDisposed == false)
			{
				var frame:int = 0;
				if (keepFrame)
				{
					frame = Math.max(0, resRenderer.getCurrFrame());
				}
				this.resRenderer.play(currActionName, frame, loop);
				if (!this._bodyVisible)
				{
					this.resRenderer.stop();
				}
			}
		}

		override public function hitTestPoint(x:Number, y:Number, shapeFlag:Boolean = false):Boolean
		{
			if (nameTxt && nameTxt.hitTestPoint(x, y, shapeFlag))
			{
				return true;
			}
			if (resRenderer && resRenderer.isReady)
			{
				return resRenderer.hitTestPoint(x, y, true);
			} else
			{
				return super.hitTestPoint(x, y, shapeFlag);
			}
		}

		/**
		 * 进入视野
		 */
		override public function inViewPoint(needDispatchEvent:Boolean = true):void
		{
			super.inViewPoint(false);

			initUI();

			needDispatchEvent && dispatch(MapElementEvent.IN_VIEWPOINT);
		}

		public function resurrect():void
		{
			isDisposed = false;
			playAction("idle_0", false, true);
		}

		public function dispose():void
		{
			isDisposed = true;
			if (resRenderer && resRenderer.isReady)
			{
				resRenderer.stop();
			}
			destroyEntryEffect();
			destroyTaskSignAni();
			//destroy会做一些从地图上消失的操作，，暂时延用destroy事件 
			var event:PlayerDataEvent = new PlayerDataEvent(PlayerDataEvent.DESTROY);
			data.dispatchEvent(event);

			destroyData();

			dispatch(MapElementEvent.DESTROY);
		}

		override public function destroy(needDispatchEvent:Boolean = true):void
		{
			destroyNameTxt();
			destroyVipIcon();
			destroyResRenderer();
			destroyEntryEffect();
			destroyTaskSignAni();
			destroyWinStreakTimesTxt();
			destroyKnowledgeScoreUI();

			var event:PlayerDataEvent = new PlayerDataEvent(PlayerDataEvent.DESTROY);
			data.dispatchEvent(event);

			destroyData();

			super.destroy(needDispatchEvent);
		}

		override public function setXY(x:int, y:int):void
		{
			super.setXY(x, y);
		}

		override public function getBounds(targetCoordinateSpace:DisplayObject):Rectangle
		{
//			if(__bound==null || resRenderer==null || !resRenderer.isReady || __bound.isEmpty())
//			{
			__bound = super.getBounds(targetCoordinateSpace);
//			}
			return __bound;
		}

		public function set bodyVisible(value:Boolean):void
		{
			if (this._bodyVisible != value)
			{
				this._bodyVisible = value;
				if (this.resRenderer)
				{
					if (this._bodyVisible)
					{
						this.addChild(this.resRenderer);
						this.resRenderer.play(this.resRenderer.getCurrActionName(), this.resRenderer.getCurrFrame(), this.resRenderer.getLoop());
					}
					else if (this.contains(this.resRenderer))
					{
						this.removeChild(this.resRenderer);
						this.resRenderer.stop();
					}
				}

			}
		}

		public function get bodyVisible():Boolean
		{
			return this._bodyVisible;
		}

	}
}