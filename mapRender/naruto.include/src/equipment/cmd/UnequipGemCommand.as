package equipment.cmd
{
    import RSModel.command.RSModelCommand;

    public class UnequipGemCommand extends RSModelCommand
    {
        public var equipmentSequenceId:String;
        public var equippingIndex:int;

        public function UnequipGemCommand(equipmentSequenceId:String, equippingIndex:int)
        {
            super();

            this.equipmentSequenceId = equipmentSequenceId;
            this.equippingIndex = equippingIndex;
        }
    }
}