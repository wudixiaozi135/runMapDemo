package cfgData.dataStruct
{
    /**
     * 战袍进阶
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class TabardStepUpCFG{
        public function  TabardStepUpCFG(){}  
        /**成长值*/
        public var id:int;
        /**成长最大值*/
        public var max:int;
        /**阶数*/
        public var step:int;
        /**消耗道具*/
        public var itemId:int;
        /**消耗道具数量*/
        public var itemNum:int;
        /**生命*/
        public var hp:int;
        /**攻击*/
        public var attack:int;
        /**防御*/
        public var defense:int;
        /**忍术*/
        public var ninjaAttack:int;
        /**抗性*/
        public var ninjaDefense:int;
        /**先攻*/
        public var speed:int;
        /**暴击*/
        public var crit_value:int;
        /**暴伤*/
        public var crit_damage_value:int;
        /**连击*/
        public var combo_value:int;
        /**控制*/
        public var control_value:int;
        /**美术资源*/
        public var mme:String="";
        /**需要战袍升级等级*/
        public var needLv:int;

    }
}