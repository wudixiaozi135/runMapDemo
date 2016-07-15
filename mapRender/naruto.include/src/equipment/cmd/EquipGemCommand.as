package equipment.cmd
{
    import RSModel.command.RSModelCommand;
    
    import bag.data.GemItemData;

    public class EquipGemCommand extends RSModelCommand
    {
        public var equipmentSequenceId:String;
        public var data:GemItemData;
        public var equippingIndex:int;

        public function EquipGemCommand(equipmentSequenceId:String, data:GemItemData, equippingIndex:int=-1)
        {
            super();

            this.equipmentSequenceId = equipmentSequenceId;
            this.data = data;
            this.equippingIndex = equippingIndex;
        }
    }
}