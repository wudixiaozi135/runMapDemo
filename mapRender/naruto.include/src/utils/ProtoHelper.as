package utils 
{
	import bag.data.ItemData;
	import bag.utils.BagUtils;
	import serverProto.inc.ProtoItemInfo;
	/**
	 * ...
	 * @author Devin Lee
	 */
	public class ProtoHelper 
	{
		
		public static function parseProtoItemInfos(rewards:Array):Vector.<ItemData> {
			if (rewards == null)
                return null;

            var arr:Vector.<ItemData> = new Vector.<ItemData>;

            var l:int = rewards.length;
            for (var i:int=0; i<l; ++i)
            {
                var protoItem:ProtoItemInfo = rewards[i] as ProtoItemInfo;
                var data:ItemData = BagUtils.createItemData(protoItem.id, protoItem.num);

                arr.push(data);
            }

            return arr;
		}
		
	}

}