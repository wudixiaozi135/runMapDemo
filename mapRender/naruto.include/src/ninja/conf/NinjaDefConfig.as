package ninja.conf 
{
	import flash.utils.Dictionary;
	/**
	 * 忍者定义配置
	 * @author larryhou
	 * @createTime 2013/11/13 11:38
	 */
	public class NinjaDefConfig 
	{
		/**
		 * 职业常量定义
		 */
		public static const CAREER:String = "career";
		
		/**
		 * 忍者属性常量定义
		 */
		public static const PROPERTY:String = "property";
		
		/**
		 * 忍者盾系常量定义
		 */
		public static const CATEGORY:String = "category";
		
		/**
		 * 地图技能常量定义
		 */
		public static const MAP_SKILL:String = "mapSkill";
		
		
		/**
		 * 构造函数
		 * create a [NinjaDefConfig] object
		 */
		public function NinjaDefConfig() 
		{
			
		}
		
		/**
		 * 导入定义配置
		 */
		public function importConfig(config:XML):void
		{
			var cfg:DefConfig;
			var children:XMLList = config.children();
			for each(var data:XML in children)
			{
				if (!data.children().length()) continue;
				
				cfg = new DefConfig(String(data.localName()));
				for each(var item:XML in data.item)
				{
					cfg.map[parseInt(item.@id)] = String(item.@name);
				}
				
				map[cfg.name] = cfg;
			}
		}
		
		// static
		//*************************************************
		
		private static const map:Dictionary = new Dictionary(false);
		
		/**
		 * 获取某个定义类型名
		 * @param	type	定义类型 @see NinjaDefConfig
		 * @param	id		常量id
		 */
		public static function getDefName(type:String, id:uint):String
		{
			var cfg:DefConfig = map[type] as DefConfig;
			return cfg? cfg.map[id] : null;
		}
	}

}
import flash.utils.Dictionary;

class DefConfig
{
	public var name:String;
	public var map:Dictionary;
	
	public function DefConfig(name:String)
	{
		this.name = name;
		this.map = new Dictionary(false);
	}
}