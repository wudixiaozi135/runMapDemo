package hud.utils
{
    import bag.BagConst;
    import bag.data.BeastFragmentData;
    import bag.data.BeastRuneData;
    import bag.data.CardItemData;
    import bag.data.EquipmentItemData;
    import bag.data.ItemData;
    import bag.data.TaskItemData;
    import bag.data.TreasureMapItemData;
    import bag.def.ItemTabs;
    import bag.utils.BagUtils;
    
    import serverProto.bag.ProtoGetBagListType;

    public class ItemFilter
    {
        public static function filterByTab(tab:int):Object
        {
            switch (tab)
            {
                case ItemTabs.ALL:
                    return filterAllItems();
                case ItemTabs.TASK:
                    return filterTaskItems();
                case ItemTabs.EQUIPMENT:
                    return filterEquipmentItems();
                case ItemTabs.CARD:
                    return filterCardItems();
                case ItemTabs.USABLE:
                case ItemTabs.GEM:
                    return filterCommonItems(tab);
                case ItemTabs.BEAST_FRAGMENTS:
                    return filterBeastFragments();
                case ItemTabs.BEAST_RUNES:
                    return filterBeastRunes();
                case ItemTabs.TREASURE_MAP:
                    return filterTreasureMaps();
                case ItemTabs.EQUIPMENT_AND_ALL:
                    return filterEquipmentAndAllItemsItems();
            }

            return null;
        }

        public static function calcServerItemTabs(clientTab:int):Array
        {
            var serverTab:int;

            switch (clientTab)
            {
                case ItemTabs.USABLE:
                    serverTab = ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_ITEM;
                    break;
                case ItemTabs.TASK:
                    serverTab = ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_TASK;
                    break;
                case ItemTabs.EQUIPMENT:
                    serverTab = ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_EQUIP;
                    break;
                case ItemTabs.CARD:
                    serverTab = ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_CARD;
                    break;
                case ItemTabs.BEAST_FRAGMENTS:
                    serverTab = ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_SUMMON_MONSTER_CARD;
                    break;
                case ItemTabs.BEAST_RUNES:
                    serverTab = ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_RUNE;
                    break;
                case ItemTabs.TREASURE_MAP:
                    serverTab = ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_TREASURE_MAP;
                    break;
                default:
                    serverTab = ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_ALL;
            }

            return [serverTab];
        }

        public static function calcClientItemTab(serverTab:int):int
        {
            var clientTab:int;

            switch (serverTab)
            {
                case ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_ITEM:
                    clientTab = ItemTabs.USABLE;
                    break;
                case ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_TASK:
                    clientTab = ItemTabs.TASK;
                    break;
                case ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_EQUIP:
                    clientTab = ItemTabs.EQUIPMENT;
                    break;
                case ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_CARD:
                    clientTab = ItemTabs.CARD;
                    break;
                case ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_SUMMON_MONSTER_CARD:
                    clientTab = ItemTabs.BEAST_FRAGMENTS;
                    break;
                case ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_RUNE:
                    clientTab = ItemTabs.BEAST_RUNES;
                    break;
                case ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_TREASURE_MAP:
                    clientTab = ItemTabs.TREASURE_MAP;
                    break;
                case ProtoGetBagListType.PROTO_GET_BAG_LIST_TYPE_ALL:
                    clientTab = ItemTabs.ALL;
            }

            return clientTab;
        }

        public static function filterAllItems():Vector.<ItemData>
        {
            if (BagUtils.model.items == null)
                return null;

            var len:int = BagUtils.model.items.length;
            var lockedNum:int = len < BagConst.ITEM_CELL_MAX_NUM ? BagConst.ITEM_CELL_MAX_NUM - len : 0;
            var arr:Array = [];

            for (var i:int=0; i<lockedNum; i++)
                arr.push(new ItemData());

            var items:Vector.<ItemData> = BagUtils.model.items.concat(Vector.<ItemData>(arr));

            return items;
        }

        public static function filterTaskItems():Vector.<TaskItemData>
        {
            return BagUtils.model.taskItems;
        }

        public static function filterEquipmentItems():Vector.<EquipmentItemData>
        {
            return BagUtils.model.equipmentItems;
        }

        public static function filterCardItems():Vector.<CardItemData>
        {
            return BagUtils.model.cardItems;
        }

        public static function filterCommonItems(tab:int):Vector.<ItemData>
        {
            if (BagUtils.model.items == null)
                return null;

            var items:Vector.<ItemData> = BagUtils.model.items;
            var len:int = items.length;
            var arr:Array = [];

            for (var i:int=0; i<len; i++)
            {
                if (items[i].tab == tab)
                    arr.push(items[i]);
            }

            return Vector.<ItemData>(arr);
        }

        public static function filterEquipmentAndAllItemsItems():Vector.<ItemData>
        {
            if (BagUtils.model.items == null || BagUtils.model.equipmentItems == null)
                return null;

            var vec:Vector.<ItemData> = BagUtils.model.items.concat(BagUtils.model.equipmentItems);
            vec.reverse();

            return vec;
        }

        public static function filterBeastFragments():Vector.<BeastFragmentData>
        {
            return BagUtils.model.beastFragments;
        }

        public static function filterBeastRunes():Vector.<BeastRuneData>
        {
            return BagUtils.model.beastRunes;
        }

        public static function filterTreasureMaps():Vector.<TreasureMapItemData>
        {
            return BagUtils.model.treasureMapItems;
        }

        public function ItemFilter()
        {
            throw new Error(ItemFilter + " can not be instantiated.");
        }
    }
}