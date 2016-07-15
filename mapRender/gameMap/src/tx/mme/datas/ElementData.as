package tx.mme.datas
{

	public class ElementData extends BaseElementData
	{
		public static const ClassAlias:String = "ElementData";
		
		public var assetId:int;
		public var assetName:String;
		
		public var alpha:Number = 1;
		public var scaleX:Number = 1;
		public var scaleY:Number = 1;
		public var rotation:Number = 0;
		public var blendMode:String;
		public var color:ColorData;
		public var extname:String;
		
		public function ElementData()
		{
			color = new ColorData();
		}
		
		
		private static const ASSET_NAME:String = "Asset_";
		private static const PROPERTY_SCALE_X:String = "@scaleX";
		private static const PROPERTY_SCALE_Y:String = "@scaleY";
		private static const PROPERTY_ROTATION:String = "@rotation";
		private static const PROPERTY_ALPHA:String = "@alpha";
		private static const PROPERTY_BLEND_MODE:String = "@blendMode";
		private static const PROPERTY_EXT_NAME:String = "@extname";
		
		override public function decode(xml:XML):void
		{
			super.decode(xml);
			
			assetId = xml.@assetId;
			assetName = ASSET_NAME+assetId;
			if(xml.hasOwnProperty(PROPERTY_SCALE_X))
			{
				scaleX = xml.@scaleX;
			}else
			{
				scaleX = 1;
			}
			if(xml.hasOwnProperty(PROPERTY_SCALE_Y))
			{
				scaleY = xml.@scaleY;
			}else
			{
				scaleY = 1;
			}
			if(xml.hasOwnProperty(PROPERTY_ROTATION))
			{
				rotation = xml.@rotation;
			}else
			{
				rotation = 0;
			}
			if(xml.hasOwnProperty(PROPERTY_ALPHA))
			{
				alpha = xml.@alpha;
			}else
			{
				alpha = 1;
			}
			if(xml.hasOwnProperty(PROPERTY_BLEND_MODE))
			{
				blendMode = xml.@blendMode
			}
			color.decode(xml);
			
			if(xml.hasOwnProperty(PROPERTY_EXT_NAME))
			{
				extname = xml.@extname;
				assetId = -1;
			}
		}
		
		override public function clone():BaseElementData
		{
			var ed:ElementData = new ElementData();
			ed.assetId = assetId;
			ed.assetName = assetName;
			ed.extname = extname;
			ed.x = x;
			ed.y = y;
			ed.alpha = alpha;
			ed.scaleX = scaleX;
			ed.scaleY = scaleY;
			ed.rotation = rotation;
			ed.blendMode = blendMode;
			ed.color = color.clone();
			return ed;
		}
	}
	
}