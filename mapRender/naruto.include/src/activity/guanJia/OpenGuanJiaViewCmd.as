package activity.guanJia {
    import base.NarutoCommand;
    
    import def.PluginDef;

	/**
	 *
	 * @author Devin Lee
	 * 
	 */    
    public class OpenGuanJiaViewCmd extends NarutoCommand{
        public function OpenGuanJiaViewCmd() {
			
        }
        
        override public function getPluginName():String {
            return PluginDef.ACTIVITY;
        }
    }
}
