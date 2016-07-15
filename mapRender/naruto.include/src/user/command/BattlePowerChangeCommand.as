package user.command
{
    public class BattlePowerChangeCommand extends BaseUserCommand
    {
        public var oldValue:int;
        public var newValue:int;
        public var x:int;
        public var y:int;

        public function BattlePowerChangeCommand(oldValue:int, newValue:int, x:int=0, y:int=0)
        {
            super();

            this.oldValue = oldValue;
            this.newValue = newValue;
            this.x = x;
            this.y = y;
        }
    }
}