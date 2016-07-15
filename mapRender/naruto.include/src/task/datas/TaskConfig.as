package task.datas
{
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	
	import cfgData.CFGDataEnum;
	import cfgData.CFGDataLibs;
	

	public class TaskConfig
	{
		private static var _instance:TaskConfig;
		public static function get instance():TaskConfig
		{
			if(_instance==null)
			{
				_instance = new TaskConfig();
			}
			return _instance;
		}

		private var dict:Dictionary = new Dictionary();
		public function TaskConfig()
		{
			
		}
		
		
		public function setData(bytes:ByteArray):void
		{
			var cfgs:Dictionary = CFGDataLibs.parseData(bytes,CFGDataEnum.ENUM_TaskTransferCFG);
			for each(var cfg:* in cfgs)
			{
				var tc:TaskCfg = new TaskCfg();
				tc.setData(cfg);
				
				dict[cfg.id] = tc;
			}
		}
		
		public function getTaskCfg(id:uint):TaskCfg
		{
			return dict[id];
		}
	}
}