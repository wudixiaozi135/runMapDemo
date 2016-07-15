package com.tencent.morefun.naruto.plugin.motion.manager.skill
{

	import com.tencent.morefun.naruto.plugin.motion.data.SkillHitPointInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SubSkillInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.event.SkillEvent;
	import flash.events.EventDispatcher;
	import flash.system.System
	import flash.system.System
	import flash.system.System
	import flash.system.System
	import flash.system.System
	import flash.system.System
	import flash.system.System

    import com.tencent.morefun.naruto.i18n.I18n;
	public class SkillManager extends EventDispatcher
	{
		private static var ms_instacne:SkillManager;
		
		protected var skillInfos:Array;
		
		private var xml:XML;
		public function SkillManager()
		{
			
		}
		
		public static function get singleton():SkillManager
		{
			if(ms_instacne == null)
			{
				ms_instacne = new SkillManager();
			}
			
			return ms_instacne;
		}
		
		public function getSkillInfo(skillId:int):SkillInfo
		{
			var si:SkillInfo;
			var subSki:SubSkillInfo;
			var skillEffectList:Array;
			var hitEffectList:Array;
			var actionEffectList:Array;
			
			si = SkillConfig.getSkillInfo(skillId);
			
			if(si == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4315_0") + skillId + I18n.lang("as_motion_1451031573_4315_1"));
			}
			
			return loadEffectInfos(si);
		}
		
		private function loadEffectInfos(si:SkillInfo):SkillInfo
		{
			var subSki:SubSkillInfo;
			
			for each(var skillEffectId:int in si.skillEffectIdList)
			{
				si.skillEffectList.push(getEffectInfo(skillEffectId));
			}
			
			for each(var fullScreenEffectId:int in si.fullScreenEffectIdList)
			{
				si.fullScreenEffectList.push(getEffectInfo(fullScreenEffectId));
			}
			
			for each(var skillHitPointInfo:SkillHitPointInfo in si.hitPointInfoList)
			{
				skillHitPointInfo.majorHitEffect = getEffectInfo(skillHitPointInfo.majorHitEffectId);
				skillHitPointInfo.minorHitEffect = getEffectInfo(skillHitPointInfo.minorHitEffectId);
			}
			
			if(si.skillIdleEffectId != 0)
			{
				si.skillIdleEffect = getEffectInfo(si.skillIdleEffectId);
			}
			
			return si;
		}
		
		public function getEffectInfo(effectId:int):EffectInfo
		{
			var effectInfo:EffectInfo;
			var event:SkillEvent;
			
			effectInfo = EffectConfig.getEffectInfoById(effectId);
			if(effectInfo != null && effectInfo.domain == null && effectInfo.type != EffectDef.TYPE_FILTERS)
			{
				event = new SkillEvent(SkillEvent.RES_REQUEST);
				event.url = effectInfo.res;
				dispatchEvent(event);	
				
				effectInfo = effectInfo.clone();
				EffectConfig.addWaitResEffect(effectInfo);
			}
			
			return effectInfo;
		}
		
		public function getEffectRes(effectId:int):String
		{
			var effectInfo:EffectInfo;
			var event:SkillEvent;
			
			if(effectId == 0)
			{
				return null;
			}
			
			effectInfo = EffectConfig.getEffectInfoById(effectId);
			if(!effectInfo.res || effectInfo.res == "")
			{
				return null;
			}
			return effectInfo.res;
		}
		
		public function getSkillRes(skillId:int):Array
		{
			var url:String;
			var urlList:Array;
			var skillInfo:SkillInfo;
			
			urlList = [];
			skillInfo = SkillConfig.getSkillInfo(skillId);
			
			for each(var skillEffectId:int in skillInfo.skillEffectIdList)
			{
				url = getEffectRes(skillEffectId);
				if(url){urlList.push(url)};
			}
			
			for each(var fullScreenEffectId:int in skillInfo.fullScreenEffectIdList)
			{
				url = getEffectRes(fullScreenEffectId);
				if(url){urlList.push(url)};
			}
			
			for each(var skillHitPointInfo:SkillHitPointInfo in skillInfo.hitPointInfoList)
			{
				url = getEffectRes(skillHitPointInfo.majorHitEffectId);
				if(url){urlList.push(url)};
				url = getEffectRes(skillHitPointInfo.minorHitEffectId);
				if(url){urlList.push(url)};
			}
			
			if(skillInfo.skillIdleEffectId != 0)
			{
				url = getEffectRes(skillInfo.skillIdleEffectId);
				if(url){urlList.push(url)};
			}
			
			return urlList;
		}
		
		public function destroy():void
		{
			
		}
	
															
		public function autoSetNull():void
		{

			ms_instacne = null;
			skillInfos = null;
			xml = null;
		}
	}
}