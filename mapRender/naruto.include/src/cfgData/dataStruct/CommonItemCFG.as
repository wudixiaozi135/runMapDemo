package cfgData.dataStruct
{
    /**
     * 
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class CommonItemCFG{
        public function  CommonItemCFG(){}  
        /**物品id*/
        public var id:uint;
        /**物品名称*/
        public var name:String="";
        /**物品描述*/
        public var desc:String="";
        /**颜色*/
        public var color:int;
        /**附加描述*/
        public var extraDesc:String="";
        /**附加描述等级限制*/
        public var extraDescLv:int;
        /**可堆叠最大数量*/
        public var tile:int;
        /**是否绑定*/
        public var bind:int;
        /**出售价格*/
        public var price:int;
        /**是否有卖出提示*/
        public var expensive:int;
        /**使用效果*/
        public var menu:String="";
        /**过期菜单项*/
        public var expireMenu:String="";
        /**开启时间限制*/
        public var usableTime:int;
        /**每日使用次数限制*/
        public var useMax:int;
        /**使用等级限制*/
        public var useLevel:int;
        /**效果1类型*/
        public var val1:int;
        /**效果1参数1*/
        public var val2:int;
        /**效果1参数2*/
        public var val3:int;
        /**效果2类型*/
        public var val4:int;
        /**效果2参数1*/
        public var val5:int;
        /**效果2参数2*/
        public var val6:int;
        /**获得途径*/
        public var achievedWay:String="";

    }
}