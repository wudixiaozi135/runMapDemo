package rumorPlot.model.info
{


/**
 * 
 * @author rockyChen
 */
public class DialogNodeInfo
{
	public var id:int;
	public var type:int;
	public var name:String;
	public var dialogInfoVect:Vector.<DialogInfo>;
	
	public function decode(xml:XML):void
	{
		id = xml.@id;
		type = xml.@type;
		name = xml.@name;
		
		dialogInfoVect = new Vector.<DialogInfo>();
		var dialogXmlList:XMLList = xml.DialogInfo;
		var len:int = dialogXmlList.length();
		var dialogInfo:DialogInfo;
		for (var i:int = 0; i < len; i++)
		{
			dialogInfo = new DialogInfo();
			dialogInfo.decode(dialogXmlList[i]);
			dialogInfoVect.push(dialogInfo);
		}
	}
	
	public function encode():XML
	{
		var resultXml:XML = <DialogNode />;
		id && (resultXml.@id = id);
		type && (resultXml.@type = type);
		name && (resultXml.@name = name);
		
		var len:int = dialogInfoVect ? dialogInfoVect.length : 0;
		for (var i:int = 0; i < len; i++)
		{
			resultXml.appendChild(dialogInfoVect[i].encode());
		}
		return resultXml;
	}
}
}