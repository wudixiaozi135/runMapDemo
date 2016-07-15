package activity.unionService {
    import base.NarutoCommand;
    
    import def.PluginDef;

	/**
	 *
	 * @author Devin Lee
	 * 
	 */    
    public class UnionServiceOpenViewCmd extends NarutoCommand{
        public function UnionServiceOpenViewCmd() {
			
        }
        
        override public function getPluginName():String {
            return PluginDef.ACTIVITY;
        }
    }
}
