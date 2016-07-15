package throughTheBeast.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenThroughTheBeastNpcPanelCommand extends NarutoCommand
	{
		public var id:int;
		public function OpenThroughTheBeastNpcPanelCommand(id:int)
		{
			super();
			this.id = id;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.THROUGHTHEBEAST;
		}
	}
}
