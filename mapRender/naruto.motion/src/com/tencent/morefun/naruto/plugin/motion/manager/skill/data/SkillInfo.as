package com.tencent.morefun.naruto.plugin.motion.manager.skill.data
{

	import com.tencent.morefun.naruto.plugin.motion.data.MissInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.SkillHitPointInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	
	import flash.geom.Point;
	import flash.utils.Dictionary;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class SkillInfo
	{
		public var id:int;
		
		public var name:String;
		public var type:int;
		public var sceneMaskAlpha:Number; //使用该技能时场景是否黑掉
		public var hideUI:Boolean;
		public var beHitState1:int;
		public var gainSkill:Boolean;//是否增益技能
		
		public var triggerDefenceType:int;
		public var attackAction:String;
		public var skillEffectIdList:Array = [];
		public var skillEffectList:Array = [];
		
		public var fullScreenEffectIdList:Array = [];
		public var fullScreenEffectList:Array = [];
		
		public var moveType:int;
		public var moveActionList:Array = [];
		public var videoUrl:String;
		
		public var attackDistance:Point;
		public var afterAttackOffsetPoint:Point;
		
		public var hideOthers:Boolean;//是否隐藏其他人
		public var hideCahoot:Boolean;//隐藏分身
		public var hold:Boolean;
		public var openType:int;
		public var hideSelfStart:int;//从第几毫秒隐藏自身
		public var hideSelfRange:int;//隐藏自身多久
		public var hidePassiveStart:int;//从第几毫秒隐藏受击方
		public var hidePassiveRange:int;//隐藏受击方多久
		
		public var buffIds:Array = [];
		public var hitPointNumRefList:Array = [];
		public var enchantment:int;
		public var specialSkillMapIds:Array = [];
		public var closeRefId:int;
		public var comboWaitFrame:int;
		public var playDefenceAction:Boolean;
		public var hitPointInfoList:Array = [];
		public var damageCount:int;
		
		public var majorFixDefenceAction:String;
		public var minorFixDefenceAction:String;
		
		public var hasAction:Boolean;
		public var refId:int;
		public var skillIdleAction:String;
		
		public var skillIdleEffectId:int;
		public var skillIdleEffect:EffectInfo;
		
		public var needHideShadow:Boolean;
		public var triggerCondition:int;
		
		public function SkillInfo()
		{
			
		}
		
		public function setXML(skillDataXml:XML, skillActionXml:XML, defenceAttributeMap:Dictionary):void
		{
			var missSkillInfo:MissInfo;
			var hitPointInfo:SkillHitPointInfo;
			var lastHitPointInfo:SkillHitPointInfo;
			var xmlValueArr:Array;
			var moveActionArr:Array;
			
			id = skillDataXml.@id;
			type = skillDataXml.@type;
			name = skillDataXml.@name;
			refId = skillDataXml.@refSubSkill;
			openType = skillDataXml.@openType;
			closeRefId = skillDataXml.@closeRefId;
			beHitState1 = skillDataXml.@beHitState1;
			triggerCondition = int(skillDataXml.@triggerCondition);
			gainSkill = int(skillDataXml.@gainSkill) != 0;
			hold = (String(skillDataXml.@hold) == "0");
			buffIds = (String(skillDataXml.@buff) == "")?[]:String(skillDataXml.@buff).split(",");
			hitPointNumRefList = (String(skillDataXml.@hitPointArr) == "")?[]:String(skillDataXml.@hitPointArr).split(",");
			playDefenceAction = String(skillDataXml.@playDefenceAction) != "1";
			
			//奥义技关联
			if(type == SkillDef.TYPE_SPECIAL)
			{
				specialSkillMapIds = (String(skillDataXml.@specialSkillMapIds) == "")?[id]:String(skillDataXml.@specialSkillMapIds).split(",");
				for(var i:int = 0;i < specialSkillMapIds.length;i ++)
				{
					if(specialSkillMapIds[i] is String)
					{
						specialSkillMapIds[i] = int(specialSkillMapIds[i]);
					}
				}
			}
			
			//表现内容
			if(skillActionXml == null)
			{
				return ;
			}
			
			hasAction = true;
			
			triggerDefenceType = skillActionXml.@triggerDefenceType;
			attackAction = skillActionXml.@attackAction;//施法动作
			moveType = skillActionXml.@moveType;//移动类型
			needHideShadow = String(skillActionXml.@needHideShadow) == "true";
			videoUrl = skillActionXml.@videoUrl;//录像URL
			comboWaitFrame = skillActionXml.@comboWaitFrame;//追击延迟 帧
			sceneMaskAlpha = skillActionXml.@sceneMaskAlpha;//黑屏 百分比
			hideSelfStart = skillActionXml.@hideSelfStart;//隐藏自己起始时间 毫秒
			hideSelfRange = skillActionXml.@hideSelfRange;//隐藏自己时长 毫秒
			hidePassiveStart = skillActionXml.@hidePassiveStart;//隐藏受击者起始时间 毫秒
			hidePassiveRange = skillActionXml.@hidePassiveRange;//因擦受击者时长 毫秒
			hideUI = (String(skillActionXml.@hideUI) == "1");//隐藏UI 一直没用过 暂不开放
			hideOthers = (String(skillActionXml.@hideOthers) == "true");//隐藏无关人员
			hideCahoot = (String(skillActionXml.@hideCahoot) == "1");//隐藏分身 仅在影分身攻击时有效
			majorFixDefenceAction = skillActionXml.@majorFixDefenceAction;//主受击插补动作
			minorFixDefenceAction = skillActionXml.@minorFixDefenceAction;//次受击插补动作
			skillIdleAction = skillActionXml.@skillIdleAction;//次受击插补动作
			skillIdleEffectId = skillActionXml.@skillIdleEffectId;
			
			for each(var skillEffectObj:Object in skillActionXml.SkillEffect)
			{
				skillEffectIdList.push(String(skillEffectObj.@id));
			}
			
			for each(var fullEffectObj:Object in skillActionXml.FullScreenEffect)
			{
				fullScreenEffectIdList.push(String(fullEffectObj.@id));
			}			
			
			moveActionArr = String(skillActionXml.@moveAction).split(",");
			moveActionList.push(moveActionArr[0] || NinjaMotionDef.run1_1);
			moveActionList.push(moveActionArr[1] || NinjaMotionDef.run1_2);
			moveActionList.push(moveActionArr[2] || NinjaMotionDef.run1_3);
			
			xmlValueArr = String(skillActionXml.@attackDistance).split(",");
			attackDistance = new Point(xmlValueArr[0], xmlValueArr[1]);//攻击距离
			
			if(String(skillActionXml.@afterAttackOffsetPoint) != "")
			{
				xmlValueArr = String(skillActionXml.@afterAttackOffsetPoint).split(",");
				afterAttackOffsetPoint = new Point(xmlValueArr[0], xmlValueArr[1]);//攻击结束偏移
			}
			else
			{
				afterAttackOffsetPoint = new Point(0, 0);//攻击结束偏移
			}
			
			for each(var hitPointXml:XML in skillActionXml.HitPointInfo)
			{
				hitPointInfo = new SkillHitPointInfo();
				hitPointInfo.setData(hitPointXml, defenceAttributeMap);
				hitPointInfoList.push(hitPointInfo);
				majorFixDefenceAction = hitPointInfo.majorDefenceFixAction;
				minorFixDefenceAction = hitPointInfo.minorDefenceFixAction;
				
				if(hitPointInfo.ignoreDamage == false){damageCount += 1;}
				
				lastHitPointInfo = hitPointInfo;
			}
			
			if(lastHitPointInfo && lastHitPointInfo.ignoreResetIdle)
			{
				throw new Error(I18n.lang("as_motion_1451031573_4312"));
			}
		}
	
															
		public function autoSetNull():void
		{

			name = null;
			attackAction = null;
			skillEffectIdList = null;
			skillEffectList = null;
			fullScreenEffectIdList = null;
			fullScreenEffectList = null;
			moveActionList = null;
			videoUrl = null;
			attackDistance = null;
			afterAttackOffsetPoint = null;
			buffIds = null;
			hitPointNumRefList = null;
			specialSkillMapIds = null;
			hitPointInfoList = null;
			majorFixDefenceAction = null;
			minorFixDefenceAction = null;
			skillIdleAction = null;
			skillIdleEffect = null;
		}
	}
}