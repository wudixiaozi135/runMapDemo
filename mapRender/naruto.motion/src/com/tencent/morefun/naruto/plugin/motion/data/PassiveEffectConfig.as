package com.tencent.morefun.naruto.plugin.motion.data
{	
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	
	import flash.utils.Dictionary;
	
	public class PassiveEffectConfig
	{
		[StaticAutoDestroy]
		
		public static var skillInfoConfigXml:XML;
		public static var buffEffectConfigXml:XML;
		public static var batiEffectConfigXml:XML;
		public static var inited:Boolean;
		private static var skillEffectMap:Dictionary;
		private static var buffEffectMap:Dictionary;
		private static var batiEffectMap:Dictionary;
		
		public function PassiveEffectConfig()
		{
		}
		
		public static function destroy():void
		{
			autoSetNull();
		}
		
		private static function init():void
		{
			var logicEffectInfoCfg:LogicEffectInfoCfg;
			var logicEffectResEffect:LogicEffectResEffectInfo;
			
			if(inited == true)
			{
				return;
			}
			
			inited = true;
			
			skillEffectMap = new Dictionary();
			buffEffectMap = new Dictionary();
			batiEffectMap = new Dictionary();
			for each(var si:XML in skillInfoConfigXml.SkillInfo)
			{
				if(int(si.@type) == SkillDef.TYPE_PASSIVE)
				{
					logicEffectInfoCfg = new LogicEffectInfoCfg();
					logicEffectInfoCfg.skillData = si;
					skillEffectMap[logicEffectInfoCfg.id] = logicEffectInfoCfg;
				}
			}
			
			for each(var bei:XML in buffEffectConfigXml.BuffEffectInfo)
			{
				logicEffectInfoCfg = new LogicEffectInfoCfg();
				logicEffectInfoCfg.buffData = bei;
				buffEffectMap[logicEffectInfoCfg.id] = logicEffectInfoCfg;
			}
			
			for each(var batiEffectCfgObj:XML in batiEffectConfigXml.BatiEffectInfo)
			{
				batiEffectMap[int(batiEffectCfgObj.@id)] = {startId:int(batiEffectCfgObj.@startEffect), continueId:int(batiEffectCfgObj.@continueEffect), endId:int(batiEffectCfgObj.@endEffect)};
			}
			
			for each(logicEffectInfoCfg in skillEffectMap)
			{
				if(batiEffectMap[logicEffectInfoCfg.resEffect] != null)
				{
					logicEffectResEffect = new LogicEffectResEffectInfo();
					logicEffectResEffect.startEffectId = batiEffectMap[logicEffectInfoCfg.resEffect].startId;
					logicEffectResEffect.continueEffectId = batiEffectMap[logicEffectInfoCfg.resEffect].continueId;
					logicEffectResEffect.endEffectId = batiEffectMap[logicEffectInfoCfg.resEffect].endId;
					logicEffectInfoCfg.resEffectInfoList.push(logicEffectResEffect);
				}
			}
			
			for each(logicEffectInfoCfg in buffEffectMap)
			{
				if(batiEffectMap[logicEffectInfoCfg.resEffect] != null)
				{
					logicEffectResEffect = new LogicEffectResEffectInfo();
					logicEffectResEffect.startEffectId = batiEffectMap[logicEffectInfoCfg.resEffect].startId;
					logicEffectResEffect.continueEffectId = batiEffectMap[logicEffectInfoCfg.resEffect].continueId;
					logicEffectResEffect.endEffectId = batiEffectMap[logicEffectInfoCfg.resEffect].endId;
					logicEffectInfoCfg.resEffectInfoList.push(logicEffectResEffect);
				}
			}
		}
		
		public static function getSkillLogicEffectCfg(id:int):LogicEffectInfoCfg
		{
			init();
			return skillEffectMap[id];
		}
		
		public static function getBuffLogicEffectCfg(id:int):LogicEffectInfoCfg
		{
			init();
			return buffEffectMap[id];
		}
		
		
		public static function autoSetNull():void
		{
			
			skillInfoConfigXml = null;
			buffEffectConfigXml = null;
			skillEffectMap = null;
			buffEffectMap = null;
		}
	}
}