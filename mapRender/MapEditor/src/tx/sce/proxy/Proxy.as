package tx.sce.proxy
{
	import tx.sce.command.Command;
	import tx.sce.event.CommandEvent;
	import tx.sce.event.UpdateEvent;
	import tx.sce.manager.ControlManager;
	import tx.sce.updateMsg.UpdateMsg;
	
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import spark.components.WindowedApplication;
	
	public class Proxy extends EventDispatcher
	{
		protected var app:MapEditor;
		
		public function Proxy()
		{
			super();
		}
		
		public function onReceiveMsg(evt:UpdateEvent):void
		{
			handleMsg(evt.msg);
		}
		
		protected function handleMsg(msg:UpdateMsg):void
		{
			throw new Error(this+"未处理handleMsg函数");
		}
		
		public function dispatchCommand(cmd:Command):void
		{
			dispatchEvent(new CommandEvent(cmd));
			//var dispatcher:EventDispatcher = new EventDispatcher();
			//dispatcher.dispatchEvent(new CommandEvent(cmd);
		}
		
		public function linkToManager(manager:ControlManager):void
		{
			this.addEventListener(CommandEvent.NORMAL_COMMAND,manager.onReceiveCommand);
			manager.addEventListener(UpdateEvent.UPDATA_NORMAL,this.onReceiveMsg);
		}
			
	}
}