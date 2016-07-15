package bag.data
{
    public class BeastFragmentData extends ItemData
    {
        public var beastId:uint;                // 通灵兽ID
        public var beastFragmentNum:int;        // 召唤通灵兽所需碎片数量
        public var baseProps:Vector.<int>;      // 基础属性加成
        public var scoreNum:int;                // 转换的积分数量

        public function BeastFragmentData()
        {
            super();
        }
    }
}