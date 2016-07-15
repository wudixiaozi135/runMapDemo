package com.tencent.morefun.naruto.plugin.motion.data
{

	public class FightInfo
	{
		public var sceneId:int;//场景ID
		public var roundInfos:Array = [];//Round数据
		public var heros:Array = [];//忍者列表
	
															
		public function autoSetNull():void
		{

			roundInfos = null;
			heros = null;
		}
	}
}