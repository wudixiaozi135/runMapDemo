package ninja.model.data
{
	/**
	 * 忍者升星信息
	 * @author woodychen
	 * @createTime 2014-7-10 上午10:54:05
	 **/
	public class NinjaStarUpgradeInfo
	{
		/**
		 * 忍者碎片ID
		 */
		public var pieceId:uint;
		
		/**
		 * 忍者碎片数量
		 */
		public var pieceNum:uint;
		
		/**
		 * 下次升星需要碎片数
		 */
		public var needPieceNum:uint;
		
		/**
		 * 下次升星需要铜币
		 */
		public var needMoney:uint;
		
		/**
		 * 起始星级
		 */
		public var beginStarLevel:uint;
		
		/**
		 * 升星各等级数据,这里无论beginLevel是多少，都会有5个数据，分别代表1~5级
		 */
		public var starLevelDetailInfos:Vector.<NinjaStarLevelDetailInfo>;
		
		public function NinjaStarUpgradeInfo()
		{
		}
		
	}
}