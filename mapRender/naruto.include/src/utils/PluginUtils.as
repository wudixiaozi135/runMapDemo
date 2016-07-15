package utils
{
    import com.tencent.morefun.framework.apf.core.facade.Facade;
    import com.tencent.morefun.framework.apf.core.plugin.Plugin;
    
    import bag.model.BagModel;
    
    import def.ModelDef;
    import def.PluginDef;

    public class PluginUtils
    {
        public static function get bagModel():BagModel
        {
            var plugin:Plugin = Facade.getInstance().retrievePlugin(PluginDef.RSMODEL) as Plugin;

            if (plugin != null)
                return plugin.retrieveModel(ModelDef.BAG) as BagModel;
            else
                return null;
        }

        public function PluginUtils()
        {
            throw new Error(PluginUtils + " can not be instantiated.");
        }
    }
}