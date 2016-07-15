package guildDungeon.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	/**
	 * ...
	 * @author larryhou
	 * @createTime 2015/4/7 20:08
	 */
	public class OpenGuildDungeonCommand extends Command
	{
		
		/**
		 * 构造函数
		 * create a [OpenGuildDungeonCommand] object
		 */
		public function OpenGuildDungeonCommand() 
		{
			
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.GUILD_DUNGOEN;
		}
	}

}