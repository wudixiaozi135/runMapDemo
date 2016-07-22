package com.tx.mme.data
{
	public class FlaData
	{
		public var actions:Object = {};
		public var events:Object = {};
		public var referPoints:Object = {};

		public function FlaData()
		{
		}

		public function hasActionName(name:String):Boolean
		{
			for (var k:String in actions)
			{
				if (k == name)
				{
					return true;
				}
			}
			return false;
		}

		public function addAction(name:String, frameBitmapDatas:Array):void
		{
			actions[name] = frameBitmapDatas;
		}

		public function getAction(name:String):Array
		{
			for (var k:String in actions)
			{
				if (k == name)
				{
					return actions[k];
				}
			}
			return null;
		}

//		public function addEvents(name:String,events:Array):void
//		{
//			this.events[name] = events;
//		}
//		
//		public function getEvents(name:String):Array
//		{
//			for(var k:String in events)
//			{
//				if(k == name)
//				{
//					return events[k];
//				}
//			}
//			return null;
//		}
//		
//		public function addReferPoints(name:String,referPoints:Array):void
//		{
//			this.referPoints[name] = referPoints;
//		}
//		
//		public function getReferPoints(name:String):Array
//		{
//			for(var k:String in referPoints)
//			{
//				if(k == name)
//				{
//					return referPoints[k];
//				}
//			}
//			return null;
//		}

		public function getTotalFrame(name:String):int
		{
			var tf:int = 0;
			for each(var d:FlaFrameBitmapData in getAction(name))
			{
				tf += d.length;
			}
			return tf;
		}
	}
}