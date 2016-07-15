package dungeon.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class RequestDungeonFinishCommand extends Command
	{
		/**
		 * 是否打开结算奖励面板。
		 */		
		public var isOpenRewardBox:Boolean;
		
		/**
		 * 是否已经死亡（如果是非组队副本，死亡后就会打开复活面板）
		 */		
		public var isDied:Boolean;
		
		public function RequestDungeonFinishCommand()
		{
			super();
		}
		
		
		override public function getPluginName():String
		{
			return PluginDef.DUNGEON;
		}
	}
}