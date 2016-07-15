package bag.conf
{
    import bag.data.CardItemData;
    import bag.data.ItemData;
    import bag.utils.BagUtils;

    public class BagItemConf
    {
        private static var _itemConf:IConfProxy;
		private static var _fashionItemConf:IConfProxy;
        private static var _equipmentConf:IEquipmentConfProxy;
        private static var _gemConf:IGemConfProxy;
        private static var _cardConf:ICardConfProxy;
        private static var _ninjaPropsConf:IConfProxy;
        private static var _beastFragmentConf:IConfProxy;
        private static var _beastRuneConf:IConfProxy;
        private static var _treasureMapConf:IConfProxy;

        public static function initialize(itemConf:IConfProxy, equipmentConf:IEquipmentConfProxy, gemConf:IGemConfProxy, cardConf:ICardConfProxy, ninjaPropsConf:IConfProxy, beastFragmentConf:IConfProxy, beastRuneConf:IConfProxy, treasureMapConf:IConfProxy,fashionItemConfig:IConfProxy):void
        {
            _itemConf = itemConf;
            _equipmentConf = equipmentConf;
            _gemConf = gemConf;
            _cardConf = cardConf;
            _ninjaPropsConf = ninjaPropsConf;
            _beastFragmentConf = beastFragmentConf;
            _beastRuneConf = beastRuneConf;
            _treasureMapConf = treasureMapConf;
			_fashionItemConf = fashionItemConfig;
        }

        public static function destroy():void
        {
            _itemConf = null;
			_fashionItemConf=null;
            _equipmentConf = null;
            _gemConf = null;
            _cardConf = null;
            _ninjaPropsConf = null;
            _beastFragmentConf = null;
            _beastRuneConf = null;
            _treasureMapConf = null;
        }

        public static function findDataById(id:uint, returnNew:Boolean=false):ItemData
        {
            var conf:IConfProxy = findConfById(id);
            var data:ItemData = conf != null ? conf.findDataById(id, returnNew) : null;

            return data;
        }

        public static function fillData(data:ItemData):void
        {
            if (data == null)
                return;

            var conf:IConfProxy = findConfById(data.id);

            if (conf != null)
                conf.fillData(data);
        }

        public static function findCardDataByNinjaId(ninjaId:uint, returnNew:Boolean=false):CardItemData
        {
            return _cardConf.findDataByNinjaId(ninjaId, returnNew);
        }

        public static function getEquipmentMaxQuality():int
        {
            return _equipmentConf.getMaxQuality();
        }

        public static function getGemMaxQuality():int
        {
            return _gemConf.getMaxQuality();
        }

        private static function findConfById(id:uint):IConfProxy
        {
            var conf:IConfProxy;

            if (BagUtils.isEquipmentItem(id))
                conf = _equipmentConf;
            else if (BagUtils.isGemItem(id))
                conf = _gemConf;
            else if (BagUtils.isCardItem(id))
                conf = _cardConf;
            else if (BagUtils.isNinjaPropsItem(id))
                conf = _ninjaPropsConf;
            else if (BagUtils.isBeastFragment(id))
                conf = _beastFragmentConf;
            else if (BagUtils.isBeastRune(id))
                conf = _beastRuneConf;
            else if (BagUtils.isTreasureMapItem(id))
                conf = _treasureMapConf;
			else if(BagUtils.isFashionItem(id))
				conf = _fashionItemConf;
            else
                conf = _itemConf;

            return conf;
        }

        public function BagItemConf()
        {
            throw new Error(BagItemConf + " can not be instantiated.");
        }
    }
}