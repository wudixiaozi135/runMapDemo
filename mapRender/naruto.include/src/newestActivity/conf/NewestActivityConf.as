package newestActivity.conf
{
    import com.tencent.morefun.framework.apf.core.plugin.Plugin;
    
    import flash.utils.Dictionary;
    
    import newestActivity.data.NewestActivityConfData;

    public class NewestActivityConf
    {
        private static const CONF_LINK:String               =   "plugin.newestActivity.activityConf";

        private static var _confData:XML;
        private static var _items:Dictionary;

        public static function initialize(plugin:Plugin):void
        {
            _confData = plugin.getResource(plugin.getPluginName())[CONF_LINK] as XML;
            _items = new Dictionary();

            parse(_confData);
        }

        public static function dispose():void
        {
            _confData = null;
            _items = null;
        }

        public static function getConfDataById(id:uint):NewestActivityConfData
        {
            return _items[id];
        }

        private static function parse(xml:XML):void
        {
            if (xml == null)
                return;

            var activities:XMLList = xml.Activity;
            var len:int = activities.length();
            var node:XML;
            var data:NewestActivityConfData;

            for (var i:int=0; i<len; ++i)
            {
                node = activities[i];

                data = new NewestActivityConfData();
                data.id = uint(node.@id);
                data.name = node.@name;
                data.viewClass = node.@viewClass;

                _items[data.id] = data;
            }
        }

        public function NewestActivityConf()
        {
            throw new Error(NewestActivityConf + " can not be instantiated.");
        }
    }
}