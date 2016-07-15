package map.commands
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class BaseMapCommand extends Command
	{
		public function BaseMapCommand(commandLoadingType:int = 2)
		{
			super(commandLoadingType);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.MAP;
		}
	}
}