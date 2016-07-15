package equipment.cmd
{
    public class SelectEquipmentNinjaCommand extends BaseEquipmentCommand
    {
        public var index:int;

        public function SelectEquipmentNinjaCommand(index:int)
        {
            super();

            this.index = index;
        }
    }
}