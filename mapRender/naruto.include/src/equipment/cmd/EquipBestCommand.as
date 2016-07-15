package equipment.cmd
{
    import RSModel.command.RSModelCommand;

    public class EquipBestCommand extends RSModelCommand
    {
        public var ninjaSequenceId:uint;

        public function EquipBestCommand(ninjaSequenceId:uint)
        {
            super();

            this.ninjaSequenceId = ninjaSequenceId;
        }
    }
}