package pvpBattlefield.command {
    import base.NarutoCommand;
    
    import def.PluginDef;
	/**
	 *PVP战场内基本信息 
	 * @author georgehu
	 * 
	 */    
    public class OpenPvpBattlefieldCivilViewCmd extends NarutoCommand {
        public function OpenPvpBattlefieldCivilViewCmd(commandLoadingType:int = 2) {
            super(commandLoadingType);
        }
        
        override public function getPluginName():String {
            return PluginDef.PVPBATTLEFIELD;
        }
    }
}
