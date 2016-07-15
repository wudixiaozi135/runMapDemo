package welfare.commands
{

	public class OpenWelfareHallPanelCommand extends BaseWelfareCommand
	{
		public var tab:int;
		/**
		 * 页面下标
		 * 
		 * @param tab
		 * @see welfare.defs.WelfareHallTabDef
		 */		
		public function OpenWelfareHallPanelCommand(tab:int=-1)
		{
			super();
			
			this.tab = tab;
		}
	}
}