package tx.mme.datas
{

	public class FrameData extends BaseFrameData
	{
		public static const ClassAlias:String = "FrameData";
		
		public var event:String;
		public var events:Array;
		
		public var element:BaseElementData;
		
		public var useTween:Boolean;
		
		public var phantom:PhantomData;
		
		public var sound:uint;
		public var volume:uint;
		
		public function FrameData()
		{
			phantom = new PhantomData();
		}
		
		public function decode(xml:XML):void
		{
			index = xml.@index;
			length = xml.@length;
			event = xml.@event;
			if(event.indexOf(",") == -1)
			{
				events = [event];
			}else
			{
				events = event.split(",");
			}
			useTween = String(xml.@tween)=="true";
			
			phantom.decode(xml);
			
			if(xml.element.length()>0)
			{
				element = new ElementData();
				element.decode(xml.element[0]);
			}
			if(xml.pointElement.length()>0)
			{
				element = new PointElementData();
				element.decode(xml.pointElement[0]);
			}
			
			sound = parseInt(xml.@sound);
			volume = parseInt(xml.@volume);
		}

		public function clone():FrameData
		{
			var fd:FrameData = new FrameData();
			fd.index = index;
			fd.length = length;
			fd.event = event;
			fd.useTween = useTween;
			fd.phantom = phantom.clone();
			if(element)
			{
				fd.element = element.clone();
			}
			
			fd.sound = sound;
			fd.volume = volume;
			return fd;
		}
	}
}