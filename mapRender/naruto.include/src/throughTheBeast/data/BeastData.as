package throughTheBeast.data
{
    import bag.data.BeastRuneData;

    public class BeastData
    {
        public var id:uint;                                 // 通灵兽id
        public var type:int;                                // 类型
        public var name:String;                             // 名称
        public var description:String;                      // 描述
        public var baseProps:Vector.<int>;                  // 基础属性加成
        public var runes:Vector.<BeastRuneData>             // 符文加成
		public var achievedWay:String;                      // 获得途径

        public function BeastData()
        {
        }
    }
}