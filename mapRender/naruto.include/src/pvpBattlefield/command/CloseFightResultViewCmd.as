package pvpBattlefield.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;

	public class CloseFightResultViewCmd extends NarutoCommand {
		public function CloseFightResultViewCmd(commandLoadingType:int = 2) {
			super(commandLoadingType);
		}
		
		override public function getPluginName():String {
			return PluginDef.PVPBATTLEFIELD;
		}
	}
}