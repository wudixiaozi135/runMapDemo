package com.tencent.morefun.naruto.plugin.motion.data
{
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;

	public class StageInfo
	{
		public var type:int;
		public var ninjaInfos:Array = [];
		
		public function getActionPos():Array
		{
			var posList:Array = [];
			
			for each(var ninjaInfo:NinjaInfo in ninjaInfos)
			{
				posList.push(ninjaInfo.pos);
			}
			
			return posList;
		}
	
															
		public function autoSetNull():void
		{

			ninjaInfos = null;
		}
	}
}