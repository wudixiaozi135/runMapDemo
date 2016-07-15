package cfgData.dataStruct
{
    /**
     * 通灵兽符文配置
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class RunesCFG{
        public function  RunesCFG(){}  
        /**符文ID*/
        public var id:int;
        /**名称*/
        public var name:String="";
        /**颜色*/
        public var color:int;
        /**类型*/
        public var type:int;
        /**符文位置*/
        public var pos:int;
        /**可堆叠最大数量*/
        public var tile:int;
        /**出售价格*/
        public var price:int;
        /**生命值加值*/
        public var hp:int;
        /**攻击加值*/
        public var attack:int;
        /**防御加值*/
        public var defense:int;
        /**忍术加值*/
        public var ninjaAttack:int;
        /**抗性加值*/
        public var resist:int;
        /**符文品质*/
        public var quality:int;
        /**符文描述*/
        public var desc:String="";
        /**符文升级经验*/
        public var levelExp:int;
        /**合成提供经验*/
        public var matExp:int;
        /**合成时花费*/
        public var matCost:int;
        /**获得途径*/
        public var achievedWay:int;

    }
}