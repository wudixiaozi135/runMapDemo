package equipment.cmd
{
    import RSModel.command.RSModelCommand;

    public class UnequipCommand extends RSModelCommand
    {
        public var ninjaSequenceId:uint;
        public var equipmentSequenceId:String;

        public function UnequipCommand(ninjaSequenceId:uint, equipmentSequenceId:String)
        {
            super();

            this.ninjaSequenceId = ninjaSequenceId;
            this.equipmentSequenceId = equipmentSequenceId;
        }
    }
}