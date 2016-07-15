package com.tencent.morefun.naruto.plugin.motion.manager.scene.data
{

	public class SceneCfgInfo
	{
		public var id:int;
		public var x:int;
		public var y:int;
		public var name:String;
		
		public function getXmlStr():String
		{
			return "<pt id=\""+ id +"\"" +
				" name=\""+ name +"\"" +
				" x=\""+ x +"\"" +
				" y=\""+ y +"\" />";
		}
	
															
		public function autoSetNull():void
		{

			name = null;
		}
	}
}