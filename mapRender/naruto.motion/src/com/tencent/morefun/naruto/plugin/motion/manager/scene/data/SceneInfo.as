package com.tencent.morefun.naruto.plugin.motion.manager.scene.data
{

	public class SceneInfo
	{
		public var id:String;
		public var res:String;
		public var btye:uint;
		public var key:String;
		public var environmentEffect:String;
		public var speedLineEffectIds:Array = [];
		public var positionInfo:ScenePointInfo;
	
															
		public function autoSetNull():void
		{

			id = null;
			res = null;
			key = null;
			environmentEffect = null;
			speedLineEffectIds = null;
			positionInfo = null;
		}
	}
}