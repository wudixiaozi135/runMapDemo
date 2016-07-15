package battle.data
{
	import com.tencent.morefun.naruto.model.BaseModel;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	
	import flash.utils.ByteArray;
	
	import battle.def.BattleKeyDef;
	
	import def.ModelDef;
	
	public class BattleInfo extends BaseModel
	{
		private var _id:int;
		private var _clientId:int;
		/**
		 * 这个就是后台传过来的 FightStartType ,为啥还有一个地方存这个值．BattleData.singleton.fightType
		 */
		public var type:int;
		public var stroyId:int;
		public var isWin:Boolean;
		private var _replayData:ByteArray = new ByteArray();
		private var _isFighting:Boolean;

		public function BattleInfo()
		{
			super(ModelDef.BATTLE);
		}
		
		public function get replayData():ByteArray
		{
			return _replayData;
		}

		public function set replayData(value:ByteArray):void
		{
			_replayData = value;
		}

		public function get isFighting():Boolean
		{
			return _isFighting;
		}
		
		public function get id():int 
		{
			return _id;
		}
		
		public function set id(value:int):void 
		{
			_id = value;
		}
		
		public function set clientId(value:int):void
		{
			_clientId = value;
		}
		
		public function get clientId():int
		{
			return _clientId;
		}
		
		public function battleStart():void
		{
			_isFighting = true;
			this.dispModelEvent(ModelEvent.UPDATE, BattleKeyDef.START);
		}
		
		public function battleEnd():void
		{
			_isFighting = false;
			this.dispModelEvent(ModelEvent.UPDATE, BattleKeyDef.END);
		}
		
		public function battleFail():void
		{
			_isFighting = false;
			this.dispModelEvent(ModelEvent.UPDATE, BattleKeyDef.FAIL);
		}
		
		public function showFightScene():void
		{
			this.dispModelEvent(ModelEvent.UPDATE, BattleKeyDef.SHOW_FIGHT_SCENE);
		}
		
		public function prewarStart():void
		{
			this.dispModelEvent(ModelEvent.UPDATE, BattleKeyDef.PREWAR_START);
		}
		
		public function prewarEnd():void
		{
			this.dispModelEvent(ModelEvent.UPDATE, BattleKeyDef.PREWAR_END);
		}
		
		public function showResult():void
		{
			this.dispModelEvent(ModelEvent.UPDATE, BattleKeyDef.SHOW_RESULT);
		}
	}
}