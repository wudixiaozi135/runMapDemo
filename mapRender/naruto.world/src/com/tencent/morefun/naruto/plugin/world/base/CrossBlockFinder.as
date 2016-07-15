package com.tencent.morefun.naruto.plugin.world.base
{
	import flash.geom.Point;
	import flash.utils.Dictionary;
	
	import base.ApplicationData;
	
	import map.commands.GetPixelBlockCommand;
	
	import npc.cfgs.BaseNpcCfg;
	import npc.cfgs.PortalNpcCfg;
	import npc.cfgs.RopeNpcCfg;

	/**
	 * @author woodychen
	 * @createTime 2014-5-25 下午7:51:15
	 **/
	public class CrossBlockFinder
	{
		static private var blockLinkArrDic:Dictionary;
		
		public function CrossBlockFinder()
		{
		}
		
		static public function findCrossBlockNpcs(portalCfgList:Vector.<BaseNpcCfg>, ropeCfgList:Vector.<BaseNpcCfg>, startBlockId:int, endBlockId:int):Array
		{
			init(portalCfgList, ropeCfgList);
			return breadthFirstSearch(startBlockId, endBlockId);
		}
		
		static private function breadthFirstSearch(start:int, end:int):Array
		{
			var queue:Array;
			var preBlockIndex:Array;
			var headIndex:int;
			
			if (start == end) 
			{
				return [];
			}
			
			queue = [start];
			preBlockIndex = [-1];
			headIndex = 0;
			
			while (headIndex < queue.length)
			{
				for each (var linkedBlock:int in getBlockLinkArr(queue[headIndex]))
				{
					if (queue.indexOf(linkedBlock) == -1)
					{
						queue.push(linkedBlock);
						preBlockIndex.push(headIndex);
						if (linkedBlock == end)
						{
							return generateCrossBlockPath(queue, preBlockIndex, start);
						}
					}
				}
				headIndex++;
			}
			
			return null;
		}
		
		static private function generateCrossBlockPath(queue:Array, preBlockIndex:Array, start:int):Array
		{
			var currentIndex:int = preBlockIndex.length -1;
			var result:Array = [];
			
			while (queue[currentIndex] != start)
			{
				result.unshift(queue[currentIndex]);
				currentIndex = preBlockIndex[currentIndex];
			}
			
			return result;
		}
		
		static public function init(portalCfgList:Vector.<BaseNpcCfg>, ropeCfgList:Vector.<BaseNpcCfg>):void
		{
			var blockLinkArr:Array;
			var blockOne:int;
			var blockTwo:int;
			var targetPoint:Point;
			
			blockLinkArrDic = null;
			
			targetPoint = new Point();
			for each (var portalCfg:PortalNpcCfg in portalCfgList)
			{
				if (portalCfg.toSceneId == ApplicationData.singleton.globelInfo.sceneId)
				{
					targetPoint.setTo(portalCfg.targerX, portalCfg.targerY);
					blockOne = getPointBlockId(portalCfg.seekPoint);
					blockTwo = getPointBlockId(targetPoint);
					if (blockOne != -1 && blockTwo != -1 && blockOne != blockTwo)
					{
						blockLinkArr = getBlockLinkArr(blockOne);
						if (blockLinkArr.indexOf(blockTwo) == -1)
						{
							blockLinkArr.push(blockTwo);
						}
					}
				}
			}
			
			for each (var ropeCfg:RopeNpcCfg in ropeCfgList)
			{
				blockOne = getPointBlockId(ropeCfg.pointOne);
				blockTwo = getPointBlockId(ropeCfg.pointTwo);
				
				if (blockOne != -1 && blockTwo != -1 && blockOne != blockTwo)
				{
					blockLinkArr = getBlockLinkArr(blockOne);
					if (blockLinkArr.indexOf(blockTwo) == -1)
					{
						blockLinkArr.push(blockTwo);
					}
					
					blockLinkArr = getBlockLinkArr(blockTwo);
					if (blockLinkArr.indexOf(blockOne) == -1)
					{
						blockLinkArr.push(blockOne);
					}
				}
			}
		}
		
		static private function getPointBlockId(point:Point):int
		{
			var getPixelBlockCmd:GetPixelBlockCommand;
			
			getPixelBlockCmd = new GetPixelBlockCommand(point);
			getPixelBlockCmd.call();
			return getPixelBlockCmd.block;
		}
		
		static private function getBlockLinkArr(blockId:int):Array
		{
			blockLinkArrDic ||= new Dictionary();
			(blockLinkArrDic[blockId] == null) && (blockLinkArrDic[blockId] = new Array());
			
			return blockLinkArrDic[blockId];
		}
	}
}