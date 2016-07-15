package cfgData.dataStruct
{
    /**
     * 
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class CardItemCFG{
        public function  CardItemCFG(){}  
        /**物品id*/
        public var id:uint;
        /**物品名称*/
        public var name:String="";
        /**物品描述*/
        public var desc:String="";
        /**出售价格*/
        public var price:int;
        /**颜色*/
        public var color:int;
        /**分解后获得物品*/
        public var splitItemId:uint;
        /**分解后获得物品数量*/
        public var splitItemNum:int;
        /**使用效果*/
        public var menu:String="";
        /**可堆叠最大数量*/
        public var tile:int;
        /**是否绑定*/
        public var bind:int;
        /**是否有卖出提示*/
        public var expensive:int;
        /**称谓*/
        public var title:String="";
        /**是否碎片*/
        public var frag:int;
        /**能否招募*/
        public var ninjable:int;
        /**领导力数量*/
        public var leader:int;
        /**稀有度*/
        public var rare:int;
        /**使用后获得忍者*/
        public var ninja:uint;
        /**获得忍者等级*/
        public var ninjaLev:int;
        /**是否吞噬专用*/
        public var mat:int;
        /**吞噬消耗铜币*/
        public var matMoney:int;
        /**吞噬获得经验*/
        public var matExp:int;
        /**招募忍者所需碎片数*/
        public var cardFragNum:int;
        /**合成后卡牌ID*/
        public var card:uint;
        /**忍者属性*/
        public var ninjaType:int;
        /**职业属性*/
        public var ninjaClass:int;
        /**拥有时提示*/
        public var hasNinjaMsg:String="";
        /**没有时提示*/
        public var noNinjaMsg:String="";
        /**获得途径*/
        public var achievedWay:String="";
        /**卡牌碎片积分*/
        public var cardRecycleExp:int;

    }
}