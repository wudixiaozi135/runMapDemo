package com.map.player.views
{
	import com.map.consDef.NpcAssetDef;
	import com.map.events.MapElementEvent;
	import com.map.player.BasePlayer;
	import com.map.player.BaseWalkablePlayer;
	import com.map.player.datas.PlayerData;
	import com.map.player.events.PlayerDataEvent;
	import com.map.utils.TimerProvider;

	import flash.display.MovieClip;
	import flash.geom.Point;

	import tx.loader.FileManager;
	import tx.mme.MmeAssetEx;
	import tx.mme.MmeAssetRender;
	import tx.mme.MmeAssetRenderEvent;

	public class PlayerView extends BaseWalkablePlayer
	{
		private static const ADD_STRENGTH_EFFECT_URL:String = "flash/player/effect_add_strength.swf";
		private static const ADD_HP_EFFECT_URL:String = "flash/player/effect_addhp.swf";
		private static const ADD_MP_EFFECT_URL:String = "flash/player/effect_addmp.swf";
		private static const LEVEL_UP_EFFECT_URL:String = "flash/player/effect_levelup.swf";

		protected var smileyAni:MovieClip;
		protected var _addHpEffetRenderer:MmeAssetRender;
		protected var _addMpEffetRenderer:MmeAssetRender;
		protected var _levelUpEffetRenderer:MmeAssetRender;
		protected var _addStrengthEffetRenderer:MmeAssetRender;
		protected var _pkEffectRenderer:MmeAssetRender;
		protected var _campGlowRender:MmeAssetRender;
		protected var _allowRender:MmeAssetRender;

		private static const resRenderer_xml:XML = <Motion duration="8" xmlns="fl.motion.*" xmlns:geom="flash.geom.*"
														   xmlns:filters="flash.filters.*">
			<source>
				<Source frameRate="24" x="-0.05" y="-75" scaleX="1" scaleY="1" rotation="0" elementType="movie clip"
						instanceName="roleContainer" symbolName="container/roleContainer">
					<dimensions>
						<geom:Rectangle left="0" top="0" width="0" height="0"/>
					</dimensions>
					<transformationPoint>
						<geom:Point x="NaN" y="-Infinity"/>
					</transformationPoint>
				</Source>
			</source>

			<Keyframe index="0" tweenSnap="true">
				<tweens>
					<SimpleEase ease="0"/>
				</tweens>
			</Keyframe>

			<Keyframe index="1" tweenSnap="true" x="-4.95">
				<color>
					<Color redMultiplier="1" greenMultiplier="1" blueMultiplier="1" alphaMultiplier="1" redOffset="200"
						   greenOffset="0" blueOffset="0" alphaOffset="0"/>
				</color>
				<tweens>
					<SimpleEase ease="0"/>
				</tweens>
			</Keyframe>

			<Keyframe index="2" tweenSnap="true" x="5.05">
				<color>
					<Color redMultiplier="1" greenMultiplier="1" blueMultiplier="1" alphaMultiplier="1" redOffset="255"
						   greenOffset="255" blueOffset="255" alphaOffset="0"/>
				</color>
				<tweens>
					<SimpleEase ease="0"/>
				</tweens>
			</Keyframe>

			<Keyframe index="3" tweenSnap="true" x="-4.95">
				<color>
					<Color redMultiplier="1" greenMultiplier="1" blueMultiplier="1" alphaMultiplier="1" redOffset="200"
						   greenOffset="180" blueOffset="0" alphaOffset="0"/>
				</color>
				<tweens>
					<SimpleEase ease="0"/>
				</tweens>
			</Keyframe>

			<Keyframe index="5" tweenSnap="true" x="3.05">
				<color>
					<Color redMultiplier="1" greenMultiplier="1" blueMultiplier="1" alphaMultiplier="1" redOffset="200"
						   greenOffset="0" blueOffset="0" alphaOffset="0"/>
				</color>
				<tweens>
					<SimpleEase ease="0"/>
				</tweens>
			</Keyframe>

			<Keyframe index="7" tweenSnap="true" x="0.05">
				<color>
					<Color/>
				</color>
				<tweens>
					<SimpleEase ease="0"/>
				</tweens>
			</Keyframe>
		</Motion>;

		public function PlayerView(mmeAsset:MmeAssetEx)
		{
			super(mmeAsset);
			addEventListener(MapElementEvent.MOUSE_DOWN_ELEMENT, onMouseDown);
		}

		override protected function initUI():void
		{
			super.initUI();

			if (data == null)
			{
				return;
			}
			updateDead();
			updateCamp();
			updateCaptainIcon();
			updateFightingIcon();

		}

		override public function setData(data:PlayerData):void
		{
			super.setData(data);

			updateDead();
			updateCamp();
			updateCaptainIcon();
			updateFightingIcon();
		}

		override protected function onPropertyUpdate(event:PlayerDataEvent):void
		{
			super.onPropertyUpdate(event);
			switch (event.property)
			{
				case PlayerData.PROPERTY_IS_FIGHTING:
					updateFightingIcon();
					break;
				case PlayerData.PROPERTY_IS_CAPTAIN:
					updateCaptainIcon();
					break;
				case PlayerData.PROPERTY_DEAD:
					updateDead();
					break;
				case PlayerData.PROPERTY_CAMP:
					updateCamp();
					break;
			}
		}

		protected function updateCaptainIcon():void
		{
			if (data.isCaptain)
			{
				showCaptainIcon();
			} else
			{
				hideCaptainIcon();
			}
		}

		protected function showCaptainIcon():void
		{
		}

		protected function hideCaptainIcon():void
		{
		}

		protected function calcCaptainIconPos():void
		{
//			if(captainIcon && headPos)
//			{
//				captainIcon.y = headPos.y - 20;
//			}
		}

		protected function updateFightingIcon():void
		{
			if (data.isFighting)
			{
				showFightingAnimation();
			} else
			{
				hideFightingAnimation();
			}
			if (data.isFighting)
			{
				showFightingIcon();
			} else
			{
				hideFightingIcon();
			}
		}

		protected function updateDead():void
		{
			if (data.isDead)
			{
				this.filters = [];
			}
			else
			{
				this.filters = [];
			}
		}

		protected function updateCamp():void
		{
		}

		protected function showFightingIcon():void
		{
		}

		protected function hideFightingIcon():void
		{
		}

		public function showFightingAnimation():void
		{
		}

		public function hideFightingAnimation():void
		{
			if (_pkEffectRenderer)
			{
				pkEffectRenderer.stop();
				if (this.contains(_pkEffectRenderer))
				{
					this.removeChild(_pkEffectRenderer);
				}
				if (resRenderer)
				{
					resRenderer.visible = true;
				}
			}
		}

		protected function calcFightingIconPos():void
		{
		}

		protected function onMouseDown(event:MapElementEvent):void
		{
		}

		override protected function calcHeadPos():void
		{
			super.calcHeadPos();

			calcSmileyPos();
			calcFightingIconPos();
			calcCaptainIconPos();
		}

		public function get campGlowRender():MmeAssetRender
		{
			if (_campGlowRender == null)
			{
				_campGlowRender = new MmeAssetRender(mmeAsset);
				_campGlowRender.addEventListener(MmeAssetRenderEvent.PLAY_END, onEffectRendererPlayEnd);
				_campGlowRender.loadUrl(FileManager.getQualifiedUrl("flash/player/camp_glow.swf"));
			}

			return _campGlowRender;
		}

		public function get pkEffectRenderer():MmeAssetRender
		{
			if (_pkEffectRenderer == null)
			{
				_pkEffectRenderer = new MmeAssetRender(mmeAsset);
				_pkEffectRenderer.loadUrlAndAutoPlay(FileManager.getQualifiedUrl("flash/player/effect_pk.swf"));
			}

			return _pkEffectRenderer;
		}

		public function get addHpEffetRenderer():MmeAssetRender
		{
			if (_addHpEffetRenderer == null)
			{
				_addHpEffetRenderer = new MmeAssetRender(mmeAsset);
				_addHpEffetRenderer.addEventListener(MmeAssetRenderEvent.PLAY_END, onEffectRendererPlayEnd);

				var url:String = FileManager.getQualifiedUrl(ADD_HP_EFFECT_URL);
				_addHpEffetRenderer.loadUrl(url);
			}
			return _addHpEffetRenderer;
		}

		public function get addMpEffetRenderer():MmeAssetRender
		{
			if (_addMpEffetRenderer == null)
			{
				_addMpEffetRenderer = new MmeAssetRender(mmeAsset);
				_addMpEffetRenderer.addEventListener(MmeAssetRenderEvent.PLAY_END, onEffectRendererPlayEnd);

				var url:String = FileManager.getQualifiedUrl(ADD_MP_EFFECT_URL);
				_addMpEffetRenderer.loadUrl(url);
			}
			return _addMpEffetRenderer;
		}

		private var allowTargetPos:Point = new Point();

		public function setAllowTargetPos(x:int, y:int):void
		{
			allowTargetPos.setTo(x, y);
			if (x != 0 || y != 0)
			{
				if (_allowRender == null)
				{
					_allowRender = new MmeAssetRender(mmeAsset);
					_allowRender.loadUrl(NpcAssetDef.getAsset(91000418, NpcAssetDef.OUTDOOR));
				}
				addChildAt(_allowRender, 0);
				TimerProvider.addTimeTask(500, updateAllowDirection);
			} else
			{
				if (_allowRender)
				{
					if (_allowRender.isReady)
					{
						_allowRender.stop();
					}
					if (_allowRender.parent)
					{
						_allowRender.parent.removeChild(_allowRender);
					}
				}
				TimerProvider.removeTimeTask(500, updateAllowDirection);
			}
		}

		private function updateAllowDirection():void
		{
			if (_allowRender == null || _allowRender.isReady == false)
			{
				return;
			}
			if (allowTargetPos.x == 0 && allowTargetPos.y == 0)
			{
				return;
			}
			var angle:Number = Math.atan2(allowTargetPos.y - y, allowTargetPos.x - x);
			var a360:int = angle * 180 / Math.PI;
			a360 = (a360 + 270 + 22) % 360;
			var dir:int = a360 / 45;
			_allowRender.play("idle_" + dir, _allowRender.getCurrFrame(), true);
		}

		public function showHpChanged(value:int):void
		{
		}

		public function showMpChanged(value:int):void
		{
			if (!isInViewPoint)
			{
				return;
			}
		}

		public function showStrengthChanged(value:int):void
		{
			if (!isInViewPoint)
				return;

			//            containerUI.addChild(this.addStrengthEffetRenderer);
			addChild(addStrengthEffetRenderer);
			this.addStrengthEffetRenderer.play("effect_add_strength");
		}

		public function get addStrengthEffetRenderer():MmeAssetRender
		{
			if (_addStrengthEffetRenderer == null)
			{
				_addStrengthEffetRenderer = new MmeAssetRender(mmeAsset);
				_addStrengthEffetRenderer.addEventListener(MmeAssetRenderEvent.PLAY_END, onEffectRendererPlayEnd);

				var url:String = FileManager.getQualifiedUrl(ADD_STRENGTH_EFFECT_URL);
				_addStrengthEffetRenderer.loadUrl(url);
			}

			return _addStrengthEffetRenderer;
		}

		public function showLevelUp():void
		{
			if (!isInViewPoint)
				return;

			//            containerUI.addChild(this.levelUpEffetRenderer);
			addChild(this.levelUpEffetRenderer);
			this.levelUpEffetRenderer.play("effect_level_up");
		}

		public function get levelUpEffetRenderer():MmeAssetRender
		{
			if (_levelUpEffetRenderer == null)
			{
				_levelUpEffetRenderer = new MmeAssetRender(mmeAsset);
				_levelUpEffetRenderer.addEventListener(MmeAssetRenderEvent.PLAY_END, onEffectRendererPlayEnd);

				var url:String = FileManager.getQualifiedUrl(LEVEL_UP_EFFECT_URL);
				_levelUpEffetRenderer.loadUrl(url);
			}

			return _levelUpEffetRenderer;
		}

		protected function calcSmileyPos():void
		{
			if (headPos && smileyAni)
			{
				smileyAni.y = headPos.y - smileyAni.height - 20;
			}
		}

		public function showSmiley(smiley:int):void
		{
		}

		public function showDialog(text:String):void
		{
			var tmpStr:String;

		}

		private function hideDialog():void
		{
		}

		public function hideSmiley():void
		{
		}

		protected function onSmileyAniDone():void
		{
			hideSmiley();
		}

		override public function dispose():void
		{
			super.dispose();
			TimerProvider.removeTimeTask(500, updateAllowDirection);
			if (nameTxt)
			{
				nameTxt.defaultTextFormat = BasePlayer.NAME_TEXT_FORMAT;
			}
			hideFightingAnimation();
			if (contains(campGlowRender))
			{
				removeChild(campGlowRender);
			}
		}

		override public function destroy(needDispatchEvent:Boolean = true):void
		{
			removeEventListener(MapElementEvent.MOUSE_DOWN_ELEMENT, onMouseDown);
			hideSmiley();

			if (_addHpEffetRenderer)
			{
				_addHpEffetRenderer.removeEventListener(MmeAssetRenderEvent.PLAY_END, onEffectRendererPlayEnd);
				_addHpEffetRenderer.destroy();
				_addHpEffetRenderer = null;
			}

			if (_addMpEffetRenderer)
			{
				_addMpEffetRenderer.removeEventListener(MmeAssetRenderEvent.PLAY_END, onEffectRendererPlayEnd);
				_addMpEffetRenderer.destroy();
				_addMpEffetRenderer = null;
			}

			if (_levelUpEffetRenderer)
			{
				_levelUpEffetRenderer.removeEventListener(MmeAssetRenderEvent.PLAY_END, onEffectRendererPlayEnd);
				_levelUpEffetRenderer.destroy();
				_levelUpEffetRenderer = null;
			}

			if (pkEffectRenderer)
			{
				_pkEffectRenderer.removeEventListener(MmeAssetRenderEvent.PLAY_END, onEffectRendererPlayEnd);
				_pkEffectRenderer.destroy();
				_pkEffectRenderer = null;
			}

			if (_campGlowRender)
			{
				_campGlowRender.removeEventListener(MmeAssetRenderEvent.PLAY_END, onEffectRendererPlayEnd);
				_campGlowRender.destroy();
				_campGlowRender = null;
			}

			if (_allowRender)
			{
				_allowRender.destroy();
				_allowRender = null;
			}

			super.destroy(needDispatchEvent);
		}
	}
}