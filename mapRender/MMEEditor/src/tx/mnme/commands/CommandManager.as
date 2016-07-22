package tx.mnme.commands
{
	use namespace cmd_internal;
	public class CommandManager
	{
		private static var instance:CommandManager;
		public static function getInstance():CommandManager
		{
			return instance || (instance = new CommandManager);
		}
		
		
		private var doMax:int = 50;
		private var undos:Vector.<BaseCommand>;
		private var dos:Vector.<BaseCommand>;
		
		public function CommandManager()
		{
			undos = new Vector.<BaseCommand>;
			dos = new Vector.<BaseCommand>;
		}
		
		public function clear():void
		{
			var cmd:BaseCommand;
			for each(cmd in undos)
			{
				cmd.destroy();
			}
			for each(cmd in dos)
			{
				cmd.destroy();
			}
			undos.length = 0;
			dos.length = 0;
		}
		
		public function setDoMax(value:int):void
		{
			doMax = value;
			checkDoMax();
		}
		
		private function checkDoMax():void
		{
			var cmd:BaseCommand;
			while(undos.length>doMax)
			{
				cmd = undos.shift();
				if(cmd)
				{
					cmd.destroy();
				}
			}
			while(dos.length>doMax)
			{
				cmd = dos.shift();
				if(cmd)
				{
					cmd.destroy();
				}
			}
		}
		
		cmd_internal function doCommand(command:BaseCommand):void
		{
			command.execDo();
			
			
			addCommand(command);
		}
		
		cmd_internal function addCommand(command:BaseCommand):void
		{
			dos.push(command);
			undos.length = 0;
		}
		
		public function undoCommand():void
		{
			if(!canUndoCommand())
			{
				return;
			}
			var command:BaseCommand = dos.pop();
			command.execUndo();
			undos.push(command);
		}
		
		public function  redoCommand():void
		{
			if(!canRedoCommand())
			{
				return;
			}
			var command:BaseCommand = undos.pop();
			command.execDo();
			dos.push(command);
		}
		
		public function canUndoCommand():Boolean
		{
			return dos.length>0;
		}
		
		public function canRedoCommand():Boolean
		{
			return undos.length>0;
		}
	}
}