package tx.mme.datas
{
	import flash.geom.ColorTransform;

	public class ColorData
	{
		public static const ClassAlias:String = "ColorData";
		
		public var color:uint;
		public var empty:Boolean = true;
		
		public function ColorData()
		{
		}
		
		public function getColorTransform():ColorTransform
		{
			if(!empty)
			{
				var ct:ColorTransform = new ColorTransform();
				
				var a:Number = ((color>>>24)&0xFF) / 0xFF;
				var r:uint = (color >> 16) & 0xFF;
				var g:uint = (color >> 8) & 0xFF;
				var b:uint = (color) & 0xFF;
				
				ct.redMultiplier = 1-a;
				ct.greenMultiplier = 1-a;
				ct.blueMultiplier = 1-a;
				ct.redOffset = r*a;
				ct.greenOffset = g*a;
				ct.blueOffset = b*a;
				
				return ct;
			}else
			{
				return null;
			}
		}
		
		public function decode(xml:XML):void
		{
			var cs:String = xml.@color;
			if(cs)
			{
				color = uint("0x"+cs);
				empty = false;
			}else
			{
				empty = true;
			}
		}
		
		public function encode(xml:XML):void
		{
			if(!empty)
			{
				xml.@color = color.toString(16);
			}
		}
		
		public function clone():ColorData
		{
			var d:ColorData = new ColorData();
			d.color = color;
			d.empty = empty;
			return d;
		}
	}
}