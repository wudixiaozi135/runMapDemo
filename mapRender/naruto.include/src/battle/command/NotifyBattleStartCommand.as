package battle.command
{
	import flash.utils.ByteArray;
	
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class NotifyBattleStartCommand extends NarutoCommand
	{
		public var messageBytes:ByteArray
		
		public function NotifyBattleStartCommand(messageBytes:ByteArray)
		{
			super();
			
			this.messageBytes = messageBytes;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.BATTLE;
		}
	}
}