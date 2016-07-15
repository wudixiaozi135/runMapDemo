package cfgData.dataStruct
{
    /**
     * 定时活动
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class ActivityHubCFG{
        public function  ActivityHubCFG(){}  
        /**唯一ID*/
        public var id:uint;
        /**活动ID*/
        public var aid:uint;
        /**活动名字*/
        public var name:String="";
        /**条件描述*/
        public var conditionDesc:String="";
        /**次数提示*/
        public var numText:String="";
        /**活动规则*/
        public var rule:String="";
        /**奖励描述*/
        public var rewardDesc:String="";
        /**奖励物品*/
        public var reward:String="";
        /**参与点击指令*/
        public var href:String="";
        /**预览图ID*/
        public var previewImage:uint;
        /**背景图ID*/
        public var bgImage:uint;

    }
}