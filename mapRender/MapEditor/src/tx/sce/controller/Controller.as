package tx.sce.controller
{
	import tx.sce.command.Command;
	import tx.sce.data.DataCollect;
	import tx.sce.event.CommandEvent;
	import tx.sce.event.UpdateEvent;
	import tx.sce.manager.ControlManager;
	import tx.sce.updateMsg.UpdateMsg;
	
	import flash.events.EventDispatcher;

	public class Controller extends EventDispatcher
	{
		protected var data:DataCollect;
		
		public function Controller(dt:DataCollect)
		{
			data = dt;
		}
		
		public function onReceiveCommand(evt:CommandEvent):void		
		{
			if (evt.undo == true)
				undoCommand(evt.cmd);
			else 
				doCommand(evt.cmd);
		}
		
		protected function doCommand(cmd:Command):void
		{
			throw new Error(this+"未处理doCommand函数");
		}
		
		protected function undoCommand(cmd:Command):void
		{
			throw new Error(this+"未处理undoCommand函数");
		}
		
		protected function dispatchMsg(msg:UpdateMsg):void
		{
			this.dispatchEvent(new UpdateEvent(msg));
		}
		
		public function linkToManager(manager:ControlManager):void
		{
			manager.addEventListener(CommandEvent.NORMAL_COMMAND,this.onReceiveCommand);
			this.addEventListener(UpdateEvent.UPDATA_NORMAL,manager.onReceiveMsg);
		}
	}
}