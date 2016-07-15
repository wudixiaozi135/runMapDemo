/**
 * Created by xiaoding on 2016/7/13 0013.
 */
package com.map.manager
{
	import flash.display.Stage;

	public class LayerManager
	{
		public var stage:Stage;

		public function LayerManager()
		{
		}

		public function init(stage:Stage):void
		{
			this.stage = stage;
		}

		private static var _instance:LayerManager = null;

		public static function get singleton():LayerManager
		{
			if (_instance == null)
			{
				_instance = new LayerManager();
			}
			return _instance;
		}
	}
}
