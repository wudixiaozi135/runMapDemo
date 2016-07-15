package equipment.cmd
{
    import RSModel.command.RSModelCommand;

    public class AutoUpgradeEquipmentCommand extends RSModelCommand
    {
        public var equipmentSequenceId:String;

        public function AutoUpgradeEquipmentCommand(equipmentSequenceId:String)
        {
            super();

            this.equipmentSequenceId = equipmentSequenceId;
        }
    }
}