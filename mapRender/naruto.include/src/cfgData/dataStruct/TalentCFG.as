package cfgData.dataStruct
{
    /**
     * 天赋配置
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class TalentCFG{
        public function  TalentCFG(){}  
        /**忍者id*/
        public var id:uint;
        /**主角遁系*/
        public var belong:String="";
        /**美术编号*/
        public var skills:Array=new Array();
        /**图标编号*/
        public var iconId:int;
        /**查克拉消耗*/
        public var mp:int;
        /**冷却回合*/
        public var cd:int;
        /**忍术级别*/
        public var ninjutsuLevel:int;
        /**类型*/
        public var type:int;
        /**类别1*/
        public var type1:Array=new Array();
        /**忍术属性*/
        public var ninJutsuTypeList:Array=new Array();
        /**进入战斗技能冷却CD*/
        public var enterCd:int;
        /**是否瞬发*/
        public var isImmediately:Boolean;
        /**造成额外状态*/
        public var exStates:Array=new Array();
        /**追击条件*/
        public var beHitState1:int;
        /**触发条件参数*/
        public var beHitState1Param:int;
        /**文化描述*/
        public var culturalDesc:String="";
        /**是否在UI显示*/
        public var showIcon:Boolean;
        /**描述*/
        public var desc:String="";

    }
}