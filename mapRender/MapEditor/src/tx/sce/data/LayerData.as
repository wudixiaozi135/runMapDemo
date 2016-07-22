package tx.sce.data
{
	public class LayerData
	{
		public const layersInfo:Array = [{name:"BackGround",label:"背景层",priority:0},
			                             {name:"MiddleGround",label:"中间层",priority:1},
										 {name:"FrontGround",label:"前景层",priority:2},
										 {name:"GridLayer",label:"网格层",priority:3},
										 {name:"NPCLayer",label:"NPC层",priority:4}];
		public var layersArr:Array;
		public var currentLayer:String;
		public var canvasWidth:int;
		public var canvasHeight:int;
		public var id:String;
		public var gridWidth:int;
		public var gridHeight:int;
		public var gridRows:int;
		public var gridColumns:int;
		public var layersXml:XML;
		
		public function LayerData(width:int, height:int, id:String, gridWidth:int, gridHeight:int)
		{
			layersArr = new Array();
			layersXml = <layers canSee="true" locked="false"/>; //enabled属性是给tree renderer 的checkBox用的
			canvasWidth = width;
			canvasHeight = height;
			this.id = id;
			this.gridWidth = gridWidth;
			this.gridHeight = gridHeight;
			gridRows = canvasHeight / gridHeight;
			if (canvasHeight % gridHeight > 0) 
			{
				gridRows++;
			}
			gridRows = gridRows*2-1; //本来是奇数层，现在加上偶数层，偶数层的数目是奇数层的数目-1.
			gridColumns = canvasWidth / gridWidth;
			if (canvasWidth % gridWidth > 0) 
			{
				gridColumns++;
			}
			for each (var info:Object in layersInfo)
			{
				layersArr[info.name] = new Array();
				layersXml.appendChild(<layer name={info.name} label={info.label} priority={info.priority} canSee="true" locked="false" isBranch="true"/>);
			}
		}
		
	}
}