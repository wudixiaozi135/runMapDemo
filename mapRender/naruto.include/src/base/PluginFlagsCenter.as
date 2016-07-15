package base 
{
	import com.tencent.morefun.naruto.util.MultiFlags;
	import flash.utils.Dictionary;
	
	/**
	 * 插件标记位管理器
	 * @author larryhou
	 * @createTime 2013/11/15 14:00
	 */
	public class PluginFlagsCenter
	{
		private static const _manager:Dictionary = new Dictionary(false);
		
		/**
		 * 设置插件标记位
		 * @param	pluginName	插件名
		 * @param	offset		标记位偏移量
		 * @param	value		标记位对应值
		 */
		public static function setFlag(pluginName:String, offset:uint, value:Boolean):void
		{
			if (!_manager[pluginName])
			{
				_manager[pluginName] = new MultiFlags();
			}
			
			var flags:MultiFlags = _manager[pluginName] as MultiFlags;
			flags.setFlag(offset, value);
		}
		
		/**
		 * 获取插件标记位值
		 * @param	pluginName	插件名
		 * @param	offset		标记位偏移量
		 */
		public static function getFlag(pluginName:String, offset:uint):Boolean
		{
			if (!_manager[pluginName]) return false;
			
			var flags:MultiFlags = _manager[pluginName] as MultiFlags;
			return flags.getFlag(offset);
		}
		
		/**
		 * 反转插件标记位值
		 * @param	pluginName	插件名
		 * @param	offset		标记位偏移量
		 */
		public static function toggle(pluginName:String, offset:uint):Boolean
		{
			if (!_manager[pluginName])
			{
				_manager[pluginName] = new MultiFlags();
			}
			
			var flags:MultiFlags = _manager[pluginName] as MultiFlags;
			return flags.toggle(offset);
		}
		
		/**
		 * 获取插件标记位管理器
		 * @param	pluginName	插件名
		 */
		public static function getPluginFlags(pluginName:String):MultiFlags
		{
			if (!_manager[pluginName])
			{
				_manager[pluginName] = new MultiFlags();
			}
			
			return _manager[pluginName];
		}
	}

}