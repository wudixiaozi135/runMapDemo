package activity.bringinMoney {
    import base.NarutoCommand;
    
    import def.PluginDef;

	/**
	 *
	 * @author Devin Lee
	 * 
	 */    
    public class BringinMoneyOpenViewCmd extends NarutoCommand{
        public function BringinMoneyOpenViewCmd() {
			
        }
        
        override public function getPluginName():String {
            return PluginDef.ACTIVITY;
        }
    }
}
