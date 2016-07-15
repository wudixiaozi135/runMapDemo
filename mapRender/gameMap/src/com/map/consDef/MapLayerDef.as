package com.map.consDef
{
	public class MapLayerDef
	{
		public static const POPUP:int = 5;			//地图上弹出层
		public static const FRONT_MAP:int = 4;		//地图上前层，仅次于弹出层，加载地图马赛克就位于其上
		public static const FRONT_ELEMENT:int = 3;	//地图前元素层
		public static const MIDDLE_ELEMENT:int = 2;	//地图寻路的时鼠标点击时的寻路标志就位于其上
		public static const BOTTOM_ELEMENT:int = 1;	//地图元素层
		public static const BOTTOM_MAP:int = 0;		//地图MapTitle层
		public static const COUNT:int = 6;			//地图总层数
	}
}