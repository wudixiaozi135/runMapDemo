package bag.data
{
    public class CardItemData extends ItemData
    {
        // 服务器下发
        public var combat:uint;                 // 卡牌战斗力
        public var state:int;                   // 招募状态，定义在 ProtoBagCardRecruitStatus

        // 配置表
        public var tileMax:uint;                // 可堆叠数量（0为不可堆叠）
        public var bindable:Boolean;            // 是否绑定
        public var expensive:Boolean;           // 是否贵重物品（售卖是否有二次提示）
        public var title:String                 // 称谓
        public var isFragment:Boolean;          // 是否碎片
        public var isNinjable:Boolean;          // 能否招募（使用后变成忍者）
        public var leadership:int               // 领导力
        public var rare:int                     // 稀有度
        public var ninjaId:uint                 // 使用后获得忍者
        public var ninjaLevel:int               // 获得忍者等级
        public var isMaterial:Boolean           // 是否吞噬专用
        public var matMoney:int                 // 吞噬消耗铜币
        public var materialExp:int              // 吞噬获得经验
        public var cardFragmentNum:int          // 合成需要碎片数量
        public var cardId:uint                  // 合成后卡牌ID
        public var ninjaType:int                // 忍者属性
        public var ninjaClass:int               // 职业属性
        public var hasNinjaMsg:String           // 拥有忍者的提示
        public var noNinjaMsg:String            // 没有忍者的提示
        public var splitItemId:uint             // 分解物品id
        public var splitItemNum:int             // 分解物品数量
		public var cardRecycleExp:int;			//兑换经验
		
		public function CardItemData():void
		{
			
		}
    }
}