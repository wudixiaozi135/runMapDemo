package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;

	public class HideComboPuppetNinjaAction extends BaseBattleAction
	{
		public function HideComboPuppetNinjaAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			var battleNinja:Ninja;
			
			if(actionData.isCombo == false || actionData.comboIndex == 0)
			{
				this.end();
				return ;
			}
			
			for each(var ninjaPos:int in puppetPosList)
			{
				battleNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(ninjaPos);
				battleNinja.visible = false;
				battleNinja.hideUI();
			}
			
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