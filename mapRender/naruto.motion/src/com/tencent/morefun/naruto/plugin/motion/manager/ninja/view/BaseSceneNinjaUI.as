package com.tencent.morefun.naruto.plugin.motion.manager.ninja.view
{

	import com.tencent.morefun.naruto.plugin.motion.manager.scene.SceneConfig;
	import com.tencent.morefun.naruto.plugin.motion.manager.scene.view.BaseItemSceneUI;

	public class BaseSceneNinjaUI extends BaseItemSceneUI//TODO: BaseItemSceneUI只有一个子类
	{
		private var _pos:int;
		private var _row:int;
		private var _col:int;
		private var _posList:Array = [];
		
		public function BaseSceneNinjaUI()
		{
			super();
		}
		
		public function set posList(value:Array):void
		{
			_posList = value;
		}
		
		public function get posList():Array
		{
			return _posList;
		}
		
		public function containsPos(pos:int):Boolean
		{
			return _posList.indexOf(pos) != -1;
		}
		
		public function set pos(value:int):void
		{
			_pos = value;
			updateRow();
			updateCol();
		}
		
		public function get pos():int
		{
			return _pos;
		}
		
		public function get row():int
		{
			return _row;
		}
		
		public function get col():int
		{
			return _col;
		}
		
		private function updateCol():void
		{
			_col = SceneConfig.getGridByPos(_pos).x;
		}
		
		private function updateRow():void
		{
			_row = SceneConfig.getGridByPos(_pos).y;
		}
	
															
		override public function autoSetNull():void
		{
			if(super.hasOwnProperty("autoSetNull"))
			{
				super["autoSetNull"]();
			}

			_posList = null;
		}
	}
}