package equipment.cmd
{
    import bag.data.EquipmentItemData;
    
    public class UpdateEquipmentCommand extends BaseEquipmentCommand
    {
        public var data:EquipmentItemData;

        public function UpdateEquipmentCommand(data:EquipmentItemData)
        {
            super();

            this.data = data;
        }
    }
}