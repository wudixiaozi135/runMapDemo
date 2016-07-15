package rumorPlot.model.info
{
import rumorPlot.model.info.ParamArgInfo;

/**
 * 
 * @author rockyChen
 */
public class ConditionInfo
{
	public var id:int;
	public var name:String;
	public var className:String;
	public var paramArg:ParamArgInfo;
	
	public function decode(xml:XML):void
	{
		id = xml.@id;
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
	 * 更新condition数据
	 */	
	public function update(detailConditionInfo:ConditionInfo):void
	{
		name = detailConditionInfo.name;
		className = detailConditionInfo.className;
		
		if (!paramArg && detailConditionInfo.paramArg)
		{
			paramArg = new ParamArgInfo();
		}
		paramArg && paramArg.update(detailConditionInfo.paramArg);
	}
	
	public function encode():XML
	{
		var resultXml:XML = <ConditionInfo id="" name="" className="" />;
		resultXml.@id = id;
		resultXml.@name = name;
		resultXml.@className = className;
		if (paramArg)
		{
			resultXml.appendChild(paramArg.encode());
		}
		
		return resultXml;
	}
}
}