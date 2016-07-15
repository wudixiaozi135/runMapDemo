package cfgData.dataStruct
{
    /**
     * 竞技场的称号
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class NinjaInfoCFG{
        public function  NinjaInfoCFG(){}  
        /**忍者ID*/
        public var id:int;
        /**名称*/
        public var name:String="";
        /**类型*/
        public var type:int;
        /**称谓*/
        public var title:String="";
        /**美术编号*/
        public var artisticId:uint;
        /**awakenSkillNum*/
        public var awakenSkillNum:uint;
        /**经验类型*/
        public var levelType:int;
        /**宽*/
        public var occupyWidth:uint;
        /**高*/
        public var occupyHeight:uint;
        /**基础生命*/
        public var baseLife:uint;
        /**基础生命成长*/
        public var growthLife:uint;
        /**基础体术攻击*/
        public var baseBodyAttack:uint;
        /**基础体术攻击成长*/
        public var growthBodyAttack:uint;
        /**基础体术防御*/
        public var baseBodyDefense:uint;
        /**基础体术防御成长*/
        public var growthBodyDefense:uint;
        /**基础忍术攻击*/
        public var baseNinjaAttack:uint;
        /**基础忍术攻击成长*/
        public var growthNinjaAttack:uint;
        /**基础忍术防御*/
        public var baseNinjaDefense:uint;
        /**基础忍术防御成长*/
        public var growthNinjaDefense:uint;
        /**速度*/
        public var baseSpeed:uint;
        /**暴击*/
        public var baseCrit:uint;
        /**物攻穿透*/
        public var baseBodyStrike:uint;
        /**忍术穿透*/
        public var baseNinjaStrike:uint;
        /**0*/
        public var baseChakraRecover:uint;
        /**连击率*/
        public var continuousStrikeRate:uint;
        /**火抗*/
        public var fireResist:int;
        /**风抗*/
        public var windResist:int;
        /**雷抗*/
        public var thunderResist:int;
        /**土抗*/
        public var soilResist:int;
        /**水抗*/
        public var waterResist:int;
        /**地图技能*/
        public var mapSkill:int;
        /**初始星级*/
        public var starLevel:int;
        /**状态阶段*/
        public var statePhase:int;
        /**集结需要忍者ID与等级*/
        public var AssembleCondition:String="";
        /**所属*/
        public var comeFrom:String="";
        /**属性显示*/
        public var showPropertys:Array=new Array();
        /**属性*/
        public var property:int;
        /**职业*/
        public var carreer:int;
        /**装备个数*/
        public var equipNum:int;
        /**特征描述*/
        public var description:String="";
        /**属性特性*/
        public var attributeDescription:String="";
        /**获得需要卡牌ID*/
        public var aquireCardId:int;
        /**稀有度*/
        public var rareness:int;
        /**获得途径*/
        public var achievedWay:int;
        /**性别1男2女*/
        public var sex:int;
        /**升星碎片ID*/
        public var risingStarTatter:int;
        /**升星线类型*/
        public var series:int;
        /**忍者系列*/
        public var ninjaSeries:int;

    }
}