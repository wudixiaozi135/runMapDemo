package tx.sce.tools
{
	import flash.display.NativeMenu;
	import flash.display.NativeMenuItem;
	import flash.filesystem.File;
	import flash.net.registerClassAlias;
	import flash.utils.ByteArray;
	import flash.utils.getDefinitionByName;
	import flash.utils.getQualifiedClassName;

	public class Global
	{
		static public var file:File;
		
		public function Global()
		{
		}
		
		static public function getExtension(fileName:String):String
		{
			return fileName.substring(fileName.lastIndexOf(".")+1);
		}
		
		static public function clone(source:Object):Object
		{
			var fullClassName:String = getQualifiedClassName(source);
			var packageName:String = fullClassName.split("::")[0];
			var type:Class = getDefinitionByName(fullClassName) as Class;
			registerClassAlias(packageName,type);
			
			var byteArr:ByteArray = new ByteArray();
			byteArr.writeObject(source);
			byteArr.position = 0;						
			return byteArr.readObject();
		}
		
		static public function setNativeMenuItemName(nm:NativeMenu):void
		{
			if (nm == null) return;
			for each (var item:NativeMenuItem in nm.items)
			{
				item.name = item.label;
				setNativeMenuItemName(item.submenu);
			}
		}
		
		static public function swap(a:Object, b:Object):void
		{
			var tmp:Object;
			tmp = a;
			a = b;
			b = tmp;
		}
	}
}