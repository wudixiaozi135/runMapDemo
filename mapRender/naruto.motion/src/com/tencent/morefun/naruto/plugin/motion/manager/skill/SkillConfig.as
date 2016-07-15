package com.tencent.morefun.naruto.plugin.motion.manager.skill
{

	import com.tencent.morefun.naruto.plugin.motion.data.DefenceAttribute;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillDef;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.data.SkillInfo;
	import com.tencent.morefun.naruto.util.CollectionClearUtil;
	
	import flash.utils.Dictionary;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class SkillConfig
	{
		[StaticAutoDestroy]
		
		public static var inited:Boolean;
		private static var _skillInfoConfigXml:XML;
		public static var skillActionConfigXml:XML;
		public static var skillDefenceAttributeXml:XML;
		
		private static var skillInfoMap:Dictionary;
		
		public function SkillConfig()
		{
		}
		
		public static function destroy():void
		{
			autoSetNull();
		}
		
		private static function init():void
		{
			
			if(inited)
			{
				return ;
			}
			inited = true;
			
			var skillMap:Dictionary = new Dictionary();
			var skillActionMap:Dictionary = new Dictionary();
			var defenceAttributeMap:Dictionary = new Dictionary();
			
			skillInfoMap = new Dictionary()
			
			var defenceAttribute:DefenceAttribute;
			for each(var defenceAttributeCfg:XML in skillDefenceAttributeXml.DefenceAttribute)
			{
				defenceAttribute = new DefenceAttribute();
				defenceAttribute.data = defenceAttributeCfg;
				defenceAttributeMap[defenceAttribute.id] = defenceAttribute;
			}
			
			for each(var si:XML in skillInfoConfigXml.SkillInfo)
			{
				skillMap[String(si.@id)] = si;
			}
			
			for each(var skillActionCfg:XML in skillActionConfigXml.SkillAction)
			{
				skillActionMap[String(skillActionCfg.@id)] = skillActionCfg;
			}
			
			for(var id:String in skillMap)
			{
				var skillXmlObj:XML;
				var subSkillXmlObj:XML;
				var skillInfo:SkillInfo = new SkillInfo();
				
				skillXmlObj = skillMap[id];
				subSkillXmlObj = skillActionMap[String(skillXmlObj.@refSubSkill)];
				skillInfo.setXML(skillXmlObj, subSkillXmlObj, defenceAttributeMap);
				skillInfoMap[skillInfo.id] = skillInfo;
			}
			
		}
		
		public static function getRefSpecialSkillIdIndex(skillIdList:Array, skillId:int):int
		{
			var specialList:Array;
			var skillInfo:SkillInfo;
			
			specialList = [];
			for each(var id:int in skillIdList)
			{
				skillInfo = getSkillInfo(id);
				if(skillInfo.type == SkillDef.TYPE_SPECIAL && skillInfo.specialSkillMapIds.indexOf(skillId) != -1)
				{
					return skillIdList.indexOf(id);
				}
			}
			
			return 0;
		}
		
		public static function getSpecialSkillId(skillIdList:Array):Array
		{
			var specialList:Array;
			var skillInfo:SkillInfo;
			
			specialList = [];
			for each(var id:int in skillIdList)
			{
				skillInfo = getSkillInfo(id);
				if(skillInfo.type == SkillDef.TYPE_SPECIAL)
				{
					specialList.push(id);
				}
			}
			
			return specialList;
		}
		
		public static function getSkillInfo(id:int):SkillInfo
		{
			var skillInfo:SkillInfo;
			
			if(inited == false)
			{
				init();
			}
			
			skillInfo = skillInfoMap[id];
			if(skillInfo == null)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4314_0") + id + I18n.lang("as_motion_1451031573_4314_1"));
			}
			
			return skillInfo;
		}
		
		public static function getSkillBuffId(id:int):int
		{
			if(inited == false)
			{
				init();
			}
			
			return skillInfoMap[id].skillBuffId;
		}
	
															
		public static function autoSetNull():void
		{

			skillInfoConfigXml = null;
			skillActionConfigXml = null;
			skillDefenceAttributeXml = null;
			skillInfoMap = null;
		}

		public static function get skillInfoConfigXml():XML
		{
			return _skillInfoConfigXml;
		}

		public static function set skillInfoConfigXml(value:XML):void
		{
			_skillInfoConfigXml = value;
		}

	}
}