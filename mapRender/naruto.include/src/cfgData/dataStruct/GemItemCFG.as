package cfgData.dataStruct
{
    /**
     * 
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class GemItemCFG{
        public function  GemItemCFG(){}  
        /**宝石ID*/
        public var id:uint;
        /**宝石名称*/
        public var name:String="";
        /**宝石描述*/
        public var desc:String="";
        /**可堆叠最大数量*/
        public var tile:int;
        /**出售价格*/
        public var price:int;
        /**颜色*/
        public var color:int;
        /**使用效果*/
        public var menu:String="";
        /**宝石品质*/
        public var quality:int;
        /**宝石升级经验*/
        public var levelExp:int;
        /**合成提供经验*/
        public var matExp:int;
        /**合成时花费*/
        public var matCost:int;
        /**生命值加值*/
        public var val1:int;
        /**攻击加值*/
        public var val2:int;
        /**防御加值*/
        public var val3:int;
        /**忍术加值*/
        public var val4:int;
        /**抗性加值*/
        public var val5:int;
        /**获得途径*/
        public var achievedWay:String="";

    }
}