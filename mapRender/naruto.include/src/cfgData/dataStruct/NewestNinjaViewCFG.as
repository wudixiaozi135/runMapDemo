package cfgData.dataStruct
{
    /**
     * 最新忍者一览
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class NewestNinjaViewCFG{
        public function  NewestNinjaViewCFG(){}  
        /**编号ID*/
        public var id:int;
        /**忍者ID*/
        public var ninja:int;
        /**忍者特色*/
        public var info1:String="";
        /**搭配推荐*/
        public var info2:String="";
        /**技能ID对应视频*/
        public var flvPath:String="";
        /**是否显示*/
        public var isShow:Boolean;
        /**排序*/
        public var sortId:int;
        /**跳转URL*/
        public var url:String="";

    }
}