package tx.loader.mission
{

	import flash.utils.ByteArray;

	public class TextMission extends Mission
	{
		public var text:String;
		public function TextMission(name:String, path:String, useCache:Boolean=true, cacheType:uint=1, key:String=null, data:Object=null)
		{
			super(name, path, useCache, cacheType, key, data);
		}
		override public function convert(source:ByteArray):void
		{
			original = source;
			
			var useBytes:ByteArray = bytes;
			uncompress(useBytes);
			useBytes.position = 0;
			text = useBytes.toString();
			
			complete();
		}
	}
}