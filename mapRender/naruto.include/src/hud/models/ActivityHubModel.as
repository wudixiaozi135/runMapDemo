package hud.models
{
	import com.tencent.morefun.naruto.model.BaseModel;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	
	import def.ModelDef;
	
	import hud.data.ActivityHubConfig;
	import hud.data.ActivityHubLiteItemData;
	
	public class ActivityHubModel extends BaseModel
	{
		public static const KEY_DATA:String = "keyData";
		public static const KEY_CURR_ITEM_INFO:String = "keyCurrItemInfo";
		
		public var liteItemDatas:Vector.<ActivityHubLiteItemData> = new Vector.<ActivityHubLiteItemData>;
//		public var itemDatas:Vector.<ActivityHubItemData> = new Vector.<ActivityHubItemData>;
		
		public var currItemId:int = -2;
		public var currItemDesc:String = "";
		public var currItemEnabled:Boolean = false;
		
		public function ActivityHubModel()
		{
			super(ModelDef.ACTIVITY_HUB);
		}
		
		public function setLiteItemDatas(datas:Vector.<ActivityHubLiteItemData>):void
		{
			liteItemDatas = datas;
			liteItemDatas.sort(sortFun);
			dispModelEvent(ModelEvent.UPDATE,KEY_DATA);
		}
		
		public function setLiteItemData(id:int, data:ActivityHubLiteItemData):void
		{
			removeLiteItemData(id, false);
			liteItemDatas.push(data);
			liteItemDatas.sort(sortFun);
			dispModelEvent(ModelEvent.UPDATE, KEY_DATA);
		}
		
		private function sortFun(a:ActivityHubLiteItemData, b:ActivityHubLiteItemData):int
		{
			return ActivityHubConfig.instance.getLiteCfg(a.id).sort - ActivityHubConfig.instance.getLiteCfg(b.id).sort;
		}
		
		public function removeLiteItemData(id:int, dispatch:Boolean):void
		{
			var b:Boolean = false;
			for(var i:int = liteItemDatas.length-1;i>=0;i--)
			{
				if(liteItemDatas[i].id == id)
				{
					liteItemDatas.splice(i,1);
					b = true;
				}
			}
			
			if(b && dispatch)
			{
				dispModelEvent(ModelEvent.UPDATE, KEY_DATA);
			}
		}
		
		public function setCurrItemInfo(itemId:int, itemDesc:String, enabled:Boolean):void
		{
			currItemId = itemId;
			currItemDesc = itemDesc;
			currItemEnabled = enabled;
			dispModelEvent(ModelEvent.UPDATE, KEY_CURR_ITEM_INFO);
		}
	}
}