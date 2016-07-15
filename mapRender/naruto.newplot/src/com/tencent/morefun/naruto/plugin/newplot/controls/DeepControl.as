package com.tencent.morefun.naruto.plugin.newplot.controls
{
	import com.tencent.morefun.naruto.plugin.ui.util.TimerProvider;
	import com.tencent.morefun.naruto.util.def.TimerDef;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.geom.Point;
	
	import map.def.MapLayerDef;
	import map.element.IDIYDeepElementProvider;

	public class DeepControl
	{
		private var layers:Vector.<Sprite>;
		
		public function DeepControl(layers:Vector.<Sprite>)
		{
			this.layers = layers;
		}
		
		private function checkDeep():void
		{
			updateDeep(layers[MapLayerDef.BOTTOM_ELEMENT]);
			updateDeep(layers[MapLayerDef.MIDDLE_ELEMENT]);
			updateDeep(layers[MapLayerDef.FRONT_ELEMENT]);
		}
		
		private function updateDeep(layer:Sprite):void
		{
			var diyDeepList:Array;
			var normalDeepList:Array;
			var len:int = layer.numChildren;
			var i:int;
			var dobj:DisplayObject;
			
			diyDeepList = [];
			normalDeepList = [];
			for(i=0;i<len;i++)
			{
				dobj = layer.getChildAt(i);
				
				if(dobj is IDIYDeepElementProvider)
				{
					diyDeepList.push(dobj);
				}
				else
				{
					normalDeepList.push(dobj);
				}
			}
			
			var firstSortList:Array = [];
			var hitResultList:Array = [];
			var hitTest:Boolean;
			var middleItemInfo1:DisplayObject;
			var middleItemInfo2:DisplayObject;
			
			firstSortList = diyDeepList.concat();
			for(i = 0; i < normalDeepList.length;i ++)
			{
				middleItemInfo1 = normalDeepList[i];
				hitTest = false;
				for(var j:int = 0;j < diyDeepList.length;j ++)
				{
					middleItemInfo2 = diyDeepList[j];
					if(middleItemInfo1.getBounds(layer).intersects(middleItemInfo2.getBounds(layer)))
					{
						hitResultList.push({moveItem:middleItemInfo1, fixedItem:middleItemInfo2, moveY:middleItemInfo1.y, fixY:middleItemInfo2.y});
						hitTest = true;
					}
				}
				
				if(hitTest == false)
				{
					normalDeepList.splice(i, 1);
					firstSortList.push(middleItemInfo1);
					i --;
				}
			}
			
			firstSortList.sortOn(["y"], [Array.NUMERIC]);
			hitResultList.sortOn(["moveY"], [Array.NUMERIC]);
			
			var k:int;
			var middleItemIndex1:int;
			var middleItemIndex2:int;
			var compareResult:int;
			var hitResultObj:Object;
			for(k = 0;k <hitResultList.length;k ++)
			{
				hitResultObj = hitResultList[k];
				
				middleItemInfo1 = hitResultObj.moveItem;
				middleItemInfo2 = hitResultObj.fixedItem;
				
				middleItemIndex1 = firstSortList.indexOf(middleItemInfo1);
				if(middleItemIndex1 != -1)
				{
					firstSortList.splice(middleItemIndex1, 1);
				}
				
				middleItemIndex2 = firstSortList.indexOf(middleItemInfo2);
				compareResult = compareDeep(middleItemInfo1, middleItemInfo2 as IDIYDeepElementProvider);
				if(compareResult < 0)
				{
					firstSortList.splice(middleItemIndex2, 0, middleItemInfo1);
					
					hitResultList.splice(k, 1);
					k --;
				}
				
				
			}
			
			hitResultList.sortOn(["fixY", "moveY"], [Array.NUMERIC, Array.DESCENDING]);
			for(k = 0;k <hitResultList.length;k ++)
			{
				hitResultObj = hitResultList[k];
				
				middleItemInfo1 = hitResultObj.moveItem;
				middleItemInfo2 = hitResultObj.fixedItem;
				
				middleItemIndex1 = firstSortList.indexOf(middleItemInfo1);
				if(middleItemIndex1 != -1)
				{
					firstSortList.splice(middleItemIndex1, 1);
				}
				
				middleItemIndex2 = firstSortList.indexOf(middleItemInfo2);
				compareResult = compareDeep(middleItemInfo1, middleItemInfo2 as IDIYDeepElementProvider);
				if(compareResult >= 0)
				{
					firstSortList.splice(middleItemIndex2 + 1, 0, middleItemInfo1);
					
					hitResultList.splice(k, 1);
					k --;
				}
				
				
			}
			
			var middleItemInfo:DisplayObject;
			for(k = 0;k < firstSortList.length;k ++)
			{
				middleItemInfo = firstSortList[k];
				layer.setChildIndex(middleItemInfo, k)
			}
		}
		
		private var moveItemPoint:Point = new Point();
		private function compareDeep(moveItem:DisplayObject, fixedItem:IDIYDeepElementProvider):int
		{
			var groundPoints:Array;
			var fixedItemPoint:Point;
			var nearestPoint:Point;
			var nearestDistance:int;
			
			nearestPoint = new Point();
			
			nearestDistance = int.MAX_VALUE;
			groundPoints = fixedItem.diyDeepElement.deepPoints;
			moveItemPoint.x = moveItem.x;
			moveItemPoint.y = moveItem.y;
			nearestPoint.x = moveItem.x;
			nearestPoint.y = moveItem.y;
			for each(fixedItemPoint in groundPoints)
			{
				if(Point.distance(moveItemPoint,fixedItemPoint) < nearestDistance)
				{
					nearestPoint = fixedItemPoint;
					nearestDistance = Point.distance(moveItemPoint,fixedItemPoint)
				}
			}
			
			if(moveItemPoint.y < nearestPoint.y)
			{
				return -1;
			}
			else if(moveItemPoint.y == nearestPoint.y)
			{
				return 0
			}
			else
			{
				return 1;
			}
		}
		
		public function startup():void
		{
			TimerProvider.addTimeTask(TimerDef.HALF_SECOND,checkDeep);
		}
		
		public function dispose():void
		{
			TimerProvider.removeTimeTask(TimerDef.HALF_SECOND,checkDeep);
		}
		
		public function destroy():void
		{
			dispose();
			layers = null;
		}
	}
}