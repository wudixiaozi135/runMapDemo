package rumorPlot.model.cfg
{
import flash.utils.Dictionary;

import rumorPlot.model.info.ConditionInfo;

/**
 * 
 * @author rockyChen
 */
public class ConditionInfosConfig
{
	public var conditionInfoDict:Dictionary;
	
	public function decode(xml:XML):void
	{
		conditionInfoDict = new Dictionary();
		var xmlList:XMLList = xml.ConditionInfo;
		var len:int = xmlList.length();
		var conditionInfo:ConditionInfo;
		
		for (var i:int = 0; i < len; i++)
		{
			conditionInfo = new ConditionInfo();
			conditionInfo.decode(xmlList[i]);
			conditionInfoDict[conditionInfo.id] = conditionInfo;
		}
	}
	
	/**
	 * 通过条件ID获得条件数据
	 * @param cmd
	 * @return 
	 */	
	public function getConditionByID(id:int):ConditionInfo
	{
		return conditionInfoDict[id];
	}
	
	/**
	 * 更新条件数据
	 * @param scriptInfo
	 */	
	public function updateConditionInfo(conditionInfo:ConditionInfo):void
	{
		var detailConditionInfo:ConditionInfo = getConditionByID(conditionInfo.id);
		conditionInfo.update(detailConditionInfo);
	}
	
	public function encode():XML
	{
		return null;
	}
	
	public function dispose():void
	{
		conditionInfoDict = null;
	}
}
}