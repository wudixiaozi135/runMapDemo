package rumorPlot.model.info
{


/**
 * 
 * @author rockyChen
 */
public class DialogInfo
{
	public var curTitle:String;
	public var curPos:int;
	public var pos1:String;
	public var pos2:String;
	public var pos3:String;
	public var pos4:String;
	public var pos5:String;
	public var pos6:String;
	public var addPhotoID:String;
	public var addPhotoType:int;
	public var addPhotoPos:int;
	public var removePhotoPos:String;
	public var removePhotoType:int;
	public var msg:String;
	public var bgID:int;
	
	public function decode(xml:XML):void
	{
		curTitle = xml.@curTitle;
		curPos = xml.@curPos;
		pos1 = xml.@pos1;
		pos2 = xml.@pos2;
		pos3 = xml.@pos3;
		pos4 = xml.@pos4;
		pos5 = xml.@pos5;
		pos6 = xml.@pos6;
		addPhotoID = xml.@addPhotoID;
		addPhotoType = xml.@addPhotoType;
		addPhotoPos = xml.@addPhotoPos;
		removePhotoPos = xml.@removePhotoPos;
		removePhotoType = xml.@removePhotoType;
		msg = xml.@msg;
		bgID = xml.@bgID;
	}
	
	public function encode():XML
	{
		var resultXml:XML = <DialogInfo />;
		curTitle && (resultXml.@curTitle = curTitle);
		curPos && (resultXml.@curPos = curPos);
		pos1 && (resultXml.@pos1 = pos1);
		pos2 && (resultXml.@pos2 = pos2);
		pos3 && (resultXml.@pos3 = pos3);
		pos4 && (resultXml.@pos4 = pos4);
		pos5 && (resultXml.@pos5 = pos5);
		pos6 && (resultXml.@pos6 = pos6);
		addPhotoID && (resultXml.@addPhotoID = addPhotoID);
		addPhotoType && (resultXml.@addPhotoType = addPhotoType);
		addPhotoPos && (resultXml.@addPhotoPos = addPhotoPos);
		removePhotoPos && (resultXml.@removePhotoPos = removePhotoPos);
		removePhotoType && (resultXml.@removePhotoType = removePhotoType);
		msg && (resultXml.@msg = msg);
		bgID && (resultXml.@bgID = bgID);
		
		return resultXml;
	}
}
}