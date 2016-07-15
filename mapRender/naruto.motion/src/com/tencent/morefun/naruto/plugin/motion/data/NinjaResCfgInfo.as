package com.tencent.morefun.naruto.plugin.motion.data
{
	import flash.geom.Point;

	public class NinjaResCfgInfo
	{
		public var id:int;
		public var leftRes:String;
		public var rightRes:String;
		public var skillActionEffect:int;
		public var ignoreDepth:Boolean;
		public var hideShadow:Boolean;
		public var ignoreSkillAction:Boolean;
		public var mirrorRes:Boolean;
		public var scene:int;
		public var area:Point;
		public var res:String;
		public var beHitEffectId:int;
	
															
		public function autoSetNull():void
		{

			leftRes = null;
			rightRes = null;
			area = null;
			res = null;
		}
	}
}