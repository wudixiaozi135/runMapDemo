package tx.mme.datas
{

	public class PhantomData
	{
		public static const ClassAlias:String = "PhantomData";
		
		public static const TYPE_ON:String = "on";
//		public static const TYPE_ON_AND_CLEAR:String = "onAndClear";
		public static const TYPE_ON_AND_SPANNING:String = "onAndSpanning";
		public static const TYPE_OFF:String = "off";
//		public static const TYPE_OFF_AND_CLEAR:String = "offAndClear";d
		
		public var type:String;
		public var color:ColorData;
		public var interval:int;
		public var dAlpha:int;
		
		public function PhantomData()
		{
			color = new ColorData();
		}
		
		public function decode(xml:XML):void
		{
			var type:String = xml.@type;
			switch(type)
			{
				case TYPE_ON:
//				case TYPE_ON_AND_CLEAR:
				case TYPE_ON_AND_SPANNING:
				case TYPE_OFF:
//				case TYPE_OFF_AND_CLEAR:
					this.type = type;
					break;
				default:
					return;
			}
			color.decode(xml);
			interval = xml.@interval;
			dAlpha = xml.@dAlpha;
		}
		
		public function clone():PhantomData
		{
			var pd:PhantomData = new PhantomData();
			pd.type = type;
			pd.color = color.clone();
			pd.interval = interval;
			pd.dAlpha = dAlpha;
			return pd;
		}
	}
}