package rumorPlot.model.info
{


/**
 * 
 * @author rockyChen
 */
public class ParamArg
{
	public var value:String;
	public var info:String;
	public var tips:String;
	public var type:String;
	
	public function decode(xml:XML):void
	{
		value = xml.@value;
		info = xml.@info;
		tips = xml.@tips;
		type = xml.@type;
	}
	
	/**
	 * 更新详细参数
	 * @param detailParamArg
	 */	
	public function update(detailParamArg:ParamArg):void
	{
		info = detailParamArg.info;
		tips = detailParamArg.tips;
	}
	
	/**
	 * 复制基础数据，去除详细说明信息
	 */	
	public function copyBaseInfo(info:ParamArg):void
	{
		value = info.value;
	}
	
	public function encode():XML
	{
		var resultXml:XML = <Arg />;
		value && (resultXml.@value = value);
		info && (resultXml.@info = info);
		tips && (resultXml.@tips = tips);
		type && (resultXml.@type = type);
		
		return resultXml;
	}
}
}