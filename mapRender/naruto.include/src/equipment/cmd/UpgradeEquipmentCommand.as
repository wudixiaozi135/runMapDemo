package equipment.cmd
{
    import RSModel.command.RSModelCommand;

    public class UpgradeEquipmentCommand extends RSModelCommand
    {
        public var equipmentSequenceId:String;

        public function UpgradeEquipmentCommand(equipmentSequenceId:String)
        {
            super();

            this.equipmentSequenceId = equipmentSequenceId;
        }
    }
}