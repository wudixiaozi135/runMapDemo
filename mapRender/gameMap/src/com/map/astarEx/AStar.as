﻿package com.map.astarEx
{
	import com.map.data.MapData;
	import com.map.utils.MapGridUtil;

	import flash.geom.Point;

	public class AStar
	{
		private var _open:Binary;
		private var _closed:Vector.<ANode>;
		private var _grid:NodeGrid;
		private var _endNode:ANode;
		private var _startNode:ANode;
		private var _path:Vector.<ANode>;
		private var _heuristic:Function = diagonal;
		private var _straightCost:Number = 1.0;
		private var _diagCost:Number = Math.SQRT2;
		private var _floydPath:Vector.<ANode>;
		private var mapData:MapData;

		public function AStar()
		{
		}

		public function findPath(grid:NodeGrid):Boolean
		{
			_grid = grid;
			_open = new Binary("f");
			_closed = new Vector.<ANode>();

			_startNode = _grid.startNode;
			_endNode = _grid.endNode;

			_startNode.g = 0;
			_startNode.h = _heuristic(_startNode);
			_startNode.f = _startNode.g + _startNode.h;

			return search();
		}

		public function search():Boolean
		{
			//异步运算。当上一次遍历超出最大允许值后停止遍历，下一次从
			//上次暂停处开始继续遍历
			var node:ANode = _startNode;

			while (node != _endNode)
			{
				var startX:int = 0 > node.x - 1 ? 0 : node.x - 1;
				var endX:int = _grid.numCols - 1 < node.x + 1 ? _grid.numCols - 1 : node.x + 1;
				var startY:int = 0 > node.y - 1 ? 0 : node.y - 1;
				var endY:int = _grid.numRows - 1 < node.y + 1 ? _grid.numRows - 1 : node.y + 1;

				for (var i:int = startX; i <= endX; i++)
				{
					for (var j:int = startY; j <= endY; j++)
					{
						var test:ANode = _grid.getNode(i, j);
						if (test == node || !test.walkable || !isDiagonalWalkable(node, test))
						{
							continue;
						}

						var cost:Number = _straightCost;

						if (!((node.x == test.x) || (node.y == test.y)))
						{
							cost = _diagCost;
						}

						var g:Number = node.g + cost * test.costMultiplier;
						var h:Number = _heuristic(test);
						var f:Number = g + h;
						var isInOpen:Boolean = _open.indexOf(test) != -1;
						if (isInOpen || _closed.indexOf(test) != -1)
						{
							if (test.f > f)
							{
								test.f = f;
								test.g = g;
								test.h = h;
								test.parent = node;
								if (isInOpen)
									_open.updateNode(test);
							}
						}
						else
						{
							test.f = f;
							test.g = g;
							test.h = h;
							test.parent = node;
							_open.push(test);
						}

					}
				}
				_closed.push(node);
				if (_open.length == 0)
				{
					return false
				}
				node = _open.shift() as ANode;
			}
			return true;
		}

		/** 弗洛伊德路径平滑处理
		 form http://wonderfl.net/c/aWCe*/
		public function floyd():void
		{
			if (path == null)
				return;
			_floydPath = path.concat();
			var len:int = _floydPath.length;
			if (len > 2)
			{
				var vector:ANode = new ANode(0, 0);
				var tempVector:ANode = new ANode(0, 0);
				//遍历路径数组中全部路径节点，合并在同一直线上的路径节点
				//假设有1,2,3,三点，若2与1的横、纵坐标差值分别与3与2的横、纵坐标差值相等则
				//判断此三点共线，此时可以删除中间点2
				floydVector(vector, _floydPath[len - 1], _floydPath[len - 2]);
				for (var i:int = _floydPath.length - 3; i >= 0; i--)
				{
					floydVector(tempVector, _floydPath[i + 1], _floydPath[i]);
					if (vector.x == tempVector.x && vector.y == tempVector.y)
					{
						_floydPath.splice(i + 1, 1);
					}
					else
					{
						vector.x = tempVector.x;
						vector.y = tempVector.y;
					}
				}
			}
			//合并共线节点后进行第二步，消除拐点操作。算法流程如下：
			//如果一个路径由1-10十个节点组成，那么由节点10从1开始检查
			//节点间是否存在障碍物，若它们之间不存在障碍物，则直接合并
			//此两路径节点间所有节点。
			len = _floydPath.length;
			for (i = len - 1; i >= 0; i--)
			{
				for (var j:int = 0; j <= i - 2; j++)
				{
					if (_grid.hasBarrier(_floydPath[i].x, _floydPath[i].y, _floydPath[j].x, _floydPath[j].y) == false)
					{
						for (var k:int = i - 1; k > j; k--)
						{
							_floydPath.splice(k, 1);
						}
						i = j;
						len = _floydPath.length;
						break;
					}
				}
			}
		}

		private function buildPath():void
		{
			_path = new Vector.<ANode>();
			var node:ANode = _endNode;
			_path.push(node);

			while (node != _startNode)
			{
				node = node.parent;
				_path.unshift(node);
			}
		}

		private function floydVector(target:ANode, n1:ANode, n2:ANode):void
		{
			target.x = n1.x - n2.x;
			target.y = n1.y - n2.y;
		}

		/** 判断两个节点的对角线路线是否可走 */
		private function isDiagonalWalkable(node1:ANode, node2:ANode):Boolean
		{
			var nearByNode1:ANode = _grid.getNode(node1.x, node2.y);
			var nearByNode2:ANode = _grid.getNode(node2.x, node1.y);

			if (nearByNode1.walkable && nearByNode2.walkable)return true;
			return false;
		}

		private function manhattan(node:ANode):Number
		{
			return Math.abs(node.x - _endNode.x) * _straightCost + Math.abs(node.y + _endNode.y) * _straightCost;
		}

		private function euclidian(node:ANode):Number
		{
			var dx:Number = node.x - _endNode.x;
			var dy:Number = node.y - _endNode.y;
			return Math.sqrt(dx * dx + dy * dy) * _straightCost;
		}

		private function diagonal(node:ANode):Number
		{
			var dx:Number = node.x - _endNode.x < 0 ? _endNode.x - node.x : node.x - _endNode.x;
			var dy:Number = node.y - _endNode.y < 0 ? _endNode.y - node.y : node.y - _endNode.y;
			var diag:Number = dx < dy ? dx : dy;
			var straight:Number = dx + dy;
			return _diagCost * diag + _straightCost * (straight - 2 * diag);
		}

		public function get path():Vector.<ANode>
		{
			return _path;
		}

		public function get floydPath():Vector.<ANode>
		{
			return _floydPath;
		}

		/***
		 *寻路，并返回路径数组
		 * @param beginPoint 开始点像素
		 * @param endPoint 终点像素
		 * @return 路径数组
		 */
		public function findByPixcel(beginPoint:Point, endPoint:Point):Array
		{
			var startTile:Point = MapGridUtil.getTilePoint(mapData.tilePixelWidth, mapData.tilePixelHeight, mapData.mapPixelWidth, beginPoint.x, beginPoint.y);
			var endTile:Point = MapGridUtil.getTilePoint(mapData.tilePixelWidth, mapData.tilePixelHeight, mapData.mapPixelWidth, endPoint.x, endPoint.y);

			var startNode:ANode = _grid.getNode(startTile.x, startTile.y);
			var endNode:ANode = _grid.getNode(endTile.x, endTile.y);

			if (endNode && endNode.walkable == false)
			{
				var replacer:ANode = _grid.findReplacer(startNode, endNode);
				if (replacer)
				{
					endNode = replacer;
				}
			}
			_grid.setStartNode(startNode.x, startNode.y);
			_grid.setEndNode(endNode.x, endNode.y);

			if (findPath(_grid))
			{
				return optimizePath();
			} else
			{
				if (_closed && _closed.length > 0)
				{
					var currNode:ANode = findNearPoint(_closed, endNode.x, endNode.y);
					if (!currNode)
					{
						return null;
					}
					_closed.length = 0;
					_endNode = currNode;
					return optimizePath();
				}
			}
			return null;
		}

		private function optimizePath():Array
		{
			//生成路径
			buildPath();

			//得到平滑路径
			floyd();
			//在路径中去掉起点节点，避免玩家对象走回头路
			floydPath.shift();
			var data:Vector.<ANode> = floydPath;
			var paths:Array = [];

			data.forEach(function (element:ANode, index:int, arr:Vector.<ANode>):void
			{
				paths.push(MapGridUtil.getPixelPoint(mapData.tilePixelWidth, mapData.tilePixelHeight, mapData.mapPixelWidth, element.x, element.y));
			});
			return paths;
		}

		private function findNearPoint(list:Vector.<ANode>, x:int, y:int):ANode
		{
			var result:ANode = null;
			var minDistance:int = int.MAX_VALUE;

			for each (var node:ANode in list)
			{
				var dist:int = Math.sqrt(Math.abs(node.x - x) * Math.abs(node.x - x) + Math.abs(node.y - y) * Math.abs(node.y - y));

				if (dist < minDistance)
				{
					minDistance = dist;
					result = node;
				}
			}
			return result;
		}

		/**
		 * A* 设置地图数据
		 * @param mapData
		 */
		public function setMapData(mapData:MapData):void
		{
			this.mapData = mapData;
			_grid = new NodeGrid(this.mapData.mapTileWidth, this.mapData.mapTileHeight);

			var x:int = 0;
			var y:int = 0;
			var walkable:Boolean;
			for (y = 0; y < this.mapData.mapTileHeight; y++)
			{
				for (x = 0; x < this.mapData.mapTileWidth; x++)
				{
					walkable = this.mapData.walkableArray[x][y];
					_grid.setWalkable(x, y, walkable);
				}
			}
		}
	}
}
