package cfgData.dataStruct
{
    /**
     * 战斗NPC
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class BattleNpcCFG{
        public function  BattleNpcCFG(){}  
        /**id*/
        public var id:uint;
        /**名称*/
        public var name:String="";
        /**称谓*/
        public var title:String="";
        /**类型*/
        public var battleNpcType:int;
        /**美术编号*/
        public var roleId:int;
        /**等级*/
        public var level:int;
        /**死亡1次是否消失*/
        public var deadOneTime:int;
        /**随机移动-概率*/
        public var moveRate:int;
        /**视野*/
        public var moveRange:int;
        /**是否主动攻击玩家*/
        public var initiativeAttack:int;
        /**视野*/
        public var sightRange:int;
        /**攻击距离*/
        public var attackRange:int;
        /**追击速度*/
        public var attackSpeed:int;
        /**移动速度*/
        public var speed:int;
        /**战斗前确认*/
        public var confirmbox:int;
        /**对话类型*/
        public var dialogueType:int;
        /**周期*/
        public var dialogueRate:int;
        /**概率*/
        public var dialogPossibility:int;
        /**对话1*/
        public var dialogText1:String="";
        /**对话2*/
        public var dialogText2:String="";
        /**对话3*/
        public var dialogText3:String="";
        /**对话4*/
        public var dialogText4:String="";
        /**对话5*/
        public var dialogText5:String="";
        /**战前确认提示*/
        public var prewarConfirmation:String="";
        /**默认是否可见*/
        public var defaultShow:int;
        /**带有任务可接状态时可见*/
        public var receiveAbleTaskShow:String="";
        /**带有任务可接状态时不可见*/
        public var receiveAbleTaskHide:String="";
        /**带有任务时可见*/
        public var doingTaskShow:String="";
        /**带有任务时不可见*/
        public var doingTaskHide:String="";
        /**完成任务后可见*/
        public var doneTaskShow:String="";
        /**完成任务后不可见*/
        public var doneTaskHide:String="";

    }
}