package com.tencent.morefun.naruto.plugin.motion.player.action.skill.base
{
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.BaseBattleAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.ComboPauseAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.EnchantmentAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.HideCahootNinjaAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.JumpDownAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.JumpUpAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.MoveToCenterAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.base.MoveToDestAction;
	import com.tencent.morefun.naruto.plugin.motion.player.action.skill.base.fight.FightAction;

	public class SubSkillAction extends BaseBattleAction
	{
		public function SubSkillAction(data:Object)
		{
			super();
			
			this.data = data;
			
			addSubActions();
		}
		
		public function addSubActions():void
		{
			this.addSubAction(new EnchantmentAction(), 0);
			this.addSubAction(new ComboPauseAction(), 1);
			this.addSubAction(new MoveToDestAction(), 2);
			this.addSubAction(new MoveToCenterAction(), 2);
			this.addSubAction(new HideCahootNinjaAction(), 3);
			this.addSubAction(new JumpUpAction(), 4);
			this.addSubAction(new FightAction(data), 5);
			this.addSubAction(new JumpDownAction(), 6);
		}
		
		override protected function onAllSubActionEnd():void
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