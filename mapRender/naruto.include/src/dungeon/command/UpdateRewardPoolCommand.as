package dungeon.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class UpdateRewardPoolCommand extends Command
	{
		public var deadNinjaNum:int;
		public var playerExpNum:int;
		public var ninjaExpNum:int;
		public var money:int;
		public var goldBox:int;
		public var silverBox:int;
		public var addValue:Boolean;  //是增量还是全量
		
		public function UpdateRewardPoolCommand(playerExpNum:int, ninjaExpNum:int, money:int, goldBox:int, silverBox:int, deadNinjaNum:int, addValue:Boolean = false)
		{
			super();
			this.deadNinjaNum = deadNinjaNum;
			this.playerExpNum = playerExpNum;
			this.ninjaExpNum = ninjaExpNum;
			this.money = money;
			this.goldBox = goldBox;
			this.silverBox = silverBox;
			this.addValue = addValue;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.DUNGEON;
		}
	}
}