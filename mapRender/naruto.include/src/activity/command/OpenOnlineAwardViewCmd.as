package activity.command {
    import base.NarutoCommand;
    
    import def.PluginDef;

	/**
	 *
	 * @author Devin Lee
	 * 
	 */    
    public class OpenOnlineAwardViewCmd extends NarutoCommand{
        public function OpenOnlineAwardViewCmd() {
			
        }
        
        override public function getPluginName():String {
            return PluginDef.ACTIVITY;
        }
    }
}
