package rankingStore.conf
{
    import com.tencent.morefun.framework.apf.core.plugin.Plugin;
    
    import flash.utils.Dictionary;
    
    import rankingStore.data.StoreCommandData;
    import rankingStore.data.StoreConfData;

    public class StoreConf
    {
        private static const CONF_LINK:String               =   "plugin.rankingStore.storeConf";

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

        public static function getConfDataByType(type:int):StoreConfData
        {
            return _items[type];
        }

        public static function getTypeByOpenCommandName(name:String):int
        {
            for each(var item:StoreConfData in _items)
            {
                if (item.openCommand == name)
                    return item.type;
            }

            return -1;
        }

        public static function getIntergratedStoreTypes():Array
        {
            if (_items == null)
                return null;

            var confArr:Array = [];
            var arr:Array = [];

            for each(var item:StoreConfData in _items)
            {
                if (item.intergrated)
                    confArr.push(item);
            }

            confArr.sortOn("hudType", Array.NUMERIC);

            var len:int = confArr.length;

            for (var i:int=0; i<len; ++i)
                arr.push(confArr[i].type);

            return arr;
        }

        private static function parse(xml:XML):void
        {
            if (xml == null)
                return;

            var stores:XMLList = xml.Store;
            var len:int = stores.length();
            var node:XML;
            var data:StoreConfData;

            for (var i:int=0; i<len; ++i)
            {
                node = stores[i];

                data = new StoreConfData();
                data.type = int(node.@type);
                data.name = node.@name;
                data.panelName = node.@panelName;
                data.panelClass = node.@panelClass;
                data.coinName = node.@coinName;
                data.coinTooltip = node.@coinTooltip;
                data.adText = node.@adText;
                data.manualRefresh = !((String(node.@manualRefresh)) == "false");
                data.openCommand = node.@openCommand;
                data.openedCommands = parseOpenedCommands(node.OpenedCommands[0]);
                data.intergrated = (node.@intergrated == "true");
                data.hudType = int(node.@hudType);

                if (data.coinTooltip != null)
                    data.coinTooltip = data.coinTooltip.replace("\\n", "\n");

                _items[data.type] = data;
            }
        }

        private static function parseOpenedCommands(xml:XML):Array
        {
            if (xml == null)
                return null;

            var commands:XMLList = xml.Command;
            var len:int = commands.length();
            var node:XML;
            var data:StoreCommandData;
            var arr:Array = [];

            for (var i:int=0; i<len; ++i)
            {
                node = commands[i];

                data = new StoreCommandData();
                data.name = node.@name;
                data.args = node.@args != null ? node.@args.split(",") : null;

                arr[i] = data;
            }

            return arr;
        }

        public function StoreConf()
        {
            throw new Error(StoreConf + " can not be instantiated.");
        }
    }
}