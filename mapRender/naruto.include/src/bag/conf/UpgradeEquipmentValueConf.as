package bag.conf
{
    import com.tencent.morefun.framework.apf.core.plugin.Plugin;
    
    import flash.utils.ByteArray;
    import flash.utils.Dictionary;
    
    import bag.data.EquipmentItemData;
    import bag.data.GemItemData;
    import bag.data.UpgradeEquipmentValueData;
    import bag.utils.BagUtils;
    
    import cfgData.CFGDataEnum;
    import cfgData.CFGDataLibs;
    import cfgData.dataStruct.UpgradeEquipmentValueCFG;

    public class UpgradeEquipmentValueConf
    {
        private static const CONF_LINK:String               =   "bag.conf.upgradeEquipmentValue";
        private static const CONF_KEY:String                =   CFGDataEnum.ENUM_UpgradeEquipmentValueCFG;
        private static const GEM_NUM:int                    =   5;

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

        public static function calcValue(type:int, quality:int, valueType:int):int
        {
            if (_items == null || quality == 0)
                return 0;

            for each(var item:UpgradeEquipmentValueData in _items)
            {
                if (item.type == type)
                {
                    var valueStartIndex:int = (quality - 1) * 5 + 1;
                    var valueIndex:int = valueStartIndex + (valueType - 1);

                    return item["val" + valueIndex];
                }
            }

            return 0;
        }

        public static function calcTotalValue(type:int, quality:int, valueType:int, baseVal:int, level:int):int
        {
            var val:int = calcValue(type, quality, valueType);

            return baseVal + val * (level - 1);
        }

        public static function calcEquipmentValues(data:EquipmentItemData):Array
        {
            if (data == null)
                return [];

            var val1:int = 0;
            var val2:int = 0;
            var val3:int = 0;
            var val4:int = 0;
            var val5:int = 0;

            var equipmentType:int = BagUtils.calcEquipmentType(data.id);
            val1 += UpgradeEquipmentValueConf.calcTotalValue(equipmentType, data.quality, 1, data.val1, data.level);
            val2 += UpgradeEquipmentValueConf.calcTotalValue(equipmentType, data.quality, 2, data.val2, data.level);
            val3 += UpgradeEquipmentValueConf.calcTotalValue(equipmentType, data.quality, 3, data.val3, data.level);
            val4 += UpgradeEquipmentValueConf.calcTotalValue(equipmentType, data.quality, 4, data.val4, data.level);
            val5 += UpgradeEquipmentValueConf.calcTotalValue(equipmentType, data.quality, 5, data.val5, data.level);

            var gemData:GemItemData;

            if (data.gems != null)
            {
                for (var i:int=0; i<GEM_NUM; ++i)
                {
                    gemData = data.gems[i];

                    if (gemData != null)
                    {
                        val1 += gemData.val1;
                        val2 += gemData.val2;
                        val3 += gemData.val3;
                        val4 += gemData.val4;
                        val5 += gemData.val5;
                    }
                }
            }

            return [val1, val2, val3, val4, val5];
        }

        private static function parseItem(cfg:UpgradeEquipmentValueCFG):UpgradeEquipmentValueData
        {
            var data:UpgradeEquipmentValueData = new UpgradeEquipmentValueData();

            data.id = cfg.id;
            data.type = cfg.type;
            data.val1 = cfg.val1;
            data.val2 = cfg.val2;
            data.val3 = cfg.val3;
            data.val4 = cfg.val4;
            data.val5 = cfg.val5;
            data.val6 = cfg.val6;
            data.val7 = cfg.val7;
            data.val8 = cfg.val8;
            data.val9 = cfg.val9;
            data.val10 = cfg.val10;
            data.val11 = cfg.val11;
            data.val12 = cfg.val12;
            data.val13 = cfg.val13;
            data.val14 = cfg.val14;
            data.val15 = cfg.val15;
            data.val16 = cfg.val16;
            data.val17 = cfg.val17;
            data.val18 = cfg.val18;
            data.val19 = cfg.val19;
            data.val20 = cfg.val20;
            data.val21 = cfg.val21;
            data.val22 = cfg.val22;
            data.val23 = cfg.val23;
            data.val24 = cfg.val24;
            data.val25 = cfg.val25;
            data.val26 = cfg.val26;
            data.val27 = cfg.val27;
            data.val28 = cfg.val28;
            data.val29 = cfg.val29;
            data.val30 = cfg.val30;
            data.val31 = cfg.val31;
            data.val32 = cfg.val32;
            data.val33 = cfg.val33;
            data.val34 = cfg.val34;
            data.val35 = cfg.val35;
            data.val36 = cfg.val36;
            data.val37 = cfg.val37;
            data.val38 = cfg.val38;
            data.val39 = cfg.val39;
            data.val40 = cfg.val40;
            data.val41 = cfg.val41;
            data.val42 = cfg.val42;
            data.val43 = cfg.val43;
            data.val44 = cfg.val44;
            data.val45 = cfg.val45;

            return data;
        }

        private static function parse(cfgs:Dictionary):void
        {
            _items = new Dictionary();
            var data:UpgradeEquipmentValueData;

            for each(var cfg:UpgradeEquipmentValueCFG in cfgs)
            {
                data = parseItem(cfg);
                _items[data.id] = data;
            }
        }

        public function UpgradeEquipmentValueConf()
        {
            throw new Error(UpgradeEquipmentValueConf + " can not be instantiated.");
        }
    }
}