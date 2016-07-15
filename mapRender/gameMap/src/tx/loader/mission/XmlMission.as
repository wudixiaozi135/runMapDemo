package tx.loader.mission
{

	import flash.system.System;
	import flash.utils.ByteArray;

	public class XmlMission extends Mission
	{
		public var xml:XML;
		public function XmlMission(name:String, path:String, useCache:Boolean=true, cacheType:uint=1, key:String=null, data:Object=null)
		{
			super(name, path, useCache, cacheType, key, data);
		}
		
		override public function convert(source:ByteArray):void
		{
			original = source;
			
			var useBytes:ByteArray = bytes;
			uncompress(useBytes);
			useBytes.position = 0;

			try
			{
				xml = XML(useBytes.toString());
				complete();
			}catch(err:Error)
			{
				error();
			}
		}
		
		override public function destroy():void
		{
			System.disposeXML(xml);
			
			xml = null;
			super.destroy();
		}
	}
}