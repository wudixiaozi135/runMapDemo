package com.tencent.morefun.naruto.plugin.motion.notice
{

	import com.tencent.morefun.naruto.plugin.motion.data.NinjaBattleCfgInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;
	import com.tencent.morefun.naruto.plugin.motion.notice.base.BaseNotice;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class NinjaEnterNotice extends BaseNotice
	{
		public var ninjaInfos:Array = [];
		
		public function NinjaEnterNotice(sourceNinjaInfos:Array)
		{
			var ninjaInfo:NinjaInfo;
			var ninjaInfoCfg:NinjaBattleCfgInfo;
			
			super();
			
			for each(var info:NinjaInfo in sourceNinjaInfos)
			{
				ninjaInfoCfg = NinjaConfig.getNinjaInfoById(info.ninjaId);
				if(ninjaInfoCfg == null)
				{
					throw new Error(I18n.lang("as_motion_1451031573_4337_0") +　info.ninjaId　+ I18n.lang("as_motion_1451031573_4337_1"));
				}
				if(ninjaInfoCfg.cfgInfo.noticeUI)
				{
					info.hpInfoVisible = true;
					ninjaInfos.push(info);
				}
				else
				{
					ninjaInfo = new NinjaInfo();
					ninjaInfo.controlTeam = info.controlTeam;
					ninjaInfo.pos = info.pos;
					ninjaInfo.ninjaId = info.ninjaId;
					ninjaInfo.level = info.level;
					ninjaInfo.enterStageAction = info.enterStageAction;
					ninjaInfo.exeuntStageAction = info.exeuntStageAction;
					ninjaInfo.specialSkillIds = info.specialSkillIds.concat();
					ninjaInfo.hp = 0;
					ninjaInfo.maxHP = 0;
					ninjaInfo.mp = 0;
					ninjaInfo.maxMP = 0;
					ninjaInfo.hpInfoVisible = false;
					ninjaInfo.teamId = info.teamId;
					ninjaInfo.skillIndex = info.skillIndex;
					ninjaInfo.skillStates = info.skillStates;
					
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