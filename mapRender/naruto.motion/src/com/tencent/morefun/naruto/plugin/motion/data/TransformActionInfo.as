package com.tencent.morefun.naruto.plugin.motion.data
{
	import com.tencent.morefun.naruto.plugin.motion.manager.ninja.data.NinjaInfo;

	public class TransformActionInfo extends BaseActionInfo
	{
		public var enterNinjaInfo:NinjaInfo;
		public var mask:Boolean;
		public var visible:Boolean;
		
		public var activityHero:ActivityHero;
		
		public function TransformActionInfo()
		{
			actionType = ActionTypeDef.TRANSFORM;
		}
		
		override public function isHoldAction():Boolean
		{
			return true;
		}
		
		override public function getMotionPos():Array
		{
			return [enterNinjaInfo.pos];
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			enterNinjaInfo = null;
			activityHero = null;
		}
	}
}