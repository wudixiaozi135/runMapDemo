package worldBoss.model 
{
	import battle.data.BattleInfo;
	import com.tencent.morefun.naruto.model.BaseModel;
	import serverProto.worldBoss.ProtoGetWorldBossStatusResp;
	import serverProto.worldBoss.ProtoRankPlayerList;
	import worldBoss.command.GetWorldBossListCommand;
	import worldBoss.model.data.WorldBossRewardInfo;
	
	import flash.events.Event;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	
	import serverProto.worldBoss.ProtoWorldBossOpenInfo;
	
	/**
	 * ...
	 * @author Devin Lee
	 */
	public class WBModel extends BaseModel 
	{
		static public const WORLD_BOSS_MODEL:String = "worldBossModel";
		
		static public const UPDATE_ALL:String = "updateAll";
		static public const UPDATE_TIME:String = "updateTime";
		static public const UPDATE_STATE:String = "updateState";
		static public const UPDATE_BUFF_0:String = "updateBuff0";
		static public const UPDATE_BUFF_1:String = "updateBuff1";
		static public const UPDATE_FAINT:String = "updateFaint";
		static public const UPDATE_REVIVE:String = "updateRevive";
		
		static public const S0_UNOPEN:int = 0;
		static public const S1_PREHEAT:int = 1;
		static public const S2_OPENING:int = 2;
		static public const S3_CLOSE:int = 3;
		
		static private var _instance:WBModel;
		
		static public function getInstance():WBModel {
			if (!_instance) {
				_instance = new WBModel;
			}
			return _instance;
		}
		
		public var beginTime:uint;
		public var endTime:uint;
		public var revivalTime:uint;
		public var currentTime:uint;
		
		/**
		 * [ProtoWorldBossOpenInfo]
		 */
		public var worldBossList:Array;
		/**当前活动的BOSS*/
		public var nextWorldBoss:ProtoWorldBossOpenInfo;
		/**伤害榜[ProtoRankPlayerList]*/
		public var playerList:Array;
		public var selfRank:ProtoRankPlayerList;
		public var status:ProtoGetWorldBossStatusResp;
		public var reward:WorldBossRewardInfo;	// 世界BOSS结算信息
		public var battleInfo:BattleInfo;
		private var _state:int;
		private var _timer:Timer;
		private var _faint:Boolean;
		public function WBModel() 
		{
			super(WORLD_BOSS_MODEL);
			if (_instance) {
				throw Error("RankModel is a singleton class!");
			}
			_instance = this;
			_timer = new Timer(1000);
			_timer.addEventListener(TimerEvent.TIMER, onTimer);
		}
		
		public function updateAll():void 
		{
			dispatchEvent(new Event(UPDATE_ALL));
		}
		public function updateBuff(type:String):void 
		{
			dispatchEvent(new Event(type));
		}
		/**
		 * 设置3个时间，，一次性发事件
		 * @param beginTime
		 * @param endTime
		 */
		private function setTimes(beginTime:uint, endTime:uint,revivalTime:uint,currentTime:int):void
		{
			this.beginTime = beginTime;
			this.endTime = endTime;
			this.revivalTime = revivalTime;
			this.currentTime = currentTime;
			
			if (status && revivalTime == 0 && status.isDead == 1) {
				status.isDead = 0;
				updateAll();
			}
			if(beginTime > nextWorldBoss.preheatTime)//等待开启
			{
				state = S0_UNOPEN;
			}else if(beginTime > 0)//预热
			{
				state = S1_PREHEAT;
			}else if(endTime > 0)//进行中
			{
				state = S2_OPENING;
			}else//关闭
			{
				state = S3_CLOSE;
			}
			
			dispatchEvent(new Event(UPDATE_TIME));
		}
		
		public function setCurrentBossAndUpdatTime(boss:ProtoWorldBossOpenInfo, currentTime:uint,revivalTime:uint=0):void 
		{
			nextWorldBoss = boss;
			
			if(boss)
			{
				this.currentTime = currentTime -1;
				this.revivalTime = revivalTime +1;
				
				_timer.reset();
				_timer.start();
				
				onTimer(null);
			}else {
				_timer.stop();
			}
		}
		
		private function onTimer(event:Event):void
		{
			//if (_timer.currentCount > 60 * 20 && (state != S1_PREHEAT && state != S2_OPENING)) {
				//new GetWorldBossListCommand().call();
				//_timer.reset();
			//}
			
			currentTime += 1;
			
			var b:uint, e:uint, r:uint;
			b = Math.max(0, uint(nextWorldBoss.startTime) - currentTime);
			e = Math.max(0, uint(nextWorldBoss.endTime) - currentTime);
			r = Math.max(0, revivalTime - 1);
			
			setTimes(b, e, r, currentTime);
			
			if(b == 0 && e == 0 && r == 0)
			{
				_timer.stop();
			}
		}
		
		public function get state():int 
		{
			return _state;
		}
		
		public function set state(value:int):void 
		{
			if (_state == value) return;
			
			_state = value;
			dispatchEvent(new Event(UPDATE_STATE));
		}
		/**是否气绝了*/
		public function set faint(value:Boolean):void 
		{
			if (_faint == value) return;
			
			_faint = value;
			dispatchEvent(new Event(UPDATE_FAINT));
		}
		
		public function get faint():Boolean 
		{
			return _faint;
		}
		
	}

}