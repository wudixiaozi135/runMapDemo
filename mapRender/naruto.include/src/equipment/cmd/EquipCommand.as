package equipment.cmd
{
    import RSModel.command.RSModelCommand;

    public class EquipCommand extends RSModelCommand
    {
        public var ninjaSequenceId:uint;
        public var equipmentSequenceId:String;

        public function EquipCommand(ninjaSequenceId:uint, equipmentSequenceId:String)
        {
            super();

            this.ninjaSequenceId = ninjaSequenceId;
            this.equipmentSequenceId = equipmentSequenceId;
        }
    }
}