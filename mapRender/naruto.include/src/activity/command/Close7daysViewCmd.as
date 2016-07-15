package activity.command {
    import base.NarutoCommand;
    
    import def.PluginDef;
    
    public class Close7daysViewCmd extends NarutoCommand {
        public function Close7daysViewCmd(commandLoadingType:int = 2) {
            super(commandLoadingType);
        }
        
        override public function getPluginName():String {
            return PluginDef.ACTIVITY;
        }
    }
}
