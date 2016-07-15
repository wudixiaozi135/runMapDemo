package com.tencent.morefun.naruto.plugin.motion.manager.scene.data
{
	import flash.utils.Dictionary;
	import com.tencent.morefun.naruto.util.CollectionClearUtil
	import com.tencent.morefun.naruto.util.CollectionClearUtil
	import com.tencent.morefun.naruto.util.CollectionClearUtil;

	public class ScenePointInfo
	{
		public var id:int;
		public var ptLen:int;
		public var horLen:int;
		public var mirror:Boolean;
		public var withstandPt:Dictionary = new Dictionary();
		public var beatBackPt:Dictionary = new Dictionary();
		public var leftPt:Dictionary = new Dictionary();
		public var right:Dictionary = new Dictionary();
	
															
		public function autoSetNull():void
		{

			withstandPt = null;
			beatBackPt = null;
			leftPt = null;
			right = null;
		}
	}
}