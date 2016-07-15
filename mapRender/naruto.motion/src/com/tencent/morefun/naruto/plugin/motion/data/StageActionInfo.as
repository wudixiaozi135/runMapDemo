package com.tencent.morefun.naruto.plugin.motion.data
{
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;

	public class StageActionInfo extends BaseActionInfo
	{
		//		public var type:int;//1 登场 3退场
		public var stageInfos:Array = [];
		public var kathaChangedList:Array = [];
		public var delayTime:int;
		
		public function StageActionInfo()
		{
			actionType  = ActionTypeDef.STAGE;
		}
		
		override public function isHoldAction():Boolean
		{
			return true;
		}
		
		override public function getMotionPos():Array
		{
			var arr:Array = [];
			var ninjaInfos:Array = [];
			
			for each(var stageInfo:StageInfo in stageInfos)
			{
				ninjaInfos = stageInfo.ninjaInfos;
				for each(var ninjaInfo:NinjaInfo in ninjaInfos)
				{
					arr.push(ninjaInfo.pos);
				}
			}
			
			return arr;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			stageInfos = null;
			kathaChangedList = null;
		}
	}
}