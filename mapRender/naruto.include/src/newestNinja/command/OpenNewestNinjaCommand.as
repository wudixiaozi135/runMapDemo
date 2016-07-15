package newestNinja.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenNewestNinjaCommand extends NarutoCommand
	{
		/**
		 * 后台返回码
		 */
		public var errorCode:int;
		public function OpenNewestNinjaCommand(commandLoadingType:int=2)
		{
			super(commandLoadingType);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.NEWESTNINJA;
		}
	}
}
