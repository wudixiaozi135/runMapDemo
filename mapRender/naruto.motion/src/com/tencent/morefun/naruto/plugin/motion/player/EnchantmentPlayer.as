package com.tencent.morefun.naruto.plugin.motion.player
{

	import com.tencent.morefun.naruto.plugin.motion.data.EnchantmentActionInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.EnchantmentInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.HpChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.data.KathaChangedInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.BuffManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.NinjaManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneManager;
	import com.tencent.morefun.naruto.plugin.motion.manager.skill.SkillManager;
	import com.tencent.morefun.naruto.plugin.motion.notice.CancelSkillNotice;
	import com.tencent.morefun.naruto.plugin.motion.notice.UpdateSkillStatusNotice;
	import com.tencent.morefun.naruto.plugin.ui.util.TweenManager;

	public class EnchantmentPlayer extends BasePlayer
	{
		private var hpChangedList:Array;
		private var kathaChangedList:Array;
		private var enchatmentActionInfo:EnchantmentActionInfo;
		private var enchatmentInfo:EnchantmentInfo;
		private var time1:Number = 0.3;
		private var time2:Number = 0.3;
		
		public function EnchantmentPlayer()
		{
			super();
		}
		
		override public function playAction(actionInfo:Object, roleMgr:NinjaManager, buffMgr:BuffManager, skillMgr:SkillManager, sceneMgr:SceneManager):void
		{
			var ninja:Ninja;
			
			super.playAction(actionInfo, roleMgr, buffMgr, skillMgr, sceneMgr);
			
			enchatmentActionInfo = actionInfo as EnchantmentActionInfo;
			enchatmentInfo = SceneConfig.getEnchantmentInfo(enchatmentActionInfo.enchatmentId);
			
			hpChangedList = enchatmentActionInfo.hpChangedList;
			kathaChangedList = enchatmentActionInfo.kathaChangedList;
			
			FightManagerCenter.sceneMgr.showColorMaskEffect(enchatmentInfo.color);
			TweenManager.delayedCall(time1, changedEnchatment);
			TweenManager.delayedCall(time1 + time2, onColorMaskComplete);
			
			if(enchatmentActionInfo.cancelSkillList.length != 0)
			{
				new CancelSkillNotice(enchatmentActionInfo.cancelSkillList).send();
			}
			
			for each(var katalChangedInfo:KathaChangedInfo in kathaChangedList)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(katalChangedInfo.pos);
				ninja.updateMp(katalChangedInfo);
			}
			
			for each(var hpChangedInfo:HpChangedInfo in hpChangedList)
			{
				ninja = FightManagerCenter.ninjaMgr.getNinjaByPos(hpChangedList.pos);
				ninja.updateHp(hpChangedInfo, false, 1, 1, false);
			}
			
			if(enchatmentActionInfo.skillStatusChangedList.length != 0)
			{
				new UpdateSkillStatusNotice(enchatmentActionInfo.skillStatusChangedList).send();
			}
			playComplete();
		}
		
		private function changedEnchatment():void
		{
			if(enchatmentActionInfo.enchatmentId == 0)
			{
				FightManagerCenter.sceneMgr.resetEnchantment();
			}
			else if(enchatmentActionInfo.enchatmentId != 0)
			{
				FightManagerCenter.sceneMgr.setEnchantment(enchatmentInfo.res);
			}
			

		}
		
		private function onColorMaskComplete():void
		{
			FightManagerCenter.sceneMgr.resetColorMask();
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			kathaChangedList = null;
			enchatmentActionInfo = null;
			enchatmentInfo = null;
		}
	}
}