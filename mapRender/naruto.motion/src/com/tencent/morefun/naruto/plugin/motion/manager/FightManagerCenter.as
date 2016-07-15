package com.tencent.morefun.naruto.plugin.motion.manager
{

	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.frame.FrameManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.res.ResManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.ShieldManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.ui.layer.LayerManager;
	import com.tencent.morefun.naruto.plugin.ui.util.TweenManager;

	public class FightManagerCenter
	{
		[StaticAutoDestroy]
		
		private static var _scenetMgr:SceneManager;
		private static var _ninjaMgr:NinjaManager;
		private static var _skillMgr:SkillManager;
		private static var _buffMgr:BuffManager;
		private static var _shieldMgr:ShieldManager;
		private static var _frameMgr:FrameManager;
		private static var _resMgr:ResManager;
		private static var _frameRate:int;
		public static var rendererIndex:int;
		
		public function FightManagerCenter()
		{
			
		}
		
		public static function setManagers(scenetMgr:SceneManager,
										   ninjaMgr:NinjaManager,
										   skillMgr:SkillManager,
											buffMgr:BuffManager,
											shieldMgr:ShieldManager,
											frameMgr:FrameManager,
											resMgr:ResManager):void
		{
			_scenetMgr = scenetMgr;
			_ninjaMgr = ninjaMgr;
			_skillMgr = skillMgr;
			_buffMgr = buffMgr;
			_shieldMgr = shieldMgr;
			_frameMgr = frameMgr;
			_resMgr = resMgr;
			
			delayCallBackList = [];
		}
		
		public static function updateFrameRate():void
		{
			_frameRate = 1000 / LayerManager.singleton.stage.frameRate;
		}
		
		public static function set skipRenderNum(value:int):void
		{
			_skipRenderNum = value;
		}
		
		public static function get skipRenderNum():int
		{
			return _skipRenderNum;
		}
		
		private static var hasRender:Boolean;
		private static var delayCallBackList:Array;
		public static function delayCallBack(callBack:Function, frame:int, params:Array = null):void
		{
			if(hasRender == false){frame = frame + 1;} 
			if(frame == 0)
			{
				if(params == null)
				{
					callBack()
				}
				else
				{
					callBack(params);
				}
				return ;
			}
			delayCallBackList.push({callBack:callBack, frame:frame, params:params});
		}
		
		public static function preRender():void
		{
			hasRender = false;
		}
		
		private static var _skipRenderNum:int = 0;
		public static function renderer():void
		{
			hasRender = true;
			
			if(skipRenderNum != 0)
			{
				skipRenderNum -= 1;
				return ;
			}
			
			checkCallBack();
			TweenManager.render();
			
			if(_ninjaMgr != null)
			{
				_ninjaMgr.renderer();
			}
			
			if(_scenetMgr != null)
			{
				_scenetMgr.renderer();
			}

			rendererIndex += 1;
			
		}
		
		public static function afterRender():void
		{
			hasRender = false;
		}
		
		private static function checkCallBack():void
		{
			var callBackInfo:Object;
			var copyCallBackList:Array;
			
			copyCallBackList = delayCallBackList.concat();
			for(var i:int = 0;i < copyCallBackList.length;i ++)
			{
				callBackInfo = copyCallBackList[i];
				callBackInfo.frame --;
				if(callBackInfo.frame == 0)
				{
					delayCallBackList.splice(delayCallBackList.indexOf(callBackInfo), 1);
					if(callBackInfo.params != null)
					{
						callBackInfo.callBack(callBackInfo.params);
					}
					else
					{
						callBackInfo.callBack();
					}
				}
			}
		}
		
		public static function get frameRate():int
		{
			return _frameRate;
		}
		
		public static function get frameMgr():FrameManager
		{
			return _frameMgr;
		}
		
		public static function get sceneMgr():SceneManager
		{
			return _scenetMgr;
		}
		
		public static function get ninjaMgr():NinjaManager
		{
			return _ninjaMgr;
		}
		
		public static function get skillMgr():SkillManager
		{
			return _skillMgr;
		}
		
		public static function get buffMgr():BuffManager
		{
			return _buffMgr;
		}
		
		public static function get resMgr():ResManager
		{
			return _resMgr;
		}
		
		public static function get shieldMgr():ShieldManager
		{
			return _shieldMgr;
		}
	
		public static function destroy():void
		{
			autoSetNull();
		}
															
		public static function autoSetNull():void
		{

			_scenetMgr = null;
			_ninjaMgr = null;
			_skillMgr = null;
			_buffMgr = null;
			_shieldMgr = null;
			_frameMgr = null;
			_resMgr = null;
			delayCallBackList = null;
		}
	}
}