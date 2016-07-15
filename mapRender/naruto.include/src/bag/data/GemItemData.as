package bag.data
{
    public class GemItemData extends ItemData
    {
        // 配置表
        public var tileMax:uint;                // 可堆叠数量（0为不可堆叠）
        public var quality:int;                 // 品质
        public var levelExp:int;                // 升级经验
        public var matExp:int;                  // 合成经验
        public var matCost:int;                 // 合成花费
        public var val1:int;                    // +生命
        public var val2:int;                    // +攻击
        public var val3:int;                    // +防御
        public var val4:int;                    // +忍术
        public var val5:int;                    // +抗性

        // 后台下发
        public var exp:int;                     // 当前经验
		public var isUltimate:Boolean			// 是否最高等级
		
		public function GemItemData():void
		{
			
		}
    }
}