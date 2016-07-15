package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;

	public class ShowComboPuppetNinjaAction extends BaseBattleAction
	{
		public function ShowComboPuppetNinjaAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			var battleNinja:Ninja;
			
			if(isLastCombo() == false)
			{
				this.end();
				return ;
			}
			
			for each(var ninjaPos:int in puppetPosList)
			{
				battleNinja = FightManagerCenter.ninjaMgr.getNinjaByPos(ninjaPos);
				battleNinja.visible = true;
				battleNinja.showUI();
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