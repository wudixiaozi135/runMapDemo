package com.tencent.morefun.naruto.plugin.world.base
{
	import flash.utils.Dictionary;

	public class CrossSceneFinder
	{
		static private var inited:Boolean;
		static private var sceneLinkArrDic:Dictionary;
		
		public function CrossSceneFinder()
		{
			
		}
		
		static public function findCrossScenePath(startSceneId:int, endSceneId:int):Array
		{
			return breadthFirstSearch(startSceneId, endSceneId);
		}
		
		static private function breadthFirstSearch(start:int, end:int):Array
		{
			var queue:Array;
			var preSceneIndex:Array;
			var headIndex:int;
			
			if (start == end) 
			{
				return [];
			}
			
			queue = [start];
			preSceneIndex = [-1];
			headIndex = 0;
			
			while (headIndex < queue.length)
			{
				for each (var linkedScene:int in getSceneLinkArr(queue[headIndex]))
				{
					if (queue.indexOf(linkedScene) == -1)
					{
						queue.push(linkedScene);
						preSceneIndex.push(headIndex);
						if (linkedScene == end)
						{
							return generateCrossScenePath(queue, preSceneIndex, start);
						}
					}
				}
				headIndex++;
			}
			
			return null;
		}
		
		static private function generateCrossScenePath(queue:Array, preSceneIndex:Array, start:int):Array
		{
			var currentIndex:int = preSceneIndex.length -1;
			var result:Array = [];
			
			while (queue[currentIndex] != start)
			{
				result.unshift(queue[currentIndex]);
				currentIndex = preSceneIndex[currentIndex];
			}
			
			return result;
		}
		
		static public function init(xml:XML):void
		{
			var sceneLinkArr:Array;
			
			for each (var portalXml:XML in xml.PortalDefine)
			{
				sceneLinkArr = getSceneLinkArr(int(portalXml.@scene_id));
				if (sceneLinkArr.indexOf(int(portalXml.@destination_scene_id)) == -1)
				{
					sceneLinkArr.push(int(portalXml.@destination_scene_id));
				}
			}
			
		}
		
		static private function getSceneLinkArr(sceneId:int):Array
		{
			sceneLinkArrDic ||= new Dictionary();
			(sceneLinkArrDic[sceneId] == null) && (sceneLinkArrDic[sceneId] = new Array());
			
			return sceneLinkArrDic[sceneId];
		}
	}
}