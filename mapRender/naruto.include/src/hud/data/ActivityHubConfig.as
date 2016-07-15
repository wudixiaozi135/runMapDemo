package hud.data
{
	import flash.utils.Dictionary;
	
	import cfgData.dataStruct.ActivityHubCFG;
	import cfgData.dataStruct.ActivityHubLiteCFG;

	public class ActivityHubConfig
	{
		private static var _instance:ActivityHubConfig;
		public static function get instance():ActivityHubConfig
		{
			if(_instance == null)
			{
				_instance = new ActivityHubConfig();
			}
			return _instance;
		}
		
		private var dict:Dictionary;
		private var liteDict:Dictionary;
		public function ActivityHubConfig()
		{
			
		}
		
		public function initData(dict:Dictionary, liteDict:Dictionary):void
		{
			this.dict = dict;
			this.liteDict = liteDict;
		}
		
		public function getCfg(id:int):ActivityHubCFG
		{
			return dict[id];
		}
		
		public function getLiteCfg(id:int):ActivityHubLiteCFG
		{
			for each(var cfg:ActivityHubLiteCFG in liteDict)
			{
				if(cfg.id == id)
				{
					return cfg;
				}
			}
			return null;
		}
	}
}