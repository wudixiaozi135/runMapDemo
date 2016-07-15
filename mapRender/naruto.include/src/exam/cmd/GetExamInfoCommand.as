package exam.cmd
{
	import bag.data.ItemData;
    import exam.data.ExamInfoData;
    import exam.data.ExamLevelData;

    public class GetExamInfoCommand extends BaseExamCommand
    {
        public var updateView:Boolean;
        public var data:ExamInfoData;
        public var levelData:ExamLevelData;
		public var awards:Vector.<ItemData>;

        public function GetExamInfoCommand(updateView:Boolean=false)
        {
            super();

            this.updateView = updateView;
        }
    }
}