package dungeon.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class OpenDungeonBoxCommand extends Command
	{
		/**
		 * 副本id
		 */
		public var dungeon:int;
		
		/**
		 * 当前副本页签
		 */
		public var windowTab:uint;
		
		/**
		 * 是否恢复玩家上次停留的位置
		 */
		public var restoreUserInterface:Boolean;
		
		/**
		 * 选中副本id列表
		 */
		public var selection:Vector.<uint>;
		
		public function OpenDungeonBoxCommand(dungeon:int = 0, windowTab:uint = 1)
		{
			super();
			
			this.dungeon = dungeon;
			this.windowTab = windowTab;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.DUNGEON;
		}
	}
}