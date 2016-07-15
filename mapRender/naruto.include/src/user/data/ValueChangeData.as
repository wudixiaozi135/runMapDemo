package user.data
{
    public class ValueChangeData
    {
        public var oldValue:int;
        public var newValue:int;
        public var reason:int;

        public function ValueChangeData(oldValue:int, newValue:int, reason:int=0)
        {
            this.oldValue = oldValue;
            this.newValue = newValue;
            this.reason = reason;
        }
    }
}