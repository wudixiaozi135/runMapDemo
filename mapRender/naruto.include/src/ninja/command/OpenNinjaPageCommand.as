package ninja.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	import ninja.def.NinjaPageDef;
	
	/**
	 * 打开忍者系统页面
	 * @author larryhou
	 * @createTime 2013/9/23 18:42
	 */
	public class OpenNinjaPageCommand extends Command
	{
		/**
		 * 忍者系统页面id
		 * @see ninja.def.NinjaPageDef
		 */
		public var id:uint;
		
		/**
		 * 控制忍者弹窗显示页签
		 * @see ninja.def.NinjaPageDef
		 */
		public var keepTabs:Vector.<uint>;
		
		/**
		 * 页签数据
		 */
		public var data:Object;
		
		/**
		 * 构造函数
		 * create a [OpenNinjaPageCommand] object
		 */
		public function OpenNinjaPageCommand(id:uint = NinjaPageDef.FORMATION, data:Object = null) 
		{
			this.id = id; this.data = data;
		}	
		
		override public function getPluginName():String 
		{
			return PluginDef.NINJA;
		}
	}

}