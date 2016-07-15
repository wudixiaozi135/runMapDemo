package map.commands
{
	import com.tencent.morefun.framework.base.Command;
	
	import flash.display.Bitmap;
	import flash.geom.Point;
	import flash.utils.ByteArray;
	import flash.utils.Dictionary;
	
	import cfgData.dataStruct.SceneCFG;

	public class LadeMapCommand extends BaseMapCommand
	{
//		public var id:int;
		public var sceneInfo:SceneCFG;
		public var pos:Point;
		public var mapBgImgInfos:Dictionary;
		public var mapMgImgInfos:Dictionary;
		public var mapFgImgInfos:Dictionary;
		public var mapData:ByteArray;
		public var shrinkBitmap:Bitmap;
		public var alphaBitmap:Bitmap;
		
		public function LadeMapCommand(sceneInfo:SceneCFG, pos:Point, mapBgImgInfos:Dictionary, mapMgImgInfos:Dictionary, mapFgImgInfos:Dictionary, mapData:ByteArray,shrinkBitmap:Bitmap,alphaBitamp:Bitmap)
		{
			super(Command.FULL_SCREEN | Command.TOTAL_FILE);
			
			this.sceneInfo = sceneInfo;
			this.pos = pos;
			this.mapBgImgInfos = mapBgImgInfos;
			this.mapMgImgInfos = mapMgImgInfos;
			this.mapFgImgInfos = mapFgImgInfos;
			this.mapData = mapData;
			this.shrinkBitmap = shrinkBitmap;
			this.alphaBitmap = alphaBitamp;
		}
	}
}