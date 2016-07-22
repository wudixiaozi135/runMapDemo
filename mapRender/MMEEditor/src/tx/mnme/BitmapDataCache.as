package tx.mnme
{
	import flash.display.BitmapData;

	public class BitmapDataCache
	{
		private static const cache:Object = {};
		
		public function BitmapDataCache()
		{
		}
		
		public static function hasBitmapData(name:String):Boolean
		{
			return getBitmapData(name)!=null;
		}
		
		public static function getBitmapData(name:String):BitmapData
		{
			if(cache[name])
			{
				return cache[name] as BitmapData;
			}
			return null;
		}
		
		public static function setBtimapData(name:String,value:BitmapData):void
		{
			cache[name] = value;
		}
		
		public static function disposeByName(name:String):void
		{
			if(cache[name])
			{
				(cache[name] as BitmapData).dispose();
				delete cache[name];
			}
		}
		
		public static function dispose():void
		{
			for(var name:String in cache)
			{
				var bd:BitmapData = cache[name];
				bd.dispose();
			}
			
			for(name in cache)
			{
				delete cache[name];
			}
		}
	}
}