package bag.model
{
    import com.tencent.morefun.naruto.model.BaseModel;
    import com.tencent.morefun.naruto.model.event.ModelEvent;
    
    import bag.command.GetBagDataCommand;
    import bag.data.BeastFragmentData;
    import bag.data.BeastRuneData;
    import bag.data.CardItemData;
    import bag.data.EquipmentItemData;
    import bag.data.ItemData;
    import bag.data.TaskItemData;
    import bag.data.TreasureMapItemData;
    import bag.def.BagModelKeys;
    import bag.utils.BagUtils;
    
    import def.ModelDef;
    
    public class BagModel extends BaseModel
    {
        private var _cellNum:int;
        private var _items:Vector.<ItemData>;
        private var _taskItems:Vector.<TaskItemData>;
        private var _equipmentItems:Vector.<EquipmentItemData>;
        private var _cardItems:Vector.<CardItemData>;
        private var _beastFragments:Vector.<BeastFragmentData>;
        private var _beastRunes:Vector.<BeastRuneData>;
		private var _treasureMapItems:Vector.<TreasureMapItemData>;

        public function BagModel()
        {
            super(ModelDef.BAG);
        }

        public function finalize():void
        {
        }

        public function get cellNum():int
        {
            if (_cellNum == 0)
                fetchBagData();

            return _cellNum;
        }

        public function set cellNum(value:int):void
        {
            if (value == 0)
                return;

            _cellNum = value;
            this.dispModelEvent(ModelEvent.UPDATE, BagModelKeys.CELL_NUM_UPDATE, null, _cellNum);
        }

        public function get items():Vector.<ItemData>
        {
            if (_items == null)
                fetchBagData();

            return _items;
        }

        public function set items(value:Vector.<ItemData>):void
        {
            if (value == null)
                return;

            _items = value;
            this.dispModelEvent(ModelEvent.UPDATE, BagModelKeys.ITEMS_UPDATE, null, _items);
        }

        public function get taskItems():Vector.<TaskItemData>
        {
            if (_taskItems == null)
                fetchBagData();

            return _taskItems;
        }

        public function set taskItems(value:Vector.<TaskItemData>):void
        {
            if (value == null)
                return;

            _taskItems = value;
            this.dispModelEvent(ModelEvent.UPDATE, BagModelKeys.TASK_ITEMS_UPDATE, null, _taskItems);
        }

        public function get equipmentItems():Vector.<EquipmentItemData>
        {
            if (_equipmentItems == null)
                fetchBagData();

            return _equipmentItems;
        }

        public function set equipmentItems(value:Vector.<EquipmentItemData>):void
        {
            if (value == null)
                return;

            _equipmentItems = value;
            this.dispModelEvent(ModelEvent.UPDATE, BagModelKeys.EQUIPMENT_ITEMS_UPDATE, null, _equipmentItems);
        }

        public function get cardItems():Vector.<CardItemData>
        {
            if (_cardItems == null)
                fetchBagData();

            return _cardItems;
        }

        public function set cardItems(value:Vector.<CardItemData>):void
        {
            if (value == null)
                return;

            _cardItems = value;
            this.dispModelEvent(ModelEvent.UPDATE, BagModelKeys.CARD_ITEMS_UPDATE, null, _cardItems);
        }

        public function get beastFragments():Vector.<BeastFragmentData>
        {
            if (_beastFragments == null)
                fetchBagData();

            return _beastFragments;
        }

        public function set beastFragments(value:Vector.<BeastFragmentData>):void
        {
            if (value == null)
                return;

            _beastFragments = value;
            this.dispModelEvent(ModelEvent.UPDATE, BagModelKeys.BEAST_FRAGMENTS_UPDATE, null, _beastFragments);
        }

        public function get beastRunes():Vector.<BeastRuneData>
        {
            if (_beastRunes == null)
                fetchBagData();

            return _beastRunes;
        }

        public function set beastRunes(value:Vector.<BeastRuneData>):void
        {
            if (value == null)
                return;

            _beastRunes = value;
            this.dispModelEvent(ModelEvent.UPDATE, BagModelKeys.BEAST_RUNES_UPDATE, null, _beastRunes);
        }
		
		public function get treasureMapItems():Vector.<TreasureMapItemData>
		{
			if (_treasureMapItems == null)
				fetchBagData();
			
			return _treasureMapItems;
		}
		
		public function set treasureMapItems(value:Vector.<TreasureMapItemData>):void
		{
			if (value == null)
				return;
			
			_treasureMapItems = value;
			this.dispModelEvent(ModelEvent.UPDATE, BagModelKeys.TREASURE_MAP_ITEMS_UPDATE, null, _treasureMapItems);
		}

        public function getTotalItemNumById(id:uint):int
        {
            var list:Object;

            if (BagUtils.isTaskItem(id))
                list = this.taskItems;
            else if (BagUtils.isEquipmentItem(id))
                list = this.equipmentItems;
            else if (BagUtils.isCardItem(id))
                list = this.cardItems;
            else if (BagUtils.isBeastFragment(id))
                list = this.beastFragments;
            else if (BagUtils.isBeastRune(id))
                list = this.beastRunes;
            else if (BagUtils.isTreasureMapItem(id))
                list = this.treasureMapItems;
            else
                list = this.items;

            var num:int = 0;

            if (list != null)
            {
                var len:int = list.length;

                for (var i:int=0; i<len; ++i)
                {
                    if (list[i].id == id)
                        num += list[i].num;
                }
            }

            return num;
        }

        private function fetchBagData():void
        {
            var cmd:GetBagDataCommand = new GetBagDataCommand();
            cmd.call();
        }
    }
}