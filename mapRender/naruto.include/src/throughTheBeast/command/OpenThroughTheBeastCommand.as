package throughTheBeast.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenThroughTheBeastCommand extends NarutoCommand
	{
		/**
		 * 后台返回码
		 */
		public var errorCode:int;
		
		public var tabIdx:int;
		public var innerTabIdx:int;
		/**
		 * 
		 * @param setTabIdx  页签 
		 * @param setInnerTabIdx  子页签
		 * 
		 */		
		public function OpenThroughTheBeastCommand(setTabIdx:int=0,setInnerTabIdx:int=0)
		{
			tabIdx = setTabIdx;
			innerTabIdx = setInnerTabIdx;
			super(2);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.THROUGHTHEBEAST;
		}
	}
}
