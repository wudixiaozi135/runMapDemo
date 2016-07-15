package arena.command {
    import base.NarutoCommand;
    
    import def.PluginDef;
    
    public class OpenArenaCommand extends NarutoCommand {
        /**
         * 后台返回码
         */
        public var errorCode:int;
        
        public function OpenArenaCommand(commandLoadingType:int = 2) {
            super(commandLoadingType);
        }
        
        override public function getPluginName():String {
            return PluginDef.ARENA;
        }
    }
}
