package com.tencent.morefun.naruto.plugin.motion
{

	public class MotionAssetDef
	{
		public static const SKILL_ICON:String = "skillIcon";
		
		
		public static function getAsset(type:String,id:uint):String
		{
			switch(type)
			{
				case SKILL_ICON:
					return "assets/skill/40/"+id+".png";
				default:
					throw new ArgumentError("type is illegal.");
			}
			return null;
		}
	
															
		public function autoSetNull():void
		{

		}
	}
}