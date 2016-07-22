package tx.sce.manager
{
	import tx.sce.command.Command;
	import tx.sce.data.CommandRecord;
	import tx.sce.data.DataCollect;
	import tx.sce.event.CommandEvent;
	import tx.sce.event.UpdateEvent;
	
	import flash.events.EventDispatcher;
	
	import flashx.textLayout.elements.BreakElement;

	public class ControlManager extends EventDispatcher
	{
		private var data:DataCollect;
		
		public function ControlManager(dt:DataCollect)
		{
			data = dt;
		}
		
		public function onReceiveCommand(evt:CommandEvent):void
		{
			noteCommand(evt.cmd);
			docommand(evt.cmd);
			this.dispatchEvent(evt);
		}
		
		private function docommand(cmd:Command):void
		{
			var temp:Command;
			
			switch (cmd.type)
			{
				case Command.NEW_PROJECT:
					data.commandRecord = new CommandRecord();
					break;
				
				case Command.OPEN_PROJECT:
					data.commandRecord = new CommandRecord();
					break;
				
				case Command.CLOSE_PROJECT:
					data.commandRecord = null;
					break;
				
				case Command.UNDO:
					if (data.commandRecord.doneCmd.length > 0)
					{
						trace("undo");
						temp = data.commandRecord.doneCmd.pop();
						data.commandRecord.undoCmd.push(temp);
						this.dispatchEvent(new CommandEvent(temp,true));
					}
					break;
				
				case Command.REDO:
					if (data.commandRecord.undoCmd.length > 0)
					{
						trace("redo");
						temp = data.commandRecord.undoCmd.pop();
						data.commandRecord.doneCmd.push(temp);
						this.dispatchEvent(new CommandEvent(temp,false));
					}
					break;
			}
		}
		
		private function noteCommand(cmd:Command):void
		{
			if (cmd.can_undo) 
			{
				data.commandRecord.doneCmd.push(cmd);
				data.commandRecord.undoCmd.splice(0,data.commandRecord.undoCmd.length);
			}
		}
		
		public function onReceiveMsg(evt:UpdateEvent):void
		{
			this.dispatchEvent(evt);
		}
	}
}