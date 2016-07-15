package exam.model
{
    import com.tencent.morefun.naruto.model.BaseModel;
    import com.tencent.morefun.naruto.model.event.ModelEvent;
    
    import def.ModelDef;
    
    import exam.data.ExamInfoData;
    import exam.data.ExamLevelData;
    import exam.def.ExamModelKeys;
    
    public class ExamModel extends BaseModel
    {
        private var _data:ExamInfoData;
        private var _levelData:ExamLevelData;
        private var _totalRaidSecondsLeft:int;

        public function ExamModel()
        {
            super(ModelDef.EXAM);

            _totalRaidSecondsLeft = 0;
        }

        public function finalize():void
        {
        }

        public function get data():ExamInfoData
        {
            return _data;
        }

        public function set data(value:ExamInfoData):void
        {
            if (value == _data)
                return;

            _data = value;
            this.dispModelEvent(ModelEvent.UPDATE, ExamModelKeys.DATA_UPDATE, null, _data);
        }

        public function get levelData():ExamLevelData
        {
            return _levelData;
        }

        public function set levelData(value:ExamLevelData):void
        {
            if (value == _levelData)
                return;

            _levelData = value;
            this.dispModelEvent(ModelEvent.UPDATE, ExamModelKeys.LEVEL_DATA_UPDATE, null, _levelData);
        }

        public function get totalRaidSecondsLeft():int
        {
            return _totalRaidSecondsLeft;
        }

        public function set totalRaidSecondsLeft(value:int):void
        {
            if (value == _totalRaidSecondsLeft)
                return;

            var oldValue:int = _totalRaidSecondsLeft;
            _totalRaidSecondsLeft = value;

            this.dispModelEvent(ModelEvent.UPDATE, ExamModelKeys.TOTAL_RAID_SECONDS_LEFT_UPDATE, oldValue, _totalRaidSecondsLeft);
        }
    }
}