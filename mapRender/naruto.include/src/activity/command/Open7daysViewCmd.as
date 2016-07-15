package activity.command {
    import base.NarutoCommand;
    
    import def.PluginDef;

	/**
	 *7日礼包View 
	 * @author georgehu
	 * 
	 */    
    public class Open7daysViewCmd extends NarutoCommand{
        public function Open7daysViewCmd(commandLoadingType:int = 2) {
            super(commandLoadingType);
        }
        
        override public function getPluginName():String {
            return PluginDef.ACTIVITY;
        }
    }
}
