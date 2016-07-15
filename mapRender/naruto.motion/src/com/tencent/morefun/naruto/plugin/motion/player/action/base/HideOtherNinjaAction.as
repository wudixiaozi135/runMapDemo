package com.tencent.morefun.naruto.plugin.motion.player.action.base
{
	import com.tencent.morefun.naruto.plugin.motion.manager.FightManagerCenter;
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.Ninja;

	public class HideOtherNinjaAction extends BaseBattleAction
	{
		/**
		 * 
		 * @param args 
		 * args[0] ActivityHero 攻击者数据 
		 * args[1] attackCount 第几次攻击
		 * args[2] attackTotal 总共有几次攻击
		 * args[3] attackCount 需要隐藏的忍者pos列表
		 */		
		
		public function HideOtherNinjaAction()
		{
			super();
		}
		
		override protected function onBegin():void
		{
			var battleNinja:Ninja;
			for each(var ninjaPos:int in hideNinjaList)
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