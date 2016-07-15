package pvpBattlefield.command {
    import base.NarutoCommand;
    
    import def.PluginDef;
	/**
	 *战场内基本信息 关闭
	 * @author Georgehu
	 * 
	 */    
    public class ClosePvpBattlefieldCivilViewCmd extends NarutoCommand {
        public function ClosePvpBattlefieldCivilViewCmd(commandLoadingType:int = 2) {
            super(commandLoadingType);
        }
        
        override public function getPluginName():String {
            return PluginDef.PVPBATTLEFIELD;
        }
    }
}
