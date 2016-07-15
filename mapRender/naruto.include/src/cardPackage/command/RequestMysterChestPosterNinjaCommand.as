package cardPackage.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class RequestMysterChestPosterNinjaCommand extends Command
	{
		public var ninjaId:int;
		
		public function RequestMysterChestPosterNinjaCommand()
		{
			super();
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.CARD_PACKAGE;
		}
	}
}