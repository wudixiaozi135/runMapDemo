package knowledgeTest.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenKnowledgeTestCommand extends NarutoCommand
	{
		/**
		 * 后台返回码
		 */
		public var errorCode:int;
		public function OpenKnowledgeTestCommand(commandLoadingType:int=2)
		{
			super(commandLoadingType);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.KNOWLEDGETEST;
		}
	}
}
