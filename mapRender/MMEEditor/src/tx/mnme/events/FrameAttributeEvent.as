package tx.mnme.events
{
	import com.tencent.morefun.naruto.tools.mmefile.timeline.PhantomData;
	import com.tencent.morefun.naruto.tools.mmefile.timeline.SoundData;
	
	import flash.events.Event;
	
	public class FrameAttributeEvent extends Event
	{
		public var event:String;
		public var useTween:Boolean;
		public var phantom:PhantomData = new PhantomData();
		public var sound:SoundData = new SoundData();

		public function FrameAttributeEvent(type:String)
		{
			super(type);
		}
	}
}