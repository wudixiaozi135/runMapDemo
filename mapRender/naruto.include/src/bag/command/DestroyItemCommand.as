package bag.command
{
    import RSModel.command.RSModelCommand;
    
    import bag.data.ItemData;
    
    public class DestroyItemCommand extends RSModelCommand
    {
        public var data:ItemData;

        public function DestroyItemCommand(data:ItemData)
        {
            super();

            this.data = data;
        }
    }
}