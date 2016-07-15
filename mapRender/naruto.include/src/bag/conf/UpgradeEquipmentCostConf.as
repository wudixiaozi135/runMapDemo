package bag.conf
{
    import com.tencent.morefun.framework.apf.core.plugin.Plugin;
    
    import flash.utils.ByteArray;
    import flash.utils.Dictionary;
    
    import bag.data.UpgradeEquipmentCostData;
    
    import cfgData.CFGDataEnum;
    import cfgData.CFGDataLibs;
    import cfgData.dataStruct.UpgradeEquipmentCostCFG;

    public class UpgradeEquipmentCostConf
    {
        private static const CONF_LINK:String               =   "bag.conf.upgradeEquipmentCost";
        private static const CONF_KEY:String                =   CFGDataEnum.ENUM_UpgradeEquipmentCostCFG;

        private static var _confData:ByteArray;
        private static var _items:Dictionary;

        public static function initialize(plugin:Plugin):void
        {
            _confData = plugin.getResource(plugin.getPluginName())[CONF_LINK] as ByteArray;
            parse(CFGDataLibs.parseData(_confData, CONF_KEY));
        }

        public static function destroy():void
        {
            _confData = null;
            _items = null;
        }

        public static function calcMoneyCost(level:int, quality:int):int
        {
            if (_items == null)
                return 0;

            for each(var item:UpgradeEquipmentCostData in _items)
            {
                if (item.level == level)
                    return item["money" + quality];
            }

            return 0;
        }

        public static function calcScrollCost(level:int, quality:int):int
        {
            if (_items == null)
                return 0;

            for each(var item:UpgradeEquipmentCostData in _items)
            {
                if (item.level == level)
                    return item["scroll" + quality];
            }

            return 0;
        }

        private static function parseItem(cfg:UpgradeEquipmentCostCFG):UpgradeEquipmentCostData
        {
            var data:UpgradeEquipmentCostData = new UpgradeEquipmentCostData();

            data.id = cfg.id;
            data.level = cfg.level;
            data.money1 = cfg.money1;
            data.money2 = cfg.money2;
            data.money3 = cfg.money3;
            data.money4 = cfg.money4;
            data.money5 = cfg.money5;
            data.money6 = cfg.money6;
            data.money7 = cfg.money7;
            data.money8 = cfg.money8;
            data.money9 = cfg.money9;
            data.scroll1 = cfg.scroll1;
            data.scroll2 = cfg.scroll2;
            data.scroll3 = cfg.scroll3;
            data.scroll4 = cfg.scroll4;
            data.scroll5 = cfg.scroll5;
            data.scroll6 = cfg.scroll6;
            data.scroll7 = cfg.scroll7;
            data.scroll8 = cfg.scroll8;
            data.scroll9 = cfg.scroll9;

            return data;
        }

        private static function parse(cfgs:Dictionary):void
        {
            _items = new Dictionary();
            var data:UpgradeEquipmentCostData;

            for each(var cfg:UpgradeEquipmentCostCFG in cfgs)
            {
                data = parseItem(cfg);
                _items[data.id] = data;
            }
        }

        public function UpgradeEquipmentCostConf()
        {
            throw new Error(UpgradeEquipmentCostConf + " can not be instantiated.");
        }
    }
}