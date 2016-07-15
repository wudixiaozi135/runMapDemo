package com.tencent.morefun.naruto.plugin.motion.manager.buff
{
	import com.tencent.morefun.naruto.plugin.motion.data.BuffEffectInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.data.BuffInfo;
	import com.tencent.morefun.naruto.plugin.motion.manager.buff.event.BuffEvent;
	import com.tencent.morefun.naruto.plugin.motion.manager.shield.data.ShieldConfig;
	import flash.events.EventDispatcher;
	import flash.system.System
	import flash.system.System
	import flash.system.System
	import flash.system.System
	import flash.system.System
	import flash.system.System
	import flash.system.System

	public class BuffManager extends EventDispatcher
	{
		protected var roundId:String;
		protected var actionId:String;
		
		private var xml:XML;
		private var missionFunc:Function;
		public function BuffManager()
		{
			
		}
		
		/**
		 * 
		 * @param buffInfos buff列表
		 * @param close 结算类型 1小回合前 2小回合中 3小回合后 0大回合
		 * 
		 */
		public function executeBuff(buffInfos:Array, close:int = 0):void
		{
			for each(var buffInfo:BuffInfo in buffInfos)
			{
				if(ShieldConfig.isShieldBuff(buffInfo.buffId) == true)
				{
					continue ;
				}
				
				if(buffInfo.close == close)
				{
					executeBuffInfo(buffInfo);
				}
			}
		}
		
		public function executeEffect(buffEffectInfos:Array, close:int = 0):void
		{
			for each(var buffEffectInfo:BuffEffectInfo in buffEffectInfos)
			{
				if(buffEffectInfo.close == close)
				{
					executeBuffEffectInfo(buffEffectInfo);
				}
			}
		}
		
		private function executeBuffInfo(buffInfo:BuffInfo):void
		{
			var event:BuffEvent;
			
			switch(buffInfo.type)
			{
				case 1://1 添加buff
					event = new BuffEvent(BuffEvent.BUFF_ADD);
					event.buffInfo = buffInfo;
					this.dispatchEvent(event);
					break;
				case 2://2删除buff
					event = new BuffEvent(BuffEvent.BUFF_REMOVE);
					event.buffInfo = buffInfo;
					this.dispatchEvent(event);
					break;
				case 3://3效果表现
					event = new BuffEvent(BuffEvent.BUFF_CLOSING);
					event.buffInfo = buffInfo;
					this.dispatchEvent(event);
					break;
				case 4:
					event = new BuffEvent(BuffEvent.BUFF_REMOVE);
					event.buffInfo = buffInfo;
					this.dispatchEvent(event);
					event = new BuffEvent(BuffEvent.BUFF_ADD);
					event.buffInfo = buffInfo;
					this.dispatchEvent(event);
					break;
				case 5:
					buffInfo.buffId = buffInfo.oldBuffId;
					event = new BuffEvent(BuffEvent.BUFF_REMOVE);
					event.buffInfo = buffInfo;
					this.dispatchEvent(event);
					buffInfo.buffId = buffInfo.newBuffId;
					event = new BuffEvent(BuffEvent.BUFF_ADD);
					event.buffInfo = buffInfo;
					this.dispatchEvent(event);
					break;
			}
		}
		
		private function executeBuffEffectInfo(buffEffectInfo:BuffEffectInfo):void
		{
			var event:BuffEvent;
			
			event = new BuffEvent(BuffEvent.BUFF_EFFECT);
			event.buffEffectInfo = buffEffectInfo;
			this.dispatchEvent(event);
		}
		
		public function getUIBuffInfoList(buffInfos:Array):Array
		{
			var buffInfoList:Array = [];
			
			for each(var buffInfo:BuffInfo in buffInfos)
			{
				if(buffInfo.buffId == 0)
				{
					buffInfoList.push(buffInfo);
				}
			}
			
			return buffInfoList;
		}
	
															
		public function autoSetNull():void
		{

			roundId = null;
			actionId = null;
			xml = null;
			missionFunc = null;
		}
	}
}