package equipment.model
{
    import com.tencent.morefun.naruto.model.BaseModel;
    import com.tencent.morefun.naruto.model.event.ModelEvent;
    
    import bag.data.EquipmentItemData;
    
    import def.ModelDef;
    
    import equipment.data.EquipmentRowData;
    import equipment.def.EquipmentModelKeys;
    
    public class EquipmentModel extends BaseModel
    {
        private var _equipmentList:Vector.<EquipmentRowData>;
        private var _autoEquipBest:Boolean;
        private var _viewId:int;
        private var _selectedEquipment:EquipmentItemData;

        public function EquipmentModel()
        {
            super(ModelDef.EQUIPMENT);
        }

        public function destroy():void
        {
        }

        public function get equipmentList():Vector.<EquipmentRowData>
        {
            return _equipmentList;
        }

        public function set equipmentList(value:Vector.<EquipmentRowData>):void
        {
            _equipmentList = value;

            this.dispModelEvent(ModelEvent.UPDATE, EquipmentModelKeys.EQUIPMENT_LIST_UPDATE, null, _equipmentList);
        }

        public function get autoEquipBest():Boolean
        {
            return _autoEquipBest;
        }

        public function set autoEquipBest(value:Boolean):void
        {
            if (_autoEquipBest == value)
                return;

            var oldValue:Boolean = _autoEquipBest;
            _autoEquipBest = value;

            this.dispModelEvent(ModelEvent.UPDATE, EquipmentModelKeys.AUTO_EQUIP_BEST_CHANGE, oldValue, value);
        }

        public function updateEquipment(data:EquipmentItemData):void
        {
            if (data == null)
                return;

            var oldValue:EquipmentItemData = null;
            var newValue:EquipmentItemData = data;

            if (this.equipmentList != null)
            {
                var ninjaList:Vector.<EquipmentRowData> = this.equipmentList;
                var ninjaLen:int = ninjaList.length;
                var num:int = 0;
                var equipmentList:Vector.<EquipmentItemData>;
                var equipmentLen:int;
                var equipmentData:EquipmentItemData;

                for (var i:int=0; i<ninjaLen; ++i)
                {
                    if (ninjaList[i].equipmentItems != null)
                    {
                        equipmentList = ninjaList[i].equipmentItems;
                        equipmentLen = equipmentList.length;

                        for (var j:int=0; j<equipmentLen; ++j)
                        {
                            equipmentData = equipmentList[j] as EquipmentItemData;

                            if (equipmentData != null && equipmentData.sequenceId == data.sequenceId)
                            {
                                oldValue = equipmentList[j];
                                equipmentList[j] = data;
                                break;
                            }
                        }

                        if (newValue != null)
                            break;
                    }
                }
            }

            this.dispModelEvent(ModelEvent.UPDATE, EquipmentModelKeys.UPDATE_EQUIPMENT, oldValue, newValue);
        }

        public function get viewId():int
        {
            return _viewId;
        }

        public function set viewId(value:int):void
        {
            _viewId = value;
        }

        public function get selectedEquipment():EquipmentItemData
        {
            return _selectedEquipment;
        }

        public function set selectedEquipment(value:EquipmentItemData):void
        {
            _selectedEquipment = value;
        }
    }
}