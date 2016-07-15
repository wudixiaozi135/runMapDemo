package rumorPlot.model.info
{


/**
 * 
 * @author rockyChen
 */
public class ParamArgInfo
{
	public var paramArgVect:Vector.<ParamArg> = new Vector.<ParamArg>();
	
	public function decode(xml:XML):void
	{
		var argList:XMLList = xml.Arg;
		var len:int = argList.length();
		var paramArg:ParamArg;
		for (var i:int = 0; i < len; i++)
		{
			paramArg = new ParamArg();
			paramArg.decode(argList[i]);
			paramArgVect.push(paramArg);
		}
	}
	
	/**
	 * 更新详细参数数组
	 * @param detailParamArgInfo
	 */	
	public function update(detailParamArgInfo:ParamArgInfo):void
	{
		var len:int = paramArgVect.length;
		var scriptLen:int = detailParamArgInfo.paramArgVect.length;
		var paramArg:ParamArg;
		for (var i:int = 0; i < scriptLen; i++)
		{
			if (i < len)
			{
				paramArgVect[i].update(detailParamArgInfo.paramArgVect[i]);
			}
			else
			{
				paramArg = new ParamArg();
				paramArg.update(detailParamArgInfo.paramArgVect[i]);
				paramArgVect.push(paramArg);
			}
		}
	}
	
	/**
	 * 复制基础数据，去除详细说明信息
	 */	
	public function copyBaseInfo(info:ParamArgInfo):void
	{
		paramArgVect = new Vector.<ParamArg>();
		var len:int = info.paramArgVect ? info.paramArgVect.length : 0;
		var paramArg:ParamArg;
		for (var i:int = 0; i < len; i++)
		{
			paramArg = new ParamArg();
			paramArg.copyBaseInfo(info.paramArgVect[i]);
			paramArgVect.push(paramArg);
		}
	}
	
	public function encode():XML
	{
		var resultXml:XML = <ParamArg />;
		var len:int = paramArgVect ? paramArgVect.length : 0;
		for (var i:int = 0; i < len; i++)
		{
			resultXml.appendChild(paramArgVect[i].encode());
		}
		
		return resultXml;
	}
}
}