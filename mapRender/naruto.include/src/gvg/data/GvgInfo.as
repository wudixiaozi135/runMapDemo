package gvg.data
{
	public class GvgInfo
	{
		/**
		 * 忍界大战所处的状态
		 * see ProtoGvGBattleStatus
		 */
		public var status:int;
		
		/**
		 * 忍界大战所处的轮次
		 * see ProtoGvGBattleRound
		 */
		public var round:int;
		
		/**
		 * 3个可以分配的礼包，元素是ItemData
		 */
		public var gifts:Array;
		
		/**
		 * 礼包分配记录
		 * see GiftDispatchRecordData
		 */
		public var dispatchRecordArr:Array;
		
		/**
		 * 上次预选赛结束时间,是从1970年算起的毫秒数
		 */
		public var preFinalEndTime:Number;
		
		/**
		 * 预选赛的队伍，排好序的
		 * see GvgGuildData
		 */
		public var preFinalTeams:Array;
		
		/**
		 * 上次决赛结束时间,是从1970年算起的毫秒数
		 */
		public var finalEndTime:Number;
		
		/**
		 * 决赛战绩
		 */
		public var finalResult:GvgFinalResultData;
		
		/**
		 * 是否已经报名，仅当status为可报名状态时有效
		 */
		public var hasSignedUp:Boolean;
		
		/**
		 * 能否进入战场，仅当status为战斗准备、战斗进行中和战斗结束状态时有效
		 */
		public var canEnter:Boolean;
		
		/**
		 * 还有多久要主动刷新一下状态，以毫秒为单位
		 */
		public var refreshTime:Number;
		
		public function GvgInfo()
		{
		}
	}
}