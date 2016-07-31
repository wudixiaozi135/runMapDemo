package com.map.astarEx
{
	import flash.geom.Point;

	/* Modified by S_eVent
	 添加对A*寻路路径平滑以及点击不可移动点后寻找终点替代点的支持方法
	 */
	public class NodeGrid
	{
		/** 地图路径区域与地图顶边缘的距离 */
		public var top:int;

		/** 地图路径区域与地图底边缘的距离 */
		public var bottom:int;

		/** 诞生点 */
		public var bornPos:Array;

		private var _startNode:ANode;
		private var _endNode:ANode;
		private var _nodes:Array;
		private var _numCols:int;
		private var _numRows:int;

		/**
		 * Constructor.
		 */
		public function NodeGrid(numCols:int, numRows:int)
		{
			setSize(numCols, numRows);
		}


		////////////////////////////////////////
		// public methods
		////////////////////////////////////////

		/** 设置网格尺寸 */
		public function setSize(numCols:int, numRows:int):void
		{
			_numCols = numCols;
			_numRows = numRows;
			_nodes = new Array();

			for (var i:int = 0; i < _numCols; i++)
			{
				_nodes[i] = new Array();
				for (var j:int = 0; j < _numRows; j++)
				{
					_nodes[i][j] = new ANode(i, j);
				}
			}
		}

		/**
		 * Returns the node at the given coords.
		 * @param x The x coord.
		 * @param y The y coord.
		 */
		public function getNode(x:int, y:int):ANode
		{
			return _nodes[x][y] as ANode;
		}

		/**
		 * Sets the node at the given coords as the end node.
		 * @param x The x coord.
		 * @param y The y coord.
		 */
		public function setEndNode(x:int, y:int):void
		{
			_endNode = _nodes[x][y] as ANode;
		}

		/**
		 * Sets the node at the given coords as the start node.
		 * @param x The x coord.
		 * @param y The y coord.
		 */
		public function setStartNode(x:int, y:int):void
		{
			_startNode = _nodes[x][y] as ANode;
		}

		/**
		 * Sets the node at the given coords as walkable or not.
		 * @param x The x coord.
		 * @param y The y coord.
		 */
		public function setWalkable(x:int, y:int, value:Boolean):void
		{
			_nodes[x][y].walkable = value;
		}


		/**
		 * 判断两节点之间是否存在障碍物
		 * @param point1
		 * @param point2
		 * @return
		 *
		 */
		public function hasBarrier(startX:int, startY:int, endX:int, endY:int):Boolean
		{
			//如果起点终点是同一个点那傻子都知道它们间是没有障碍物的
			if (startX == endX && startY == endY)return false;
			if (getNode(endX, endY).walkable == false)return true;

			//两节点中心位置
			var point1:Point = new Point(startX + 0.5, startY + 0.5);
			var point2:Point = new Point(endX + 0.5, endY + 0.5);

			var distX:Number = Math.abs(endX - startX);
			var distY:Number = Math.abs(endY - startY);

			/**遍历方向，为true则为横向遍历，否则为纵向遍历*/
			var loopDirection:Boolean = distX > distY ? true : false;

			/**起始点与终点的连线方程*/
			var lineFuction:Function;

			/** 循环递增量 */
			var i:Number;

			/** 循环起始值 */
			var loopStart:Number;

			/** 循环终结值 */
			var loopEnd:Number;

			/** 起终点连线所经过的节点 */
			var nodesPassed:Array = [];
			var elem:ANode;

			//为了运算方便，以下运算全部假设格子尺寸为1，格子坐标就等于它们的行、列号
			if (loopDirection)
			{
				lineFuction = FindPathUtil.getLineFunc(point1, point2, 0);

				loopStart = Math.min(startX, endX);
				loopEnd = Math.max(startX, endX);

				//开始横向遍历起点与终点间的节点看是否存在障碍(不可移动点) 
				for (i = loopStart; i <= loopEnd; i++)
				{
					//由于线段方程是根据终起点中心点连线算出的，所以对于起始点来说需要根据其中心点
					//位置来算，而对于其他点则根据左上角来算
					if (i == loopStart)i += .5;
					//根据x得到直线上的y值
					var yPos:Number = lineFuction(i);


					nodesPassed = getNodesUnderPoint(i, yPos);
					for each(elem in nodesPassed)
					{
						if (elem.walkable == false)return true;
					}


					if (i == loopStart + .5)i -= .5;
				}
			}
			else
			{
				lineFuction = FindPathUtil.getLineFunc(point1, point2, 1);

				loopStart = Math.min(startY, endY);
				loopEnd = Math.max(startY, endY);

				//开始纵向遍历起点与终点间的节点看是否存在障碍(不可移动点)
				for (i = loopStart; i <= loopEnd; i++)
				{
					if (i == loopStart)i += .5;
					//根据y得到直线上的x值
					var xPos:Number = lineFuction(i);

					nodesPassed = getNodesUnderPoint(xPos, i);
					for each(elem in nodesPassed)
					{
						if (elem.walkable == false)return true;
					}

					if (i == loopStart + .5)i -= .5;
				}
			}


			return false;
		}

		public function findRoundPoint(startX:int, startY:int, endX:int, endY:int, type:int = 1):Point
		{
			var point:Point = new Point();

			var candidate:Point = new Point();
			var flag:Boolean = false;

			var endNode:ANode;


			if (type == 1)//水平
			{
				if (startX < endX)
				{
					while (endY && endX)
					{
						if (endY % 2 == 0)
						{
							endX--;
						}
						endY--;
						endNode = _nodes[endX][endY];
						if (!endNode)
							return null;
						if (!endNode.walkable)//false
						{
							flag = true;
						} else//true
						{
							if (flag)
							{
								candidate.setTo(endNode.x, endNode.y);
								if (!hasBarrier(startX, startY, candidate.x, candidate.y))
								{
									point.setTo(candidate.x, candidate.y);
									return point;
								}
								flag = false;
							}
						}
					}
				} else
				{
					while (endY < numRows-1 && endX < numCols-1)
					{
						if (endY % 2 == 0)
						{
							endX++;
						}
						endY++;
						endNode = _nodes[endX][endY];
						if (!endNode)
							return null;
						if (!endNode.walkable)//false
						{
							flag = true;
						} else//true
						{
							if (flag)
							{
								candidate.setTo(endNode.x, endNode.y);
								if (!hasBarrier(startX, startY, candidate.x, candidate.y))
								{
									point.setTo(candidate.x, candidate.y);
									return point;
								}
								flag = false;
							}
						}
					}
				}

			} else
			{
				if (startY < endY)
				{
					while (endY && endX<numCols-1)
					{
						if (endY % 2 == 0)
						{
							endX++;
						}
						endY--;
						endNode = _nodes[endX][endY];
						if (!endNode)
							return null;
						if (!endNode.walkable)//false
						{
							flag = true;
						} else//true
						{
							if (flag)
							{
								candidate.setTo(endNode.x, endNode.y);
								if (!hasBarrier(startX, startY, candidate.x, candidate.y))
								{
									point.setTo(candidate.x, candidate.y);
									return point;
								}
								flag = false;
							}
						}
					}
				} else
				{
					while (endY < numRows-1 && endX )
					{
						if (endY % 2 == 0)
						{
							endX--;
						}
						endY++;
						endNode = _nodes[endX][endY];
						if (!endNode)
							return null;
						if (!endNode.walkable)//false
						{
							flag = true;
						} else//true
						{
							if (flag)
							{
								candidate.setTo(endNode.x, endNode.y);
								if (!hasBarrier(startX, startY, candidate.x, candidate.y))
								{
									point.setTo(candidate.x, candidate.y);
									return point;
								}
								flag = false;
							}
						}
					}
				}
			}

			return null;
		}

		/**
		 * 得到一个点下的所有节点
		 * @param xPos        点的横向位置
		 * @param yPos        点的纵向位置
		 * @param grid        所在网格
		 * @param exception    例外格，若其值不为空，则在得到一个点下的所有节点后会排除这些例外格
		 * @return            共享此点的所有节点
		 *
		 */
		public function getNodesUnderPoint(xPos:Number, yPos:Number, exception:Array = null):Array
		{
			var result:Array = [];
			var xIsInt:Boolean = xPos % 1 == 0;
			var yIsInt:Boolean = yPos % 1 == 0;

			//点由四节点共享情况
			if (xIsInt && yIsInt)
			{
				result[0] = getNode(xPos - 1, yPos - 1);
				result[1] = getNode(xPos, yPos - 1);
				result[2] = getNode(xPos - 1, yPos);
				result[3] = getNode(xPos, yPos);
			}
			//点由2节点共享情况
			//点落在两节点左右临边上
			else if (xIsInt && !yIsInt)
			{
				result[0] = getNode(xPos - 1, int(yPos));
				result[1] = getNode(xPos, int(yPos));
			}
			//点落在两节点上下临边上
			else if (!xIsInt && yIsInt)
			{
				result[0] = getNode(int(xPos), yPos - 1);
				result[1] = getNode(int(xPos), yPos);
			}
			//点由一节点独享情况
			else
			{
				result[0] = getNode(int(xPos), int(yPos));
			}

			//在返回结果前检查结果中是否包含例外点，若包含则排除掉
			if (exception && exception.length > 0)
			{
				for (var i:int = 0; i < result.length; i++)
				{
					if (exception.indexOf(result[i]) != -1)
					{
						result.splice(i, 1);
						i--;
					}
				}
			}

			return result;
		}


		/**当终点不可移动时寻找一个离原终点最近的可移动点来替代之 */
		public function findReplacer(fromNode:ANode, toNode:ANode):ANode
		{
			var result:ANode;
			//若终点可移动则根本无需寻找替代点
			if (toNode.walkable)
			{
				result = toNode;
			}
			//否则遍历终点周围节点以寻找离起始点最近一个可移动点作为替代点
			else
			{
				//根据节点的埋葬深度选择遍历的圈
				//若该节点是第一次遍历，则计算其埋葬深度
				if (toNode.buriedDepth == -1)
				{
					toNode.buriedDepth = getNodeBuriedDepth(toNode, Math.max(_numCols, _numRows));
				}
				var xFrom:int = toNode.x - toNode.buriedDepth < 0 ? 0 : toNode.x - toNode.buriedDepth;
				var xTo:int = toNode.x + toNode.buriedDepth > numCols - 1 ? numCols - 1 : toNode.x + toNode.buriedDepth;
				var yFrom:int = toNode.y - toNode.buriedDepth < 0 ? 0 : toNode.y - toNode.buriedDepth;
				var yTo:int = toNode.y + toNode.buriedDepth > numRows - 1 ? numRows - 1 : toNode.y + toNode.buriedDepth;

				var n:ANode;//当前遍历节点

				for (var i:int = xFrom; i <= xTo; i++)
				{
					for (var j:int = yFrom; j <= yTo; j++)
					{
						if ((i > xFrom && i < xTo) && (j > yFrom && j < yTo))
						{
							continue;
						}
						n = getNode(i, j);
						if (n.walkable)
						{
							//计算此候选节点到起点的距离，记录离起点最近的候选点为替代点
							n.getDistanceTo(fromNode);

							if (!result)
							{
								result = n;
							}
							else if (n.distance < result.distance)
							{
								result = n;
							}
						}
					}
				}

			}
			return result;
		}


		/** 计算全部路径点的埋葬深度 */
		public function calculateBuriedDepth():void
		{
			var node:ANode;
			for (var i:int = 0; i < _numCols; i++)
			{
				for (var j:int = 0; j < _numRows; j++)
				{
					node = _nodes[i][j];
					if (node.walkable)
					{
						node.buriedDepth = 0;
					}
					else
					{
						node.buriedDepth = getNodeBuriedDepth(node, Math.max(_numCols, _numRows));
					}
				}
			}
		}


		/** 计算一个节点的埋葬深度
		 * @param node        欲计算深度的节点
		 * @param loopCount    计算深度时遍历此节点外围圈数。默认值为10*/
		private function getNodeBuriedDepth(node:ANode, loopCount:int = 10):int
		{
			//如果检测节点本身是不可移动的则默认它的深度为1
			var result:int = node.walkable ? 0 : 1;
			var l:int = 1;

			while (l <= loopCount)
			{
				var startX:int = node.x - l < 0 ? 0 : node.x - l;
				var endX:int = node.x + l > numCols - 1 ? numCols - 1 : node.x + l;
				var startY:int = node.y - l < 0 ? 0 : node.y - l;
				var endY:int = node.y + l > numRows - 1 ? numRows - 1 : node.y + l;

				var n:ANode;
				//遍历一个节点周围一圈看是否周围一圈全部是不可移动点，若是，则深度加一，
				//否则返回当前累积的深度值
				for (var i:int = startX; i <= endX; i++)
				{
					for (var j:int = startY; j <= endY; j++)
					{
						n = getNode(i, j);
						if (n != node && n.walkable)
						{
							return result;
						}
					}
				}

				//遍历完一圈，没发现一个可移动点，则埋葬深度加一。接着遍历下一圈
				result++;
				l++;
			}
			return result;
		}


		/**
		 * 将两个数组合体，元素不重复
		 * @return
		 *
		 */
		private function concatArrys(array1:Array, array2:Array):Array
		{
			var index:int;
			for (var i:int = 0; i < array2.length; i++)
			{
				index = array1.indexOf(array2[i]);
				if (index == -1)
				{
					array1.push(array2[i]);
				}
			}
			return array1;
		}

		////////////////////////////////////////
		// getters / setters
		////////////////////////////////////////

		/**
		 * Returns the end node.
		 */
		public function get endNode():ANode
		{
			return _endNode;
		}

		/**
		 * Returns the number of columns in the grid.
		 */
		public function get numCols():int
		{
			return _numCols;
		}

		/**
		 * Returns the number of rows in the grid.
		 */
		public function get numRows():int
		{
			return _numRows;
		}

		/**
		 * Returns the start node.
		 */
		public function get startNode():ANode
		{
			return _startNode;
		}

	}
}