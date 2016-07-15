package rumorPlot.model.cfg
{
import flash.utils.Dictionary;

import rumorPlot.model.info.DialogNodeInfo;

/**
 * 
 * @author rockyChen
 */
public class DialogInfosConfig
{
	public var dialogInfoDict:Dictionary;
	
	public function decode(xml:XML):void
	{
		dialogInfoDict = new Dictionary();
		var xmlList:XMLList = xml.DialogNode;
		var len:int = xmlList.length();
		var dialogNodeInfo:DialogNodeInfo;
		
		for (var i:int = 0; i < len; i++)
		{
			dialogNodeInfo = new DialogNodeInfo();
			dialogNodeInfo.decode(xmlList[i]);
			dialogInfoDict[dialogNodeInfo.id] = dialogNodeInfo;
		}
	}
	
	/**
	 * 通过ID获得对白数据
	 * @param cmd
	 * @return 
	 */	
	public function getDialogInfoByID(id:int):DialogNodeInfo
	{
		return dialogInfoDict[id];
	}
	
	/**
	 * 添加对白 用于剧情中的临时对白
	 * @param dialogInfo
	 */	
	public function addDialogInfo(dialogNodeInfo:DialogNodeInfo):void
	{
		if (dialogNodeInfo)
		{
			dialogInfoDict[dialogNodeInfo.id] = dialogNodeInfo;
		}
	}
	
	/**
	 * 移除对白
	 * @param dialogInfo
	 */	
	public function removeDialogInfo(dialogNodeInfo:DialogNodeInfo):void
	{
		if (dialogNodeInfo)
		{
			delete dialogInfoDict[dialogNodeInfo.id];
		}
	}
	
	public function encode():XML
	{
		return super.encode();
	}
	
	public function dispose():void
	{
		dialogInfoDict = null;
	}
}
}