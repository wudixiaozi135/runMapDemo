package npc.cfgs
{
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.utils.Dictionary;

	public class BaseNpcCfg
	{
		public var xml:XML;
		
		public var id:uint;
		public var name:String;
        public var title:String;
		public var roleId:int;
		public var type:int;//枚举在ROLEDef中
		public var res:String;
		public var dialogueType:int;
		public var dialogueRate:int;
		public var dialogPossibility:int;
		public var dialogTextList:Array = [];
		public var sightRange:int;  //视野范围
		public var moveRange:int;  //随机移动范围，以像素为单位
		public var moveRate:Number; //随机移动概率
		public var matrix:Matrix;
		public var idleActionName:String;
		
		public var listId:uint;
		public var imgPosMap:Dictionary = new Dictionary();
		public var canMove:Boolean;
		public var movePath:Array = [];
		public var seekPoint:Point;
		public var destPoint:Point;
		public var destPixelPoint:Point;
		public var startImgX:int;
		public var endImgX:int;
		public var startImgY:int;
		public var endImgY:int;
		
		public var cfgStartImgX:int;
		public var cfgEndImgX:int;
		public var cfgStartImgY:int;
		public var cfgEndImgY:int;
		public var subLayerIndex:int;
		
		
		public function BaseNpcCfg()
		{
		}
		
		public function parse(xml:XML):void
		{
			this.xml = xml;
			
			type = xml.@npcType;
			id = xml.@id;
			roleId = xml.@roleId;
			res = xml.@res;
			listId = xml.@listId;
			canMove = String(xml.@canMove) == "true";
			var ptArr:Array = String(xml.@destPoint).split(",");
			destPoint = new Point(ptArr[0], ptArr[1]);
			if (xml.hasOwnProperty("@destPixelPoint"))
			{
				ptArr = String(xml.@destPixelPoint).split(",");
				destPixelPoint = new Point(ptArr[0], ptArr[1]);
			}
			if(xml.hasOwnProperty("@seekPoint"))
			{
				ptArr = String(xml.@seekPoint).split(",");
				seekPoint = new Point(ptArr[0], ptArr[1]);
			}else
			{
				seekPoint = destPixelPoint;
			}
			ptArr = String(xml.@movePath).split(",");
			for(var i:int = 0;i < ptArr.length;i += 2)
			{
				movePath.push(new Point(ptArr[i], ptArr[i + 1]));
			}
			if (xml.hasOwnProperty("@matrix"))
			{
				ptArr = String(xml.@matrix).split(",");
				matrix = new Matrix(ptArr[0], ptArr[1], ptArr[2], ptArr[3]);
			}
			else
			{
				matrix = new Matrix();
			}
			startImgX = xml.@startImgX;
			endImgX = xml.@endImgX;
			startImgY = xml.@startImgY;
			endImgY = xml.@endImgY;
			cfgStartImgX = xml.@startImgX;
			cfgEndImgX = xml.@endImgX;
			cfgStartImgY = xml.@startImgY;
			cfgEndImgY = xml.@endImgY;
			idleActionName = xml.@idleActionName;
			dialogueType = xml.@dialogueType;
			dialogueRate = xml.@dialogueRate;
			dialogPossibility = xml.@dialogPossibility;
			subLayerIndex = (xml.hasOwnProperty("@subLayerIndex"))? xml.@subLayerIndex : 1;
			for(var j:int = 1;j <= 5;j ++)
			{
				if(xml.hasOwnProperty("@dialogText" + j) && String(xml["@dialogText" + j]) != "")
				{
					dialogTextList.push(String(xml["@dialogText" + j]));
				}
			}
		}
	}
}