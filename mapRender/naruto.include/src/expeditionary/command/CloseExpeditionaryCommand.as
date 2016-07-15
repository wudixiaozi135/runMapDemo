package expeditionary.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class CloseExpeditionaryCommand extends NarutoCommand
	{
		/**
		 * 后台返回码
		 */
		public var errorCode:int;
		public function CloseExpeditionaryCommand(commandLoadingType:int=2)
		{
			super(commandLoadingType);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.EXPEDITIONARY;
		}
	}
}