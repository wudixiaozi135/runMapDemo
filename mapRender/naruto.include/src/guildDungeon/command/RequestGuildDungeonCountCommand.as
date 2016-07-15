package guildDungeon.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class RequestGuildDungeonCountCommand extends Command
	{
		/**
		 * 挑战次数
		 */
		public var currentChallengeCount:uint;
		public var maxChallengeCount:uint;
		
		/**
		 * 构造函数
		 * create a [RequestGuildDungeonCommand] object
		 */
		public function RequestGuildDungeonInfoCommand():void
		{
			
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.GUILD_DUNGOEN;
		}
	}

}