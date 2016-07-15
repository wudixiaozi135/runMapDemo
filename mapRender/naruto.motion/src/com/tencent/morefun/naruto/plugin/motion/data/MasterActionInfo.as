package com.tencent.morefun.naruto.plugin.motion.data
{

	public class MasterActionInfo extends BaseActionInfo
	{
		public var type:int;
		public var masterHero:ActivityHero;
		public var cahootHeros:Array;
		
		public function MasterActionInfo()
		{
			actionType  = ActionTypeDef.MASTER;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			masterHero = null;
			cahootHeros = null;
		}
	}
}