package activity.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenActivityCommand extends NarutoCommand
	{
		/**
		 * 后台返回码
		 */
		public var errorCode:int;
		public function OpenActivityCommand(commandLoadingType:int=2)
		{
			super(commandLoadingType);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.ACTIVITY;
		}
	}
}
