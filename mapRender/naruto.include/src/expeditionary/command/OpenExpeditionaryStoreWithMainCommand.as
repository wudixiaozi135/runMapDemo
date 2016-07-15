package expeditionary.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenExpeditionaryStoreWithMainCommand extends NarutoCommand
	{
		public function OpenExpeditionaryStoreWithMainCommand()
		{
			super(2);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.EXPEDITIONARY;
		}
	}
}
