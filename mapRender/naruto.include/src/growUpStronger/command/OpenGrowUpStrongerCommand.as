package growUpStronger.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenGrowUpStrongerCommand extends NarutoCommand
	{
		/**
		 * 后台返回码
		 */
		public var errorCode:int;
		public var tabIdx:int = 1 ;
		public function OpenGrowUpStrongerCommand(tabidx:int = 1)
		{
			super(2);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.GROWUPSTRONGER;
		}
	}
}
