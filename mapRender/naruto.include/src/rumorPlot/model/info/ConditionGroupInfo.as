package rumorPlot.model.info
{
	import rumorPlot.model.RumorModel;


/**
 * 
 * @author rockyChen
 */
public class ConditionGroupInfo
{
	public var nextNode:int;
	public var triggerVect:Vector.<TriggerInfo>;
	public var conditionVect:Vector.<ConditionInfo>;
	
	public function decode(xml:XML):void
	{
		nextNode = xml.@nextNode;
		
		var xmlList:XMLList = xml.TriggerInfo;
		var len:int = xmlList.length();
		triggerVect = new Vector.<TriggerInfo>();
		var triggerInfo:TriggerInfo;
		for (var i:int = 0; i < len; i++)
		{
			triggerInfo = new TriggerInfo();
			triggerInfo.decode(xmlList[i]);
			
			//更新trigger详细信息
			RumorModel.instance.triggerInfosConfig.updateTriggerInfo(triggerInfo);
			triggerVect.push(triggerInfo);
		}
		
		xmlList = xml.ConditionInfo;
		len = xmlList.length();
		conditionVect = new Vector.<ConditionInfo>();
		var conditionInfo:ConditionInfo;
		for (i = 0; i < len; i++)
		{
			conditionInfo = new ConditionInfo();
			conditionInfo.decode(xmlList[i]);
			
			//更新条件详细信息
			RumorModel.instance.conditionInfosConfig.updateConditionInfo(conditionInfo);
			conditionVect.push(conditionInfo);
		}
	}
	
	public function encode():XML
	{
		var resultXml:XML = <ConditionGroup nextNode="" />;
		resultXml.@nextNode = nextNode;
		
		var len:int = triggerVect ? triggerVect.length : 0;
		for (var i:int = 0; i < len; i++)
		{
			resultXml.appendChild(triggerVect[i].encode());
		}
		len = conditionVect ? conditionVect.length : 0;
		for (i = 0; i < len; i++)
		{
			resultXml.appendChild(conditionVect[i].encode());
		}
		
		return resultXml;
	}
	
	/**
	 * 添加条件
	 * @param conditionInfo
	 */	
	public function addConditionInfo(conditionInfo:ConditionInfo):void
	{
		if (!conditionVect)
		{
			conditionVect = new Vector.<ConditionInfo>();
		}
		conditionVect.push(conditionInfo);
	}
	
	/**
	 * 添加trigger
	 * @param conditionInfo
	 */	
	public function addTriggerInfo(triggerInfo:TriggerInfo):void
	{
		if (!triggerVect)
		{
			triggerVect = new Vector.<TriggerInfo>();
		}
		triggerVect.push(triggerInfo);
	}
	
	/**
	 * 根据ID返回条件信息
	 * @param id
	 * @return 
	 */	
	public function getConditionInfoByCmd(id:int):ConditionInfo
	{
		var result:ConditionInfo;
		for each (var info:ConditionInfo in conditionVect)
		{
			if (info.id == id)
			{
				result = info;
			}
		}
		return result;
	}
	
	/**
	 * 根据命令字返回事件信息
	 * @param cmd
	 * @return 
	 */	
	public function getTriggerInfoByCmd(cmd:String):TriggerInfo
	{
		var result:TriggerInfo;
		for each (var info:TriggerInfo in triggerVect)
		{
			if (info.cmd == cmd)
			{
				result = info;
			}
		}
		return result;
	}
	
	/**
	 * 根据命令字移除条件信息
	 * @param cmd
	 */	
	public function removeConditionInfoByCmd(id:int):void
	{
		if (conditionVect)
		{
			var len:int = conditionVect.length;
			for (var i:int = len - 1; i >= 0; i--)
			{
				if (id === conditionVect[i].id)
				{
					conditionVect.splice(i, 1);
					break;
				}
			}
		}
	}
	
	/**
	 * 根据命令字移除trigger信息
	 * @param cmd
	 */	
	public function removeTriggerInfoByCmd(cmd:String):void
	{
		if (triggerVect)
		{
			var len:int = triggerVect.length;
			for (var i:int = len - 1; i >= 0; i--)
			{
				if (cmd === triggerVect[i].cmd)
				{
					triggerVect.splice(i, 1);
					break;
				}
			}
		}
	}
}
}