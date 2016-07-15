package com.tencent.morefun.naruto.plugin.motion.manager.skill.data
{
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaMotionDef;
	import flash.geom.Point;

	public class SubSkillInfo
	{
		public function SubSkillInfo()
		{
			
		}
		
		public var attackPos:Point;
		public var endPos:Point;
		public var move:int; //移动方式，原地,走过去,还是跳过去
		public var needWait:Boolean;
		public var resetIdle:Boolean;
		
		public var hitType:int;
		
		//hitType为时间类型时标志从第几秒开始 持续多久
		public var timeStart:int;
		public var timeRange:int;

		public var actionEffectId:int;
		public var skillEffectId:int;
		public var hitEffectId:int;
		public var minorHitEffectId:int;
		public var faceEffectId:int;
		public var afterEffectId:int;
		
		public var hitEffectInfo:EffectInfo;
		public var skillEffectInfo:EffectInfo;
		public var actionEffectInfo:EffectInfo;
		public var faceEffectInfo:EffectInfo;
		public var afterEffectInfo:EffectInfo;
		public var minorHitEffectInfo:EffectInfo;
		
		public var action:String;
		public var beHitCode:String;
		public var beHitEffect:String;
		public var minorBeHitCode:String;
		public var minorBeHitEffect:String;
		public var moveActions:Array = [];
		
		public var videoUrl:String;
		
		public function set data(data:XML):void
		{
			var attackPosArr:Array;
			var endPosArr:Array;
			var moveActionArr:Array;
			
			action = data.@action;
			move = data.@move;
			beHitCode = data.@beHitCode;
			beHitEffect = data.@beHitEffect;
			
			attackPosArr = String(data.@pos).split(",");
			attackPos = new Point(attackPosArr[0] || 0, attackPosArr[1] || 0);
			endPosArr = String(data.@endPos).split(",");
			endPos = new Point(endPosArr[0] || 0, endPosArr[1] || 0);
			moveActionArr = String(data.@moveAction).split(",");
			moveActions.push(moveActionArr[0] || NinjaMotionDef.run1_1);
			moveActions.push(moveActionArr[1] || NinjaMotionDef.run1_2);
			moveActions.push(moveActionArr[2] || NinjaMotionDef.run1_3);
			
			needWait = data.@needWait == "true";
			resetIdle = data.@resetIdle == "true";
			hitType = data.@hitType;
			
			timeStart = data.@timeStart;
			timeRange = data.@timeRange;
			
			hitEffectId = data.@hitEffect;
			minorHitEffectId = data.@minorHitEffect;
			skillEffectId = data.@skillEffect;
			actionEffectId = data.@actionEffect;
			faceEffectId = data.@faceEffect;
			afterEffectId = data.@afterEffectId;
			
			videoUrl = data.@videoUrl;
			
			minorBeHitCode = String(data.@minorBeHitCode) == ""?beHitCode:String(data.@minorBeHitCode);
			minorBeHitEffect = String(data.@minorBeHitEffect) == ""?beHitEffect:String(data.@minorBeHitEffect);
		}
		
		public function clone():SubSkillInfo
		{
			var subSkillInfo:SubSkillInfo;
			
			subSkillInfo = new SubSkillInfo();
			subSkillInfo.action = action; 
			subSkillInfo.move = move; 
			subSkillInfo.beHitCode = beHitCode; 
			
			subSkillInfo.attackPos = attackPos;
			subSkillInfo.endPos = endPos;
			subSkillInfo.moveActions = moveActions;
			
			subSkillInfo.needWait = needWait;
			subSkillInfo.resetIdle = resetIdle;
			subSkillInfo.hitType = hitType;
			
			subSkillInfo.timeStart = timeStart;
			subSkillInfo.timeRange = timeRange;
			
			subSkillInfo.hitEffectId = hitEffectId;
			subSkillInfo.skillEffectId = skillEffectId;
			subSkillInfo.actionEffectId = actionEffectId;
			subSkillInfo.beHitEffect = beHitEffect;
			subSkillInfo.faceEffectId = faceEffectId;
			subSkillInfo.faceEffectId = afterEffectId;
			subSkillInfo.minorBeHitCode = minorBeHitCode;
			subSkillInfo.minorBeHitEffect = minorBeHitEffect;
			
			return subSkillInfo;
		}
	
															
		public function autoSetNull():void
		{

			attackPos = null;
			endPos = null;
			hitEffectInfo = null;
			skillEffectInfo = null;
			actionEffectInfo = null;
			faceEffectInfo = null;
			afterEffectInfo = null;
			minorHitEffectInfo = null;
			action = null;
			beHitCode = null;
			beHitEffect = null;
			minorBeHitCode = null;
			minorBeHitEffect = null;
			moveActions = null;
			videoUrl = null;
		}
	}
}