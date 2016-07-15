package bag.data
{
    public class CommonItemData extends ItemData
    {
        public var extraDescription:String;     // 附加描述
        public var extraDescriptionLevel:int;   // 附加描述等级限制
        public var tileMax:uint;                // 可堆叠数量（0为不可堆叠）
        public var bindable:Boolean;            // 是否绑定
        public var expensive:Boolean;           // 是否贵重物品（售卖是否有二次提示）
        public var usableTime:Date;             // 何时可以使用物品
        public var expireTime:Date;             // 何时物品过期
        public var expireSeconds:int;           // 过期时间（物品过期时间大于0时，过多少秒过期）
        public var useMax:int;                  // 使用次数限制
        public var useLevel:int;                // 使用等级限制
        public var val1:int;                    // 以下为保留字段
        public var val2:int;
        public var val3:int;
        public var val4:int;
        public var val5:int;
        public var val6:int;

		public function CommonItemData():void
		{
		
		}
    }
}