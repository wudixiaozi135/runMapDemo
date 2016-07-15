package dungeon.model
{
	import com.tencent.morefun.naruto.model.BaseModel;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	
	import def.ModelDef;
	
	public class TeamDungeonModel extends BaseModel
	{
		public static const KEY_TIME:String = "key_time";
		public static const KEY_INFOS:String = "key_infos";
		public static const KEY_REMAINS:String = "key_remains";
		public static const KEY_REMAINS_BY_FRAND:String = "key_remains_by_frand";
		public static const KEY_MATCH_TIME:String = "key_match_time";
//		/**
//		 * 是否正在匹配中
//		 */
//		public var isMatching:Boolean;
//		/**
//		 * 是否匹配成功，或者正在组队副本中
//		 */
//		public var isMatched:Boolean;
//		private var _beginTime:uint;
//		private var _endTime:uint;
		private var _remains:int;
		private var _remainsByFrand:int;
		private var _matchTime:uint;
		
		/**
		 * 组队副本列表
		 */
		public var infos:Array;
		
		public function TeamDungeonModel()
		{
			super(ModelDef.DUNGEON_TEAM);
		}
		
		/**
		 * 正在匹配的消耗时间
		 */
		public function get matchTime():uint
		{
			return _matchTime;
		}

		public function set matchTime(value:uint):void
		{
			_matchTime = value;
			
			dispModelEvent(ModelEvent.UPDATE, KEY_MATCH_TIME);
		}

//		/**
//		 * 下一组队副本的结束时间，注意相对currTime时间算的
//		 */
//		public function get endTime():uint
//		{
//			return _endTime;
//		}
//
//		/**
//		 * 下一组队副本的开启时间，注意相对currTime时间算的
//		 */
//		public function get beginTime():uint
//		{
//			return _beginTime;
//		}

		/**
		 * 剩余次数
		 */
		public function get remains():int
		{
			return _remains;
		}

		/**
		 * @private
		 */
		public function set remains(value:int):void
		{
			_remains = value;
			dispModelEvent(ModelEvent.UPDATE, KEY_REMAINS);
		}
		
		/**
		 * 剩余次数（好友）
		 */
		public function get remainsByFrand():int
		{
			return _remainsByFrand;
		}
		
		/**
		 * @private
		 */
		public function set remainsByFrand(value:int):void
		{
			_remainsByFrand = value;
			dispModelEvent(ModelEvent.UPDATE, KEY_REMAINS_BY_FRAND);
		}

//		/**
//		 * 设置3个时间，，一次性发事件
//		 * @param beginTime
//		 * @param endTime
//		 */
//		public function setTimes(beginTime:uint, endTime:uint):void
//		{
//			_beginTime = beginTime;
//			_endTime = endTime;
//			dispModelEvent(ModelEvent.UPDATE, KEY_TIME);
//		}
		
		/**
		 * 设置组队副本列表
		 * @param infos
		 */
		public function setInfos(infos:Array):void
		{
			this.infos = infos.sortOn("id",Array.NUMERIC|Array.DESCENDING);
			
			dispModelEvent(ModelEvent.UPDATE, KEY_INFOS);
		}
	}
}