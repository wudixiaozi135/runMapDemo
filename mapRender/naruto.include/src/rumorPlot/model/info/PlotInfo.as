package rumorPlot.model.info
{


/**
 * 
 * @author rockyChen
 */
public class PlotInfo
{
	public var plotID:uint;
	public var plotName:String;
	public var rootNodeArr:Array = [];
	public var scriptNodeVect:Vector.<ScriptNodeInfo>;
	
	public function decode(xml:XML):void
	{
		plotID = xml.@id;
		plotName = xml.@name;
		var rootNode:String = xml.@rootNode;
		if (rootNode && rootNode.length)
		{
			rootNodeArr = rootNode.split(",");
		}
		
		var nodeXmlList:XMLList = xml.ScriptNode;
		var len:int = nodeXmlList.length();
		var scriptNodeInfo:ScriptNodeInfo;
		scriptNodeVect = new Vector.<ScriptNodeInfo>();
		for (var i:int = 0; i < len; i++)
		{
			scriptNodeInfo = new ScriptNodeInfo();
			scriptNodeInfo.decode(nodeXmlList[i]);
			scriptNodeVect.push(scriptNodeInfo);
		}
	}
	
	public function encode():XML
	{
		var resultXml:XML = <PlotInfo />;
		plotID && (resultXml.@id = plotID);
		plotName && (resultXml.@name = plotName);
		rootNodeArr.length && (resultXml.@rootNode = rootNodeArr.join(","));
		
		var len:int = scriptNodeVect ? scriptNodeVect.length : 0;
		for (var i:int = 0; i < len; i++)
		{
			resultXml.appendChild(scriptNodeVect[i].encode());
		}
		return resultXml;
	}
	
	public function updateRootNode():void
	{
		var nodeIDArr:Array = [];
		var nextNodeIDArr:Array = [];
		for each(var scriptNodeInfo:ScriptNodeInfo in scriptNodeVect)
		{
			nodeIDArr.push(scriptNodeInfo.nodeID);
			nextNodeIDArr = nextNodeIDArr.concat(scriptNodeInfo.getNextNodeArr());
		}
		var len:int = nodeIDArr.length;
		for (var i:int = len - 1; i >= 0; i--)
		{
			if (nextNodeIDArr.indexOf(nodeIDArr[i]) != -1)
			{
				nodeIDArr.splice(i, 1);
			}
		}
		rootNodeArr = nodeIDArr;
	}
	
	public function addScriptNodeInfo(scriptNodeInfo:ScriptNodeInfo):void
	{
		if (!scriptNodeVect)
		{
			scriptNodeVect = new Vector.<ScriptNodeInfo>();
		}
		scriptNodeVect.push(scriptNodeInfo);
	}
	
	public function removeScriptNodeInfo(nodeID:int):void
	{
		var len:int = scriptNodeVect ? scriptNodeVect.length : 0;
		for (var i:int = len - 1; i >= 0; i--)
		{
			if (nodeID === scriptNodeVect[i].nodeID)
			{
				scriptNodeVect.splice(i, 1);
				break;
			}
		}
		
		for each (var scriptNodeInfo:ScriptNodeInfo in scriptNodeVect)
		{
			scriptNodeInfo.removeDelNodeID(nodeID);
			scriptNodeInfo.removeConditonGroupByNodeID(nodeID);
		}
	}
}
}