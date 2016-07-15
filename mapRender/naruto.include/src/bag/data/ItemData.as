package bag.data
{
    import bag.utils.BagUtils;

    public class ItemData                       // 物品基类
    {
        public var id:uint;                     // 物品ID
        public var resId:uint;                  // 美术资源ID
        public var type:int                     // 物品类别
        public var name:String;                 // 物品名
        public var description:String;          // 物品描述
        public var index:int;                   // 物品在背包中的序号
        public var num:int;                     // 物品数量
        public var price:uint;                  // 出售价格
        public var color:uint;                  // 颜色值
        public var normalMenu:Vector.<int>;     // 菜单选项
        public var expiredMenu:Vector.<int>;    // 物品过期菜单选项
        public var achievedWay:String;          // 获取途径

		public function ItemData():void
		{
		}
		
        public function get tab():int
        {
            return BagUtils.calcItemTab(this.id);
        }
    }
}