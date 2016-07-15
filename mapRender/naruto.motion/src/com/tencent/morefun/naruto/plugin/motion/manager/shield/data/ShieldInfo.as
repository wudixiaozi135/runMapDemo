package com.tencent.morefun.naruto.plugin.motion.manager.shield.data
{

	public class ShieldInfo
	{
		public var id:int;
		public var hp:int;
		public var pos:int;
		public var money:int;
		public var maxHp:int;
		public var type:int;
		public var close:int;
		public var oldId:int;
		public var newId:int;
		public var cfg:ShieldInfoCfg;
	
															
		public function autoSetNull():void
		{

			cfg = null;
		}
	}
}