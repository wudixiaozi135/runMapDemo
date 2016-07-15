package com.tencent.morefun.naruto.plugin.motion.notice
{
	import com.tencent.morefun.naruto.plugin.motion.data.NinjaBattleCfgInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

	public class NinjaReplaceNotice extends BaseNotice
	{
		public var ninjaInfos:Array =[];
		
		public function NinjaReplaceNotice(sourceNinjaInfo:Array)
		{
			var ninjaInfo:NinjaInfo;
			var ninjaInfoCfg:NinjaBattleCfgInfo;
			
			super();
			
			for each(var info:NinjaInfo in sourceNinjaInfo)
			{
				ninjaInfoCfg = NinjaConfig.getNinjaInfoById(info.ninjaId);
				if(ninjaInfoCfg.cfgInfo.noticeUI)
				{
					ninjaInfos.push(info);
				}
				else
				{
					ninjaInfo = new NinjaInfo();
					ninjaInfo.pos = info.pos;
					ninjaInfo.ninjaId = info.ninjaId;
					ninjaInfo.teamId = info.teamId;
					
					ninjaInfos.push(ninjaInfo);
				}
			}
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			ninjaInfos = null;
		}
	}
}