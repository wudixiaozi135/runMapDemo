package ui.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	import player.datas.PlayerData;
	
	public class SetSelectedPlayerCommand extends Command
	{
		public var playerData:PlayerData;
		
		public function SetSelectedPlayerCommand(playerData:PlayerData)
		{
			super();
			this.playerData = playerData;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.HUD;
		}
	}
}