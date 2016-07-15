package npc.commands
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class BaseNpcCommand extends Command
	{
		public function BaseNpcCommand(commandLoadingType:int = 2)
		{
			super(commandLoadingType);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.NPC;
		}
	}
}