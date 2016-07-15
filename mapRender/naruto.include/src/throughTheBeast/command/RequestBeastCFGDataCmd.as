package throughTheBeast.command {
    import com.tencent.morefun.framework.base.Command;
    
    import flash.utils.Dictionary;
    
    import def.PluginDef;

	/**
	 *通灵兽的配置数据 
	 * @author Georgehu
	 * 
	 */    
    public class RequestBeastCFGDataCmd extends Command {
		public var cfgData:Dictionary;
        public function RequestBeastCFGDataCmd(commandLoadingType:int = 2, autoHideLoading:Boolean = true) {
            super();
        }
        
        override public function getPluginName():String {
            return PluginDef.RSMODEL;
        }
    }
}
