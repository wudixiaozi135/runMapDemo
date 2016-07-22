package tx.mnme.events
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.BaseElementData;
	
	import flash.events.Event;
	
	public class AttributeEvent extends Event
	{
		public static const CHANGE_POS:String = "changePos";
		public static const CHANGE_BLEND_MODE:String = "changeBlendMode";
		public static const CHANGE_SCALE:String = "changeScale";
		public static const CHANGE_ROTATION:String = "changeRotation";
		public static const CHANGE_ALPHA:String = "changeAlpha";
		public static const CHANGE_COLOR:String = "changeColor";
		public static const CHANGE_NAME:String = "changeName";
		
		public static const SYNC:String = "sync";
		
		public var syncPos:Boolean = false;
		public var syncScale:Boolean = false;
		public var syncRotation:Boolean = false;
		public var syncAlpha:Boolean = false;
		public var syncBlend:Boolean = false;
		
//		public var x:Number;
//		public var y:Number;
//		public var alpha:Number;
//		public var scaleX:Number;
//		public var scaleY:Number;
//		public var rotation:Number;
//		public var blendMode:String;
		
		public var data:BaseElementData;
		public var oldData:BaseElementData;
		
		public function AttributeEvent(type:String)
		{
			super(type);
		}
		
		override public function clone():Event
		{
			var e:AttributeEvent = new AttributeEvent(type);
			if(oldData)
			{
				e.oldData = oldData.clone();
			}
			
			if(data)
			{
				e.data = data.clone();
			}
//			e.x = x;
//			e.y = y;
//			e.alpha = alpha;
//			e.scaleX = scaleX;
//			e.scaleY = scaleY;
//			e.rotation = rotation;
//			e.blendMode = blendMode;
//			
			return e;
		}
	}
}