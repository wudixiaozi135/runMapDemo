package cfgData.dataStruct
{
    /**
     * 通灵兽配置
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class SummonMonsterCFG{
        public function  SummonMonsterCFG(){}  
        /**通灵兽ID*/
        public var id:int;
        /**名称*/
        public var name:String="";
        /**类型*/
        public var type:int;
        /**美术编号*/
        public var artisticId:int;
        /**获得需要碎片数量*/
        public var aquireCardNum:int;
        /**获得需要碎片ID*/
        public var aquireCardId:int;
        /**是否是碎片*/
        public var isCard:int;
        /**基础属性生命*/
        public var baseLife:int;
        /**基础属性攻击*/
        public var baseAttack:int;
        /**基础属性防御*/
        public var baseDefense:int;
        /**基础属性忍术*/
        public var baseNinjaAttack:int;
        /**基础属性抗性*/
        public var baseResist:int;
        /**技能名*/
        public var skillName:String="";
        /**技能描述*/
        public var desc:String="";
        /**主角技能*/
        public var majorSkill:Array=new Array();
        /**捕获等级限制*/
        public var openLevel:int;
        /**追打状态*/
        public var keyWord1:String="";
        /**造成状态*/
        public var keyWord2:String="";
        /**获得途径*/
        public var achievedWay:String="";
        /**查看奖励*/
        public var rewards:Array=new Array();

    }
}