package cfgData.dataStruct
{
    /**
     * 忍者等级
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class NinjaBattleInfoCFG{
        public function  NinjaBattleInfoCFG(){}  
        /**忍者ID*/
        public var id:int;
        /**名称*/
        public var name:String="";
        /**闪避技能ID*/
        public var miss:int;
        /**类型*/
        public var type:int;
        /**是否隐藏血条*/
        public var hideHpBar:Boolean;
        /**血条尺寸*/
        public var hpSize:int;
        /**血条类型*/
        public var hpType:int;
        /**召唤登场类型*/
        public var callupType:int;
        /**绑定UI逻辑*/
        public var noticeUI:Boolean;
        /**召唤退场类型*/
        public var callupExeuntType:int;
        /**美术编号*/
        public var refId:int;
        /**获得途径*/
        public var achievedWay:uint;

    }
}