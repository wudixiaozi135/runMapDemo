package bag.command
{
    import RSModel.command.RSModelCommand;
    
    import bag.data.ItemData;

    public class GetConfDataCommand extends RSModelCommand
    {
        private var _returnNew:Boolean;
        private var _id:uint;
        private var _data:ItemData;
        private var _idList:Vector.<uint>;
        private var _dataList:Vector.<ItemData>;

        public function GetConfDataCommand(returnNew:Boolean=false)
        {
            super();

            this.returnNew = returnNew;
        }

        public function get returnNew():Boolean
        {
            return _returnNew;
        }

        public function set returnNew(value:Boolean):void
        {
            _returnNew = value;
        }

        public function get id():uint
        {
            return _id;
        }

        public function set id(value:uint):void
        {
            _id = value;
        }

        public function get data():ItemData
        {
            return _data;
        }

        public function set data(value:ItemData):void
        {
            _data = value;
        }

        public function get idList():Vector.<uint>
        {
            return _idList;
        }

        public function set idList(value:Vector.<uint>):void
        {
            _idList = value;
        }

        public function get dataList():Vector.<ItemData>
        {
            return _dataList;
        }

        public function set dataList(value:Vector.<ItemData>):void
        {
            _dataList = value;
        }
    }
}