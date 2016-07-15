package rumorPlot.model.cfg
{
import flash.utils.Dictionary;

import rumorPlot.model.info.ScriptInfo;

/**
 * 
 * @author rockyChen
 */
public class ScriptInfosConfig
{
	public var scriptInfoDict:Dictionary;
	
	public function decode(xml:XML):void
	{
		scriptInfoDict = new Dictionary();
		var xmlList:XMLList = xml.ScriptInfo;
		var len:int = xmlList.length();
		var scriptInfo:ScriptInfo;
		
		for (var i:int = 0; i < len; i++)
		{
			scriptInfo = new ScriptInfo();
			scriptInfo.decode(xmlList[i]);
			scriptInfoDict[scriptInfo.cmd] = scriptInfo;
		}
	}
	
	/**
	 * 通过脚本关键字获得脚本数据
	 * @param cmd
	 * @return 
	 */	
	public function getScriptByCmd(cmd:String):ScriptInfo
	{
		return scriptInfoDict[cmd];
	}
	
	/**
	 * 更新脚本数据
	 * @param scriptInfo
	 */	
	public function updateScriptInfo(scriptInfo:ScriptInfo):void
	{
		var detailScriptInfo:ScriptInfo = getScriptByCmd(scriptInfo.cmd);
		scriptInfo.update(detailScriptInfo);
	}
	
	public function encode():XML
	{
		return null;
	}
	
	public function dispose():void
	{
		scriptInfoDict = null;
	}
}
}