package cfgData.dataStruct
{
    /**
     * 主角晋级表
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class CrewNinjaUpgradeCFG{
        public function  CrewNinjaUpgradeCFG(){}  
        /**战绩点编号*/
        public var id:int;
        /**下级编号*/
        public var nextID:int;
        /**战绩点名称*/
        public var name:String="";
        /**消耗战绩*/
        public var costCombatGains:int;
        /**消耗铜币*/
        public var costGold:int;
        /**生命累加值*/
        public var acc0:int;
        /**攻击累加值*/
        public var acc1:int;
        /**防御累加值*/
        public var acc2:int;
        /**忍术累加值*/
        public var acc3:int;
        /**抗性累加值*/
        public var acc4:int;
        /**本级变动属性*/
        public var accIndex:int;
        /**全属性加成*/
        public var accAll:int;
        /**对应战斗ID*/
        public var combatID:int;

    }
}