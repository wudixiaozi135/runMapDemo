package cfgData.dataStruct
{
    /**
     * 奖励物品配置
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class RewardItemTransferCFG{
        public function  RewardItemTransferCFG(){}  
        /**行号*/
        public var id:uint;
        /**奖品池ID*/
        public var rewardId:uint;
        /**掉落物ID*/
        public var itemId:uint;
        /**是否必掉*/
        public var sure:Boolean;
        /**物品数量*/
        public var num:int;
        /**物品名称*/
        public var name:String="";

    }
}