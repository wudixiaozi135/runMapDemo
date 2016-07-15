package befallDungeon.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	/**
	 * ...
	 * @author larryhou
	 * @createTime 2015/4/30 16:11
	 */
	public class OpenBefallDungeonCommand extends Command
	{
		
		/**
		 * 构造函数
		 * create a [OpenBefallDungeonCommand] object
		 */
		public function OpenBefallDungeonCommand() 
		{
			
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.BEFALL_DUNGEON;
		}
	}

}