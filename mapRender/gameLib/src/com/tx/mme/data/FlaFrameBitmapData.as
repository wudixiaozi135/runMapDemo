package com.tx.mme.data
{
	import flash.display.BitmapData;
	import flash.utils.ByteArray;

	public class FlaFrameBitmapData extends BaseFrameData
	{
		public var x:int;
		public var y:int;
		public var width:int;
		public var height:int;
		public var bytes:ByteArray;
		public var bitmapData:BitmapData;
		public var referPointDatas:Array;

		public function FlaFrameBitmapData()
		{
			super();
		}
	}
}