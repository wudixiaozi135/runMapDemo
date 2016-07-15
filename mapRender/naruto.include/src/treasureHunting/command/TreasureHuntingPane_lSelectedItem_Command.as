package treasureHunting.command
{
	import bag.data.ItemData;
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class TreasureHuntingPane_lSelectedItem_Command extends Command
	{
		public var data:ItemData;
		public function TreasureHuntingPane_lSelectedItem_Command(data:ItemData)
		{
			super();
			this.data = data;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.TREASUREHUNTING;
		}
	}
}
