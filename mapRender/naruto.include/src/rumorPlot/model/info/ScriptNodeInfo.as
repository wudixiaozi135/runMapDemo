package rumorPlot.model.info
{
	import rumorPlot.model.RumorModel;


/**
 * 
 * @author rockyChen
 */
public class ScriptNodeInfo
{
	public var nodeID:int;
	public var nodeX:int;
	public var nodeY:int;
	public var nodeName:String;
	public var delNodeIDArr:Array = [];
	public var scriptInfoVect:Vector.<ScriptInfo>;
	public var conditionGroupVect:Vector.<ConditionGroupInfo>;
	
	public function decode(xml:XML):void
	{
		nodeID = xml.@id;
		nodeX = xml.@nodeX;
		nodeY = xml.@nodeY;
		nodeName = xml.@name;
		var delNode:String = xml.@delNode;
		if (delNode && delNode.length)
		{
			delNodeIDArr = delNode.split(",");
		}
		
		scriptInfoVect = new Vector.<ScriptInfo>();
		var scriptXmlList:XMLList = xml.ScriptInfo;
		var len:int = scriptXmlList.length();
		var scriptInfo:ScriptInfo;
		for (var i:int = 0; i < len; i++)
		{
			scriptInfo = new ScriptInfo();
			scriptInfo.decode(scriptXmlList[i]);
			//更新脚本详细信息
			RumorModel.instance.scriptInfosConfig.updateScriptInfo(scriptInfo);
			scriptInfoVect.push(scriptInfo);
		}
		
		conditionGroupVect = new Vector.<ConditionGroupInfo>();
		var conditionXmlList:XMLList = xml.ConditionGroup;
		len = conditionXmlList.length();
		var conditionGroup:ConditionGroupInfo;
		for (i = 0; i < len; i++)
		{
			conditionGroup = new ConditionGroupInfo();
			conditionGroup.decode(conditionXmlList[i]);
			conditionGroupVect.push(conditionGroup);
		}
	}
	
	public function encode():XML
	{
		var resultXml:XML = <ScriptNode />;
		nodeID && (resultXml.@id = nodeID);
		nodeName && (resultXml.@name = nodeName);
		nodeX && (resultXml.@nodeX = nodeX);
		nodeY && (resultXml.@nodeY = nodeY);
		delNodeIDArr.length && (resultXml.@delNode = delNodeIDArr.join(","));
		
		var len:int = scriptInfoVect ? scriptInfoVect.length : 0;
		for (var i:int = 0; i < len; i++)
		{
			resultXml.appendChild(scriptInfoVect[i].encode());
		}
		len = conditionGroupVect ? conditionGroupVect.length : 0;
		for (i = 0; i < len; i++)
		{
			resultXml.appendChild(conditionGroupVect[i].encode());
		}
		
		return resultXml;
	}
	
	/**
	 * 添加条件组
	 * @param conditionGroupInfo
	 */	
	public function addConditionGroupInfo(conditionGroupInfo:ConditionGroupInfo):void
	{
		if (!conditionGroupVect)
		{
			conditionGroupVect = new Vector.<ConditionGroupInfo>();
		}
		conditionGroupVect.push(conditionGroupInfo);
	}
	
	/**
	 * 移除条件组
	 * @param conditionGroupInfo
	 */	
	public function removeConditionGroupInfo(conditionGroupInfo:ConditionGroupInfo):void
	{
		if (conditionGroupVect)
		{
			var len:int = conditionGroupVect.length;
			for (var i:int = len - 1; i >= 0; i--)
			{
				if (conditionGroupInfo === conditionGroupVect[i])
				{
					conditionGroupVect.splice(i, 1);
					break;
				}
			}
		}
	}
	
	public function removeConditonGroupByNodeID(nextNodeID:int):void
	{
		var len:int = conditionGroupVect ? conditionGroupVect.length : 0;
		for (var i:int = len - 1; i >= 0; i--)
		{
			if (nextNodeID === conditionGroupVect[i].nextNode)
			{
				conditionGroupVect.splice(i, 1);
				break;
			}
		}
	}
	
	/**
	 * 添加脚本
	 * @param scriptInfo
	 */	
	public function addScriptInfo(scriptInfo:ScriptInfo):void
	{
		if (!scriptInfoVect)
		{
			scriptInfoVect = new Vector.<ScriptInfo>();
		}
		scriptInfoVect.push(scriptInfo);
	}
	
	/**
	 * 移除脚本
	 * @param scriptInfo
	 */	
	public function removeScriptInfo(scriptInfo:ScriptInfo):void
	{
		if (scriptInfoVect)
		{
			var len:int = scriptInfoVect.length;
			for (var i:int = len - 1; i >= 0; i--)
			{
				if (scriptInfo === scriptInfoVect[i])
				{
					scriptInfoVect.splice(i, 1);
					break;
				}
			}
		}
	}
	
	/**
	 * 添加反激活
	 * @param delNodeID
	 */	
	public function addDelNodeID(delNodeID:int):void
	{
		delNodeIDArr.push(delNodeID);
	}
	
	/**
	 * 移除反激活
	 * @param delNodeID
	 */	
	public function removeDelNodeID(delNodeID:int):void
	{
		if (delNodeIDArr)
		{
			var len:int = delNodeIDArr.length;
			for (var i:int = len - 1; i >= 0; i--)
			{
				if (delNodeID === int(delNodeIDArr[i]))
				{
					delNodeIDArr.splice(i, 1);
					break;
				}
			}
		}
	}
	
	/**
	 * 根据脚本命令字返回脚本信息
	 * @param cmd
	 * @return 
	 */	
	public function getScriptInfoByCmd(cmd:String):ScriptInfo
	{
		var result:ScriptInfo;
		for each (var scriptInfo:ScriptInfo in scriptInfoVect)
		{
			if (scriptInfo.cmd == cmd)
			{
				result = scriptInfo;
			}
		}
		return result;
	}
	
	/**
	 * 通过关键字移除脚本
	 * @param cmd
	 */	
	public function removeScriptInfoByCmd(cmd:String):void
	{
		if (scriptInfoVect)
		{
			var len:int = scriptInfoVect.length;
			for (var i:int = len - 1; i >= 0; i--)
			{
				if (cmd === scriptInfoVect[i].cmd)
				{
					scriptInfoVect.splice(i, 1);
					break;
				}
			}
		}
	}
	
	/**
	 * 获取下一个节点数组
	 * @return 
	 */	
	public function getNextNodeArr():Array
	{
		var resultArr:Array = [];
		for each (var conditionGroup:ConditionGroupInfo in conditionGroupVect)
		{
			conditionGroup.nextNode && resultArr.push(conditionGroup.nextNode);
		}
		return resultArr;
	}
}
}