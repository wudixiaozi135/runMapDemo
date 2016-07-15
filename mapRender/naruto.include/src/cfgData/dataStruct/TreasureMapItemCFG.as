package cfgData.dataStruct
{
    /**
     * 
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class TreasureMapItemCFG{
        public function  TreasureMapItemCFG(){}  
        /**物品id*/
        public var id:uint;
        /**物品名称*/
        public var name:String="";
        /**物品描述*/
        public var desc:String="";
        /**颜色*/
        public var color:int;
        /**场景坐标*/
        public var location:String="";
        /**掉落物品权重*/
        public var itemWeight:int;
        /**触发战斗权重*/
        public var battleWeight:int;
        /**掉落ID*/
        public var dropItemId:uint;
        /**触发战斗ID*/
        public var battleId:uint;
        /**藏宝图等级*/
        public var mapLevel:int;
        /**来源*/
        public var achievedWay:String="";

    }
}