package bag.command
{
    import RSModel.command.RSModelCommand;
    
    import bag.data.ItemData;
    
    public class SplitCardItemCommand extends RSModelCommand
    {
        public var data:ItemData;
        public var num:int;

        public function SplitCardItemCommand(data:ItemData, num:int)
        {
            super();

            this.data = data;
            this.num = num;
        }
    }
}