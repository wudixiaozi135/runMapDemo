package com.tencent.morefun.naruto.plugin.motion.manager.effect
{
	import com.tencent.morefun.naruto.plugin.motion.manager.effect.data.EffectInfo;

	public class EffectProxy
	{
		private static var effectTaskIndex:int;
		private var effectTaskList:Array = [];
		
		public function EffectProxy()
		{
			
		}
		
		public function playSceneEffect(effectInfo:EffectInfo):void
		{
			
		}
		
		public function playNinjaEffect(effectInfo:EffectInfo):void
		{
			
		}
		
		private function getEffectTaskIndex():int
		{
			if(effectTaskIndex == int.MAX_VALUE)
			{
				effectTaskIndex = 0;
			}
			
			return effectTaskIndex;
		}
	
															
		public function autoSetNull():void
		{

			effectTaskList = null;
		}
	}
}