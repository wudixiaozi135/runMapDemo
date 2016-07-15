package com.tencent.morefun.naruto.plugin.motion.data
{
	
	
    import com.tencent.morefun.naruto.i18n.I18n;
	public class PassiveEffectDef
	{
		public static const BATI_EFFCT_LIST:Array = [
			30000070
		];
		
		public static function hasBatiEffect(logicEffectList:Array):Boolean
		{
			for each(var logicEffectInfo:LogicEffectInfo in logicEffectList)
			{
				if(logicEffectInfo.cfg == null)
				{
					throw new Error(I18n.lang("as_motion_1451031572_4057_0") + logicEffectInfo.id + I18n.lang("as_motion_1451031572_4057_1"));
				}
				
				for each(var batiEffectId:int in BATI_EFFCT_LIST)
				{
					if(logicEffectInfo.cfg.effectList.indexOf(batiEffectId) != -1)
					{
						return true;
					}
				}
			}
			
			return false;
		}
		
		public function autoSetNull():void
		{
			
		}
	}
}