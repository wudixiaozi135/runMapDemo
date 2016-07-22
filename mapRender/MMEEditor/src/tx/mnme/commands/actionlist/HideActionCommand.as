package tx.mnme.commands.actionlist
{
	import tx.mnme.commands.cmd_internal;
	import tx.mnme.views.panels.ActionList;
	
	use namespace cmd_internal;
	public class HideActionCommand extends BaseActionCommand
	{
		private var datas:Vector.<HideActionData>;
		private var isHide:Boolean;
		
		public function HideActionCommand(action:ActionList,datas:Vector.<HideActionData>,isHide:Boolean)
		{
			this.datas = datas;
			this.isHide = isHide;
			super(action);
		}
		
		override cmd_internal function execDo():void
		{
			action.doHideAction(datas,isHide);
		}
		
		override cmd_internal function execUndo():void
		{
			action.undoHideAction(datas);
		}
	}
}