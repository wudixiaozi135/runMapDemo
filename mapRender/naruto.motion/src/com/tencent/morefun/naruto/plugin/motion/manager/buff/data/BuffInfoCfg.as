package com.tencent.morefun.naruto.plugin.motion.manager.buff.data
{
	import com.tencent.morefun.naruto.plugin.motion.MotionUrlFix;
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;

	public class BuffInfoCfg
	{
		public var id:int;
		public var type:int;
		public var name:String;
		public var resDef:String;
		public var power:int;
		
		
		public var fix:Boolean;
		public var beHitCode:String;//该BUFF存在时受击时采用的受击代码
		public var beHitEffect:String;//该BUFF存在时受击时采用的受击效果
		public var breakBeHitCode:String;//该BUFF吸收的血量为0时采用的受击代码
		public var breakBeHitEffect:String;//该BUFF吸收的血量为0时采用的受击效果
		public var affectDefence:Boolean;//当该BUFF存在时是否影响受击行为
		public var affectBreakDefence:Boolean;//当该BUFF吸收的血量为0时是否影响受击行为
		public var buffEffectId:int;
		public var buffEffect:EffectInfo;
		
		public var addBuffEffectId:int;
		public var addBuffEffect:EffectInfo;
		
		public var iconUrl:String;
		public var startPosition:int;
		public var continuePosition:int;
		public var mirror:Boolean;
		
		
		public function BuffInfoCfg()
		{
		}
		
		public function set xml(value:XML):void
		{
			if(value)
			{
				id = value.@id;
				type = value.@type;
				name = value.@name;
				resDef = MotionUrlFix.fix(value.@resDef);
				power = value.@power;
				buffEffectId = value.@buffEffectId;
				addBuffEffectId = value.@addBuffEffectId;
				beHitCode = value.@beHitCode;
				beHitEffect = value.@beHitEffect;
				breakBeHitCode = value.@breakBeHitCode;
				breakBeHitEffect = value.@breakBeHitEffect;
				iconUrl = value.@iconUrl;
				startPosition = value.@startPosition;
				continuePosition = value.@continuePosition;
				mirror = int(value.@mirror) == 1;
				
				
				affectDefence = (beHitCode != "") && (beHitEffect != "");
				affectBreakDefence = (breakBeHitCode != "") && (breakBeHitEffect != "");
				fix = String(value.@fix) == "true";
			}
		}
	
															
		public function autoSetNull():void
		{

			name = null;
			resDef = null;
			buffEffect = null;
			addBuffEffect = null;
			iconUrl = null;
		}
	}
}