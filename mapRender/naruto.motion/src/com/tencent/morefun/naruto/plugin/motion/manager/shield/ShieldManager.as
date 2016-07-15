package com.tencent.morefun.naruto.plugin.motion.manager.shield
{
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.data.ShieldConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.data.ShieldInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.event.ShieldEvent;
	import flash.events.EventDispatcher;

	public class ShieldManager extends EventDispatcher
	{
		public function ShieldManager()
		{
		}
		
		/**
		 * 
		 * @param buffInfos buff列表
		 * @param close 结算类型 1小回合前 2小回合中 3小回合后 0大回合
		 * 
		 */
		public function execute(shields:Array, close:int = 0):void
		{
			for each(var shieldInfo:ShieldInfo in shields)
			{
				if(ShieldConfig.isShieldBuff(shieldInfo.id) == false)
				{
					continue ;
				}
				
				shieldInfo.cfg = ShieldConfig.getShieldInfoCfgById(shieldInfo.id);
				
				if(shieldInfo.close == close)
				{
					executeBuffInfo(shieldInfo);
				}
			}
		}
		
		private function executeBuffInfo(shieldInfo:ShieldInfo):void
		{
			var event:ShieldEvent;
			
			switch(shieldInfo.type)
			{
				case 1://1 添加护盾
					event = new ShieldEvent(ShieldEvent.SHIELD_ADD);
					event.shieldInfo = shieldInfo;
					dispatchEvent(event);
					break;
				case 2://2删除护盾
					event = new ShieldEvent(ShieldEvent.SHIELD_REMOVE);
					event.shieldInfo = shieldInfo;
					dispatchEvent(event);
					break;
				case 3://3护盾结算
					event = new ShieldEvent(ShieldEvent.SHIELD_CLOSING);
					event.shieldInfo = shieldInfo;
					dispatchEvent(event);
					break;
				case 5:
					shieldInfo.id = shieldInfo.oldId;
					event = new ShieldEvent(ShieldEvent.SHIELD_REMOVE);
					event.shieldInfo = shieldInfo;
					dispatchEvent(event);
					
					shieldInfo.id = shieldInfo.newId;
					event = new ShieldEvent(ShieldEvent.SHIELD_ADD);
					event.shieldInfo = shieldInfo;
					dispatchEvent(event);
					break;
			}
		}
	
															
		public function autoSetNull():void
		{

		}
	}
}