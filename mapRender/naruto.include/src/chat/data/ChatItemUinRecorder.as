package chat.data
{
	import com.tencent.morefun.framework.net.pub;
	
	import flash.utils.Dictionary;

	/**
	 * @author woodychen
	 * @createTime 2015-4-14 下午5:00:53
	 **/
	public class ChatItemUinRecorder
	{
		static private var uinToIdDic:Dictionary = new Dictionary();
		static private var idToUinDic:Dictionary = new Dictionary();
		static private var count:int = 0;
		
		public function ChatItemUinRecorder()
		{
		}
		
		static public function fromUinToId(uin:uint):uint
		{
			if (uinToIdDic[uin])
			{
				return uinToIdDic[uin];
			}
			
			count++;
			uinToIdDic[uin] = count;
			idToUinDic[count] = uin;
			
			return count;
		}
		
		static public function fromIdToUin(id:uint):uint
		{
			return idToUinDic[id];
		}
		
		/*不能根据chatItem被移除出聊天栏就删除uin和Id的对应，因为同一个uin可能有多个chatItem，所以现在的做法是这个Dic只增不减*/
/*		static public function deleteRecordByRelatedObject(relatedObject:Object):void
		{
			var uin:int;
			var id:int;
			
			if (relatedObjectDic[relatedObject])
			{
				uin = relatedObjectDic[relatedObject];
				id = uinToIdDic[uin];
				delete relatedObjectDic[relatedObject];
				delete uinToIdDic[uin];
				delete idToUinDic[id];
			}
		}*/
	}
}