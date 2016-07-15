package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;

	public class ShowCahootNinjaAction extends BaseBattleAction
	{
		public function ShowCahootNinjaAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			var battleNinja:Ninja;
			
			for each(var ninjaPos:int in caootPosList)
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