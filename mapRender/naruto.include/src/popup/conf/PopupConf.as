package popup.conf
{
    import com.tencent.morefun.framework.apf.core.plugin.Plugin;
    
    import flash.utils.ByteArray;
    import flash.utils.Dictionary;
    
    import cfgData.CFGDataEnum;
    import cfgData.CFGDataLibs;
    import cfgData.dataStruct.PopupConfCFG;
    
    import popup.data.PopupConfData;

    public class PopupConf
    {
        private static const CONF_LINK:String               =   "plugin.popup.conf";
        private static const CONF_KEY:String                =   CFGDataEnum.ENUM_PopupConfCFG;

        private static var _confData:ByteArray;
        private static var _list:Vector.<PopupConfData>;

        public static function initialize(plugin:Plugin):void
        {
            _confData = plugin.getResource(plugin.getPluginName())[CONF_LINK] as ByteArray;
            parse(CFGDataLibs.parseData(_confData, CONF_KEY));
        }

        public static function destroy():void
        {
            _confData = null;
            _list = null;
        }

        public static function getConfList():Vector.<PopupConfData>
        {
            return _list;
        }

        public static function getConfByIndex(index:int):PopupConfData
        {
            if (index >= 0 && index < _list.length)
                return _list[index];
            else
                return null;
        }

        private static function parse(cfgs:Dictionary):void
        {
            _list = new Vector.<PopupConfData>();
            var data:PopupConfData;

            for each(var cfg:PopupConfCFG in cfgs)
            {
                data = parseItem(cfg);
                _list.push(data);
            }
        }

        private static function parseItem(cfg:PopupConfCFG):PopupConfData
        {
            if (cfg == null)
                return null;

            var data:PopupConfData = new PopupConfData();

            data.id = cfg.id;
            data.name = cfg.name;
            data.type = cfg.type;
            data.priority = cfg.pry;
			data.hideWhenExclusive = (cfg.hideWhenExclusive == 1);

            return data;
        }

        public function PopupConf()
        {
            throw new Error(PopupConf + " can not be instantiated.");
        }
    }
}