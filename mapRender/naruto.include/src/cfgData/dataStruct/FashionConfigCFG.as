package cfgData.dataStruct
{
    /**
     * 时装配置
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class FashionConfigCFG{
        public function  FashionConfigCFG(){}  
        /**时装ID*/
        public var id:uint;
        /**时装名称*/
        public var name:String="";
        /**职业限定*/
        public var career:int;
        /**合成消耗道具ID*/
        public var composeItemId:int;
        /**合成消耗道具数量*/
        public var composeItemNum:int;
        /**是否可强化*/
        public var canStrong:int;
        /**强化消耗道具ID*/
        public var strongItemId:int;
        /**美术资源ID*/
        public var swfname:Array=new Array();
        /**增加属性一,二*/
        public var infoTypes:Array=new Array();
        /**n级消耗道具数量*/
        public var numArr:Array=new Array();
        /**n级属性一数值*/
        public var infoArr:Array=new Array();
        /**n级属性二数值*/
        public var otherInfoArr:Array=new Array();
        /**n级有效期增量*/
        public var cdArr:Array=new Array();

    }
}