package rumorPlot.model.cfg
{
import flash.utils.Dictionary;

import rumorPlot.model.info.TriggerInfo;

/**
 * 
 * @author rockyChen
 */
public class TriggerInfosConfig
{
	public var triggerInfoDict:Dictionary;
	
	public function decode(xml:XML):void
	{
		triggerInfoDict = new Dictionary();
		var xmlList:XMLList = xml.TriggerInfo;
		var len:int = xmlList.length();
		var triggerInfo:TriggerInfo;
		
		for (var i:int = 0; i < len; i++)
		{
			triggerInfo = new TriggerInfo();
			triggerInfo.decode(xmlList[i]);
			triggerInfoDict[triggerInfo.cmd] = triggerInfo;
		}
	}
	
	/**
	 * 通过关键字获得trigger数据
	 * @param cmd
	 * @return 
	 */	
	public function getTriggerByCmd(cmd:String):TriggerInfo
	{
		return triggerInfoDict[cmd];
	}
	
	/**
	 * 更新脚本数据
	 * @param scriptInfo
	 */	
	public function updateTriggerInfo(triggerInfo:TriggerInfo):void
	{
		var detailTriggerInfo:TriggerInfo = getTriggerByCmd(triggerInfo.cmd);
		triggerInfo.update(detailTriggerInfo);
	}
	
	public function encode():XML
	{
		return null;
	}
	
	public function dispose():void
	{
		triggerInfoDict = null;
	}
}
}