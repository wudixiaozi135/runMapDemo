package crew.data
{
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	
	import cfgData.CFGDataEnum;
	import cfgData.CFGDataLibs;
	import cfgData.dataStruct.MoodInfoCFG;

	public class MoodConfig
	{
		public static var bin:ByteArray;
		
		private static var inited:Boolean;
		private static var moodCfgMap:Dictionary = new Dictionary();
		public function MoodConfig()
		{
		}
		
		private static function init():void
		{
			var moodCfgData:MoodCfgData;
			
			if(inited == true)
			{
				return ;
			}
			
			inited = true;
			
			moodCfgMap = CFGDataLibs.parseData(bin, CFGDataEnum.ENUM_MoodInfoCFG);
		}
		
		public static function getMoodCfgData(id:int):MoodInfoCFG
		{
			init();
			
			return moodCfgMap[id];
		}
	}
}