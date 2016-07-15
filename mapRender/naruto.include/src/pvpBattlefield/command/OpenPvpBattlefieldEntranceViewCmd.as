package pvpBattlefield.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	/**
	 *进入PVP 战场 
	 * @author Administrator
	 * 
	 */	
	public class OpenPvpBattlefieldEntranceViewCmd extends NarutoCommand
	{
		/**
		 * 后台返回码
		 */
		public var errorCode:int;
		public function OpenPvpBattlefieldEntranceViewCmd(commandLoadingType:int=2)
		{
			super(commandLoadingType);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.PVPBATTLEFIELD;
		}
	}
}
