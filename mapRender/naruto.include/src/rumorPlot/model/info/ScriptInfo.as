package rumorPlot.model.info
{
import rumorPlot.model.info.ParamArgInfo;

/**
 * 
 * @author rockyChen
 */
public class ScriptInfo
{
	public var cmd:String;
	public var name:String;
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
	 * 更新script数据
	 */	
	public function update(detailScriptInfo:ScriptInfo):void
	{
		name = detailScriptInfo.name;
		className = detailScriptInfo.className;
		
		if (!paramArg && detailScriptInfo.paramArg)
		{
			paramArg = new ParamArgInfo();
		}
		
		paramArg && paramArg.update(detailScriptInfo.paramArg);
	}
	
	/**
	 * 复制基础数据，去除详细说明信息
	 */	
	public function copyBaseInfo(info:ScriptInfo):void
	{
		cmd = info.cmd;
		if (info.paramArg)
		{
			paramArg = new ParamArgInfo();
			paramArg.copyBaseInfo(info.paramArg);
		}
	}
	
	public function clone():ScriptInfo
	{
		var result:ScriptInfo = new ScriptInfo();
		result.decode(encode());
		return result;
	}
	
	public function encode():XML
	{
		var resultXml:XML = <ScriptInfo />;
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