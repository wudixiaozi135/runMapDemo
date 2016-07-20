/**
 * Created by xiaoding on 2016/7/20 0020.
 */
package com.map.utils
{
	import com.map.data.MapMgImgInfo;

	import flash.geom.Matrix;
	import flash.utils.Dictionary;
	import flash.utils.describeType;

	public class MapCfgParse
	{
		public static function parseXML(xml:XML, dic:Dictionary, xmlClass:Class):void
		{
			var attNames:Object = {};
			var instance:* = new xmlClass();
			var key:String;
			var oXml:XML = describeType(instance);
			var oXmlNodes:XMLList = oXml.child("variable");

			for each(var tt:XML in oXmlNodes)
			{
				attNames[tt.@name] = tt.@name.toString();
			}

			var nodeXml:XML = xml.children()[0];
			var childNodes:XMLList = nodeXml.children();

			var dicIndex:int = 0;
			for (var i:int = 0, len:int = childNodes.length(); i < len; i++)
			{
				var temp:XML = childNodes[i];
				var info:Object = new xmlClass();
				for (key in attNames)
				{
					if (!attNames[key]) continue;
					if (attNames[key] == "matrix")
					{
						var arr:Array = temp.attribute(key).split(",");
						info[key] = new Matrix(parseFloat(arr[0]), parseFloat(arr[1]), parseFloat(arr[2]), parseFloat(arr[3]));
					} else
					{
						info[key] = temp.attribute(key);
					}
				}
				dicIndex = info.imgX * 1000 + info.imgY;
				if (instance is MapMgImgInfo)
				{
					if (!dic[dicIndex])
					{
						dic[dicIndex] = new Array();
					}
					(dic[dicIndex] as Array).push(info);
				} else
				{
					dic[dicIndex] = info;
				}
			}
		}
	}
}
