package crew.def
{
	public class NinjaNameColorDef
	{
		private static const strenthenLeveltoColor:Array = 
			[	0x00ce30, 
				0x1bb1f4, 
				0x1bb1f4, 
				0x1bb1f4, 
				0x1bb1f4, 
				0xb463ff,
				0xb463ff,
				0xb463ff,
				0xb463ff,
				0xffba00,
				0xffba00,
				0xffba00,
				0xffba00,
				0xffba00,
				0xf4716e,
				0xf4716e,
				0xf4716e,
				0xf4716e,
				0xf4716e,
				0xf4716e,
				0xf4716e];
		
		private static const strenthenLevelToColorName:Array = 
			[	"green", 
				"blue", 
				"blue", 
				"blue", 
				"blue", 
				"purple", 
				"purple",
				"purple",
				"purple",
				"orange", 
				"orange",
				"orange",
				"orange",
				"orange",
				"red",
				"red",
				"red",
				"red",
				"red",
				"red",
				"red"];
		
		private static const strenthenLevelToNameAppendStr:Array = 
			[	"", 
				"", 
				"+1", 
				"+2", 
				"+3", 
				"", 
				"+1",
				"+2",
				"+3",
				"", 
				"+1",
				"+2",
				"+3",
				"+4",
				"",
				"+1",
				"+2",
				"+3",
				"+4",
				"+5",
				"+6"];
		
		private static const strenthenLevelToFrameIndex:Array =
			[
				1,
				2,
				2,
				2,
				2,
				3,
				3,
				3,
				3,
				4,
				4,
				4,
				4,
				4,
				5,
				5,
				5,
				5,
				5,
				5,
				5
				];
		
		private static const strenthenLevelToBgIndex:Array =
			[
				1,
				2,
				3,
				4,
				5,
				6,
				7,
				8,
				9,
				10,
				11,
				12,
				13,
				14,
				15,
				16,
				17,
				18,
				19,
				19,
				19
				];
		
		public function NinjaNameColorDef()
		{
		}
		
		public static function getNameTextColorByStrengthenLevel(strengthenLevel:int):uint
		{
			var index:int;
			if (strengthenLevel < 0)
			{
				index = 0;
			}
			else if (strengthenLevel > (strenthenLeveltoColor.length-1))
			{
				index = strenthenLeveltoColor.length-1;
			}
			else
			{
				index = strengthenLevel;
			}
			
			return strenthenLeveltoColor[index] as uint;
		}
		
		public static function getNameTextColorNameByStrengthenLevel(strengthenLevel:int):String
		{
			var index:int;
			if (strengthenLevel < 0)
			{
				index = 0;
			}
			else if (strengthenLevel > (strenthenLevelToColorName.length-1))
			{
				index = strenthenLevelToColorName.length-1;
			}
			else
			{
				index = strengthenLevel;
			}
			
			return strenthenLevelToColorName[index] as String;
		}
		
		public static function getNameAppendStrByStrengthenLevel(strengthenLevel:int):String
		{
			var index:int;
			if (strengthenLevel < 0)
			{
				index = 0;
			}
			else if (strengthenLevel > (strenthenLevelToNameAppendStr.length-1))
			{
				index = strenthenLevelToNameAppendStr.length-1;
			}
			else
			{
				index = strengthenLevel;
			}
			
			return strenthenLevelToNameAppendStr[index] as String;
		}
		
		public static function getFrameIndexByStrengthenLevel(strengthenLevel:int):int
		{
			var index:int;
			if (strengthenLevel < 0)
			{
				index = 0;
			}
			else if (strengthenLevel > (strenthenLevelToFrameIndex.length-1))
			{
				index = strenthenLevelToFrameIndex.length-1;
			}
			else
			{
				index = strengthenLevel;
			}
			
			return strenthenLevelToFrameIndex[index] as int;
		}
		
		public static function getBgIndexByStrengthenLevel(strengthenLevel:int):int
		{
			var index:int;
			if (strengthenLevel < 0)
			{
				index = 0;
			}
			else if (strengthenLevel > (strenthenLevelToBgIndex.length-1))
			{
				index = strenthenLevelToBgIndex.length-1;
			}
			else
			{
				index = strengthenLevel;
			}
			
			return strenthenLevelToBgIndex[index] as int;
		}
	}
}