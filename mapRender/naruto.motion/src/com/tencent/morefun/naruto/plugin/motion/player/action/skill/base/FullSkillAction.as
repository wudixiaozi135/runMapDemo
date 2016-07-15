package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base
{
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.AttackLowerLayerAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.AttackUpperLayerAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.CurtainAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.FlashScreenAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.FocusSeftAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.HidePassiveAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.HideSelfAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.ShakeScreenAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.SkipRenderAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.SpeedLineAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.StealthAction;

	public class FullSkillAction extends BaseBattleAction
	{
		public function FullSkillAction(data:Object)
		{
			super();
			
			this.data = data;
			
			addSubActions();
		}
		
		public function addSubActions():void
		{
			this.addSubAction(new HidePassiveAction(), 0);
			this.addSubAction(new ShakeScreenAction(), 0);
			this.addSubAction(new StealthAction(), 0);
			this.addSubAction(new SkipRenderAction(), 0);
			this.addSubAction(new FlashScreenAction(), 0);
			this.addSubAction(new HideSelfAction(), 0);
			this.addSubAction(new SpeedLineAction(), 0);
			this.addSubAction(new FocusSeftAction(), 0);
			this.addSubAction(new AttackLowerLayerAction(), 0);
			this.addSubAction(new AttackUpperLayerAction(), 0);
			this.addSubAction(new CurtainAction(), 0);
		}
		
		override protected function onParentActionEnd():void
		{
			this.end();
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

		}
	}
}