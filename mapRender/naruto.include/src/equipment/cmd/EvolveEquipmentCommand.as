package equipment.cmd
{
    import RSModel.command.RSModelCommand;

    public class EvolveEquipmentCommand extends RSModelCommand
    {
        public var equipmentSequenceId:String;

        public function EvolveEquipmentCommand(equipmentSequenceId:String)
        {
            super();

            this.equipmentSequenceId = equipmentSequenceId;
        }
    }
}