package skill.config
{
    import com.tencent.morefun.naruto.i18n.I18n;
	public class SkillDef
	{
		public function SkillDef()
		{
			
		}
		
		public static function getTypeString(type:int):String
		{
			if(type==0)return I18n.lang("as_include_1451031572_3468");
			if(type==1)return I18n.lang("as_include_1451031572_3469");
			if(type==2)return I18n.lang("as_include_1451031572_3470");	
			if(type==3)return I18n.lang("as_include_1451031572_3471");	
			if(type==4)return I18n.lang("as_include_1451031572_3472");
			if(type==5)return I18n.lang("as_include_1451031572_3473");	
			return "";
		}

		public static function getBeHitState1String(beHitState1:int, beHitState1Param:int):String {
			if(beHitState1==0)return I18n.lang("as_include_1451031572_3474");
			if(beHitState1==1)return I18n.lang("as_include_1451031572_3475");
			if(beHitState1==2)return I18n.lang("as_include_1451031572_3476");	
			if(beHitState1==3)return I18n.lang("as_include_1451031572_3477");	
			if (beHitState1 == 4) {
				if (beHitState1Param == -1) {
					return I18n.lang("as_include_1451031572_3478");
				}
				
				return beHitState1Param + I18n.lang("as_include_1451031572_3479");
			}
			if(beHitState1==5)return I18n.lang("as_include_1451031572_3480");	
			if(beHitState1==6)return I18n.lang("as_include_1451031572_3481");	
			if(beHitState1==7)return I18n.lang("as_include_1451031572_3482");	
			if(beHitState1==8)return I18n.lang("as_include_1451031572_3483");	
			if(beHitState1==9)return I18n.lang("as_include_1451031572_3484");	
			if (beHitState1 == 10) {
				var pArr:Array = [I18n.lang("as_include_1451031572_3485_0"), I18n.lang("as_include_1451031572_3485_1"), I18n.lang("as_include_1451031572_3485_2"), I18n.lang("as_include_1451031572_3485_3"), I18n.lang("as_include_1451031572_3485_4"), I18n.lang("as_include_1451031572_3485_5"), I18n.lang("as_include_1451031572_3485_6"), I18n.lang("as_include_1451031572_3485_7"), I18n.lang("as_include_1451031572_3485_8")];
				
				return /*I18n.lang("as_include_1451031572_3486") +*/ pArr[beHitState1Param];	
			}
			return "";
		}
		
		public static const _exStateStrings:Array = [I18n.lang("as_include_1451031572_3487_0"), I18n.lang("as_include_1451031572_3487_1"), I18n.lang("as_include_1451031572_3487_2"), I18n.lang("as_include_1451031572_3487_3"), I18n.lang("as_include_1451031572_3487_4"), I18n.lang("as_include_1451031572_3487_5"), I18n.lang("as_include_1451031572_3487_6"), I18n.lang("as_include_1451031572_3487_7"), I18n.lang("as_include_1451031572_3487_8"), I18n.lang("as_include_1451031572_3487_9"), I18n.lang("as_include_1451031572_3487_10"), I18n.lang("as_include_1451031572_3487_11"), I18n.lang("as_include_1451031572_3487_12"),I18n.lang("as_include_1451031572_3487_13"),I18n.lang("as_include_1451031572_3487_14"),I18n.lang("as_include_1451031572_3487_15")];
		public static function getExStateString(index:int ):String
		{
			return _exStateStrings[index];
		}
		public static function getExStatesString(exStates:Array):String
		{
			var arr:Array = [];
			for (var i:int = 0; i < exStates.length; i++) 
			{
				arr.push(getExStateString(exStates[i]));
			}
			
			return arr.join("，");
		}
		
		public static function isRelatedExStates(exStates:Array, beHitState1:int, beHitState1Param:int):Boolean {
			if (exStates.length == 0 || beHitState1 == 0) return false;
			
			for each(var s:int in exStates) {
				if (isRelatedExState(s, beHitState1, beHitState1Param)) {
					return true;
				}
			}
			return false;
		}
		public static function isRelatedExState(exState:int, beHitState1:int, beHitState1Param:int):Boolean {
			if (exState == 11) {
				return beHitState1 == 4;
			}
			
			return getExStateString(exState) == getBeHitState1String(beHitState1, beHitState1Param)
		}
	}
}