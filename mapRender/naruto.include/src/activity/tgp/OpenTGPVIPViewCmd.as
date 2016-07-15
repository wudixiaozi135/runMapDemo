package activity.tgp {
    import base.NarutoCommand;
    
    import def.PluginDef;

	/**
	 *
	 * @author Devin Lee
	 * 
	 */    
    public class OpenTGPVIPViewCmd extends NarutoCommand{
        public function OpenTGPVIPViewCmd() {
			
        }
        
        override public function getPluginName():String {
            return PluginDef.ACTIVITY;
        }
    }
}
