package com.tencent.morefun.naruto.plugin.motion.data
{
	public class LogicEffectInfoCfg
	{
		public var id:int;
		public var resEffect:int;
		public var effectList:Array = [];
		public var resEffectInfoList:Array = [];
		
		public function set skillData(value:XML):void
		{
			id = value.@id;
			resEffect = int(value.@resEffect);
			if(int(value.@effect1) != 0)
			{
				effectList.push(int(value.@effect1));
			}
			if(int(value.@effect2) != 0)
			{
				effectList.push(int(value.@effect2));
			}
		}
		
		public function set buffData(value:XML):void
		{
			id = value.@id;
			resEffect = int(value.@resEffect);
			if(int(value.@effect1) != 0)
			{
				effectList.push(int(value.@effect1));
			}
			if(int(value.@effect2) != 0)
			{
				effectList.push(int(value.@effect2));
			}
			if(int(value.@effect3) != 0)
			{
				effectList.push(int(value.@effect2));//TODO 加2　不是3？
			}
		}
	
															
		public function autoSetNull():void
		{

			effectList = null;
		}
	}
}