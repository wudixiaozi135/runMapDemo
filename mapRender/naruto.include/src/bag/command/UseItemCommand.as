package bag.command
{
    import RSModel.command.RSModelCommand;
    
    public class UseItemCommand extends RSModelCommand
    {
        public var id:uint;
        public var num:int;
        public var index:int;

        public function UseItemCommand(id:uint, num:int, index:int=0)
        {
            super();

            this.id = id;
            this.num = num;
            this.index = index;
        }
    }
}