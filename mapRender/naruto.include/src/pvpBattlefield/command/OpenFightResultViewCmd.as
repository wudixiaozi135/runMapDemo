package pvpBattlefield.command {
    import base.NarutoCommand;
    
    import def.PluginDef;
    
    public class OpenFightResultViewCmd extends NarutoCommand {
        /**
         * 后台返回码
         */
        public var errorCode:int;
        
        public function OpenFightResultViewCmd(commandLoadingType:int = 2) {
            super(commandLoadingType);
        }
        
        override public function getPluginName():String {
            return PluginDef.PVPBATTLEFIELD;
        }
    }
}
