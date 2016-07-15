package bag.data
{
    import flash.geom.Point;

    /**
     * @author woodychen
     * @createTime 2015-5-6 下午3:40:33
     **/
    public class TreasureMapItemData extends ItemData
    {
        public var location:String;         // 场景坐标
        public var itemWeight:int;          // 掉落物品权重
        public var battleWeight:int;        // 触发战斗权重
        public var dropItemId:uint;         // 掉落ID
        public var battleId:uint;           // 触发战斗ID
        public var mapLevel:int;            // 藏宝图等级

        // 后台下发
        public var mapId:uint               // 地图id
        public var position:Point;          // 地图坐标
		public var roleId:int;              //资源ID

        public function TreasureMapItemData()
        {
            super();
        }
    }
}