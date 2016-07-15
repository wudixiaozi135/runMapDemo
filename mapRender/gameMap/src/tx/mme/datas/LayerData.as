package tx.mme.datas
{
	import flash.utils.Dictionary;

	public class LayerData
	{
		public static const ClassAlias:String = "LayerData";
		
		public var id:int;
//		public var name:String;
		public var frameDatas:Vector.<FrameData>;
//		public var frameDatas2:Dictionary;
		
		public function LayerData()
		{
		}
		
		public function decode(xml:XML):void
		{
			id = xml.@id;
//			name = xml.@name;
			frameDatas = new Vector.<FrameData>;
//			frameDatas2 = new Dictionary();
			for each(var frameXML:XML in xml.frame)
			{
				var frame:FrameData = new FrameData();
				frame.decode(frameXML);
				
				frameDatas.push(frame);
//				frameDatas[frame.index] = frame;
//				for(var i:int=frame.index;i<frame.index+frame.length;i++)
//				{
//					frameDatas2[i] = frame;
//				}
			}
		}
	}
}