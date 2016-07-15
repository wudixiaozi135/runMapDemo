package com.tencent.morefun.naruto.plugin.motion.data
{
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	
	import flash.utils.Dictionary;

	public class SkillHitPointInfo
	{
		public var index:int;
		
		public var majorHitEffectId:int;
		public var majorHitEffect:EffectInfo;
		public var majorDefenceActionList:Array = [];
		public var majorDefenceAttributeList:Array = [];
		public var majorDefenceFixAction:String;
		
		public var minorHitEffectId:int;
		public var minorHitEffect:EffectInfo;
		public var minorDefenceActionList:Array = [];
		public var minorDefenceAttributeList:Array = [];
		public var minorDefenceFixAction:String;
		
		public var ignoreDamage:Boolean;
		public var ignoreResetIdle:Boolean;
		
		public function setData(value:XML, defenceAttackMap:Dictionary):void
		{
			var attributeId:int;
			var defenceAttribute:DefenceAttribute;
			var majorDefenceAttributeIdList:Array;
			var minonDefenceAttributeIdList:Array;
			
			ignoreDamage = String(value.@ignoreDamage) == "true";
			ignoreResetIdle = String(value.@ignoreResetIdle) == "true";
			
			majorDefenceAttributeIdList = String(value.@majorDefenceAttributeIdList).split(",");
			minonDefenceAttributeIdList = String(value.@minorDefenceAttributeIdList).split(",");
			
			for each(attributeId in majorDefenceAttributeIdList)
			{
				defenceAttribute = defenceAttackMap[attributeId];
				majorDefenceAttributeList.push(defenceAttribute);
				majorDefenceActionList.push(defenceAttribute.defenceAction);
				majorDefenceFixAction = defenceAttribute.fixAction;
			}
			
			for each(attributeId in minonDefenceAttributeIdList)
			{
				defenceAttribute = defenceAttackMap[attributeId];
				minorDefenceAttributeList.push(defenceAttribute);
				minorDefenceActionList.push(defenceAttribute.defenceAction);
				minorDefenceFixAction = defenceAttribute.fixAction;
			}
			
			index = value.@index;
			majorHitEffectId = value.@majorHitEffectId;
			minorHitEffectId = value.@minorHitEffectId;
		}
	
															
		public function autoSetNull():void
		{

			majorHitEffect = null;
			majorDefenceActionList = null;
			majorDefenceAttributeList = null;
			majorDefenceFixAction = null;
			minorHitEffect = null;
			minorDefenceActionList = null;
			minorDefenceAttributeList = null;
			minorDefenceFixAction = null;
		}
	}
}