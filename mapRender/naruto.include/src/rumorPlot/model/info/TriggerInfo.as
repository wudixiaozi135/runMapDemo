package rumorPlot.model.info
{
import flash.utils.IDataInput;
import flash.utils.IDataOutput;

import rumorPlot.model.info.ParamArgInfo;

/**
 * 
 * @author rockyChen
 */
public class TriggerInfo
{
	public var name:String;
	public var cmd:String;
	public var className:String;
	public var paramArg:ParamArgInfo;
	
	public function decode(xml:XML):void
	{
		cmd = xml.@cmd;
		name = xml.@name;
		className = xml.@className;
		
		var paramList:XMLList = xml.ParamArg;
		if (paramList && paramList.length())
		{
			paramArg = new ParamArgInfo();
			paramArg.decode(paramList[0]);
		}
	}
	
	/**
	 * 更新trigger数据
	 */	
	public function update(detailTriggerInfo:TriggerInfo):void
	{
		name = detailTriggerInfo.name;
		className = detailTriggerInfo.className;
		
		if (!paramArg && detailTriggerInfo.paramArg)
		{
			paramArg = new ParamArgInfo();
		}
		paramArg && paramArg.update(detailTriggerInfo.paramArg);
	}
	
	public function encode():XML
	{
		var resultXml:XML = <TriggerInfo />;
		cmd && (resultXml.@cmd = cmd);
		name && (resultXml.@name = name);
		className && (resultXml.@className = className);
		if (paramArg)
		{
			resultXml.appendChild(paramArg.encode());
		}
		
		return resultXml;
	}
}
}