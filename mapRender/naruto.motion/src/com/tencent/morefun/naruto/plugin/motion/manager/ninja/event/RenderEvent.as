package com.tencent.morefun.naruto.plugin.motion.manager.ninja.event
{
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	
	import flash.events.Event;

	public class RenderEvent extends Event
	{
		public static const HIT:String = "hit";//打击事件
		public static const HIT_POINT:String = "hitPoint";
		public static const PLAY_ROLE_ACTION:String = "playRoleAction";
		public static const PLAY_ACTION_EFFECT:String = "playActionEffect";
		public static const PLAY_SKILL_EFFECT:String = "playSkillEffect";
		public static const PLAY_HIT_EFFECT:String = "playHitEffect";
		public static const PLAY_FULL_SCREEN_EFFECT:String = "playFaceEffect";
		public static const PLAY_DEFENCE_EFFECT:String = "playDefenceEffect";
		public static const FRAME_RENDER:String = "frameRender";
		public static const ACTION_INTERRUPT:String = "actionInterrupt";
		
		public static const PLAY_STEALTH:String = "stealth";
		
		public static const PLAY_SHAKE:String = "playShake";
		public static const PLAY_FLASH_SCREEN:String = "playFlashScreen";
		public static const PLAY_SPEED_LINE:String = "playSpeedLine";
		public static const AIR_AFTER_EFFECT:String = "airAfterEffect";
		
		public static const PLAY_SKIP_RENDER:String = "playSkipRender";
		public static const PLAY_UI_EFFECT:String = "playUiEffect";
		public static const ENCHANTMENT:String = "enchantment";
		
		public static const FOCUS:String = "focus";
		public static const CLEAR_FOCUS:String = "clearFocus";
		
		public static const ROLE_END:String = "roleEnd";
		public static const EFFECT_END:String = "effectEnd";
		public static const ROLE_DEAD:String = "roleDead";
		public static const ROLE_EXEUNT:String = "roleExeunt";
		
		public static const OVER_SLOW_RENDER:String = "overSlowRender";
		
		public static const PLAY_VIDEO:String = "playVideo";
		public static const UPPER_LAYER:String = "upperLayer";
		public static const LOWER_LAYER:String = "lowerLayer";
		public static const CURTAIN:String = "curtain";
		
		public var motionID:int;
		public var roleInfo:NinjaInfo;
		public function RenderEvent(type:String, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	
															
		public function autoSetNull():void
		{

			roleInfo = null;
		}
	}
}