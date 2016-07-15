package dungeon.command 
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	/**
	 * 打开特殊副本
	 * @author larryhou
	 * @createTime 2014/7/14 17:19
	 */
	public class OpenDailySpecialDungeonCommand extends Command
	{
		/**
		 * 页签类型
		 * @see dungeon.def.SpecialDungeonTabDef
		 */
		public var type:uint;
		
		/**
		 * 构造函数
		 * create a [OpenDailySpecialDungeonCommand] object
		 */
		public function OpenDailySpecialDungeonCommand(type:uint = 1)
		{
			this.type = type;
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.DUNGEON;
		}
	}

}