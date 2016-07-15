package rumorPlot.model
{
	import rumorPlot.model.cfg.ConditionInfosConfig;
	import rumorPlot.model.cfg.DialogInfosConfig;
	import rumorPlot.model.cfg.ScriptInfosConfig;
	import rumorPlot.model.cfg.TriggerInfosConfig;

	public class RumorModel
	{
		static public var instance:RumorModel = new RumorModel(); 
		
		/**
		 * 脚本配置
		 */		
		public var scriptInfosConfig:ScriptInfosConfig = new ScriptInfosConfig();
		
		/**
		 * 触发器配置
		 */		
		
		public var triggerInfosConfig:TriggerInfosConfig = new TriggerInfosConfig();
		/**
		 * 条件配置
		 */		
		public var conditionInfosConfig:ConditionInfosConfig = new ConditionInfosConfig();
		
		/**
		 * 对白配置
		 */		
		public var dialogInfosConfig:DialogInfosConfig = new DialogInfosConfig();
		
		
	}
}