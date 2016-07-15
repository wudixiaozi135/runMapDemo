package cfgData.dataStruct
{
    /**
     * 时装碎片配置
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class FashionItemCFG{
        public function  FashionItemCFG(){}  
        /**物品id*/
        public var id:uint;
        /**物品名称*/
        public var name:String="";
        /**职业限定*/
        public var career:int;
        /**颜色*/
        public var color:int;
        /**页签类型*/
        public var tabType:int;
        /**物品类型*/
        public var type:int;
        /**物品描述*/
        public var desc:String="";
        /**可堆叠最大数量*/
        public var maxNum:int;
        /**是否绑定*/
        public var bind:int;
        /**出售价格*/
        public var price:int;
        /**卖出提示*/
        public var sell:int;
        /**获得途径*/
        public var gainDesc:String="";

    }
}