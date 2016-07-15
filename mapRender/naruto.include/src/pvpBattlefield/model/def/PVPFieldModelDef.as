package pvpBattlefield.model.def
{
    import com.tencent.morefun.naruto.i18n.I18n;
	public class PVPFieldModelDef
	{
		public static const FIGHT_STATE_UPDATE:String = "fightStateUpdate";
		
		public static function campToNinjaName(camp:int):String
		{
			var ninjaName:String = "";
			
			switch(camp)
			{
				case 0:
					ninjaName = I18n.lang("as_include_1451031572_3460");
					break;
				case 1:
					ninjaName = I18n.lang("as_include_1451031572_3461");
					break;
				case 2:
					ninjaName = I18n.lang("as_include_1451031572_3462");
					break;
			}
			
			return ninjaName;
		}
	}
}