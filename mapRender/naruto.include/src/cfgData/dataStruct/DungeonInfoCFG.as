package cfgData.dataStruct
{
    /**
     * 副本配置表
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class DungeonInfoCFG{
        public function  DungeonInfoCFG(){}  
        /**副本ID*/
        public var id:int;
        /**名称*/
        public var name:String="";
        /**副本子场景ID*/
        public var subSceneId:int;
        /**副本类型*/
        public var type:int;
        /**所属副本群ID*/
        public var groupId:int;
        /**副本群序列*/
        public var groupSeqNum:int;
        /**副本模式*/
        public var mode:int;
        /**副本通关模式*/
        public var clearanceType:int;
        /**副本通关事件参数*/
        public var clearanceParam:String="";
        /**通关条件描述*/
        public var clearanceDescribe:String="";
        /**掉落物品*/
        public var gifts:Array=new Array();
        /**特殊副本普通掉落*/
        public var gifts2:Array=new Array();
        /**特殊副本困难掉落*/
        public var gifts3:Array=new Array();
        /**副本卡片小图*/
        public var dungeonImg:int;
        /**弹选择界面条件*/
        public var openDungeonBoxParam:String="";
        /**扣除体力*/
        public var costHp:int;
        /**副本扫荡耗费时间*/
        public var wipeOutNeedTime:int;
        /**精英副本推荐等级上限*/
        public var upperLevel:int;
        /**精英副本产出品质上限*/
        public var bestNinjaRarity:int;
        /**精英副本显示立绘*/
        public var coverNinja:uint;
        /**精英副本推荐战斗力*/
        public var recommendCombat:uint;
        /**精英副本首次通关掉落*/
        public var passBonus:uint;
        /**精英副本首次通关掉落展示*/
        public var passBonusShow:uint;
        /**精英副本首次通关掉落个数*/
        public var passBonusNum:uint;

    }
}