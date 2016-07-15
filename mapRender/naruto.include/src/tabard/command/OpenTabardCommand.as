package tabard.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenTabardCommand extends NarutoCommand
	{
		/**
		 * 后台返回码
		 */
		public var errorCode:int;
		/**
		 * @param idx 子页签: 0 信息页 1 升级 2 升阶 3幻化
		 */
		public var tabIdx:int ;
		/**
		 *0战袍1时装 
		 */		
		public var mainTabIdx:int ;
		/**首次打开是否按照指定idx来显示*/
		public var showIdx:Boolean;
		
		public function OpenTabardCommand(idx:int = 0,mainTab:int=0,_showIdx:Boolean=false)
		{
			tabIdx = idx;
			mainTabIdx=mainTab;
			showIdx = _showIdx;
			super(2);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.TABARD;
		}
	}
}
