package crew.cmd
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class SetCrewBagItemSingleClickEnableCommand extends Command
	{
		public var value:Boolean;
		
		public function SetCrewBagItemSingleClickEnableCommand(value:int)
		{
			super();
			this.value = Boolean(value);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.CREW;
		}
	}
}