package dungeon.command 
{
	import com.tencent.morefun.framework.base.Command;
	
	import bag.data.ItemData;
	
	import def.PluginDef;
	
	/**
	 * 显示特殊副本奖励
	 * @author larryhou
	 * @createTime 2014/7/15 15:27
	 */
	public class ShowSimpleDungeonRewardCommand extends Command
	{
		/**
		 * 副本奖励列表
		 */
		public var rewards:Vector.<ItemData>;
		/**
		 * 关闭面板的时候不要请求退出副本
		 */
		public var notRequestQuitDungeon:Boolean;
		
		/**
		 * 构造函数
		 * create a [ShowSimpleDungeonRewardCommand] object
		 */
		public function ShowSimpleDungeonRewardCommand(rewards:Vector.<ItemData>,notRequestQuitDungeon:Boolean=false) 
		{
			this.rewards = rewards;
			this.notRequestQuitDungeon = notRequestQuitDungeon;
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.DUNGEON;
		}
	}

}