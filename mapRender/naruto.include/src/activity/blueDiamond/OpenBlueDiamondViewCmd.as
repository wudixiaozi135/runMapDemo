package activity.blueDiamond {
    import base.NarutoCommand;
    
    import def.PluginDef;

	/**
	 *
	 * @author Devin Lee
	 * 
	 */    
    public class OpenBlueDiamondViewCmd extends NarutoCommand{
        public function OpenBlueDiamondViewCmd() {
			
        }
        
        override public function getPluginName():String {
            return PluginDef.ACTIVITY;
        }
    }
}
