package com.tencent.morefun.naruto.plugin.motion.manager.buff.data
{
	import com.tencent.morefun.naruto.plugin.motion.data.BaseChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.LogicEffectInfo;

	public class BuffInfo
	{
		public var buffId:int;//buff的类型id
		public var pos:int;//buff作用的位置
		public var hp:int;//对血的影�?当�?过getBuffInfoByBuffId获取此�?�?
		public var maxHp:int;
		public var money:int;
		public var protectHp:int;
		public var sp:int;//对�?气的影响当�?过getBuffInfoByBuffId获取此�?�?
		public var mp:int;//对查克拉的影�?当�?过getBuffInfoByBuffId获取此�?�?
		public var type:int;//1 添加buff 2删除buff 3效果表现
		public var close:int;//结算类型 (中回合) 1小回合前结算   2小回合中结算（受击时促发）3小回合后结算   0大回合结算 
		public var katha:int;
		public var isOver:Boolean;
		public var cfg:BuffInfoCfg;
		public var buffInited:Boolean;
		public var group:int;//buff组
		public var overlay:int;//层数
		public var baseChangedInfo:Array = []
		public var attributeChangedInfo:Array = [];
		public var logicEffectInfo:LogicEffectInfo;
//		public var attributeChangedList:Array;
		public var oldBuffId:int;
		public var newBuffId:int;
		
		public function BuffInfo()
		{
		}
		
		public function update(buffInfo:BuffInfo):void
		{
			buffId = buffInfo.buffId;
			pos = buffInfo.pos;
			hp = buffInfo.hp;
			sp = buffInfo.sp;
			mp = buffInfo.mp;
			close = buffInfo.close;
			katha = buffInfo.katha;
			protectHp = buffInfo.protectHp;
			cfg = buffInfo.cfg;
		}
	
															
		public function autoSetNull():void
		{

			cfg = null;
			baseChangedInfo = null;
			attributeChangedInfo = null;
			logicEffectInfo = null;
		}
	}
}