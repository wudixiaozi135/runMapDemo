package cfgData.dataStruct
{
    /**
     * 副本组配置表
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class DungeonGroupInfoCFG{
        public function  DungeonGroupInfoCFG(){}  
        /**ID*/
        public var id:int;
        /**副本群名称*/
        public var name:String="";
        /**章节奖励*/
        public var chapterGifts:Array=new Array();
        /**满战绩通关奖励*/
        public var fullScoreGifts:Array=new Array();
        /**章节解锁等级*/
        public var levelUnlock:uint;

    }
}