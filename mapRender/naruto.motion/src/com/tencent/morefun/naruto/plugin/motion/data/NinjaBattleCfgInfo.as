package com.tencent.morefun.naruto.plugin.motion.data
{
	import cfgData.dataStruct.NinjaBattleInfoCFG;

	public class NinjaBattleCfgInfo
	{
		public var cfgInfo:NinjaBattleInfoCFG;
		public var resCfgInfo:NinjaResCfgInfo;
	
															
		public function autoSetNull():void
		{

			cfgInfo = null;
			resCfgInfo = null;
		}
	}
}