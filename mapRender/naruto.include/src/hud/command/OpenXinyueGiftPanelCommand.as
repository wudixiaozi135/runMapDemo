package hud.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	/**
	 * @author woodychen
	 * @createTime 2015-1-28 上午10:39:01
	 **/
	public class OpenXinyueGiftPanelCommand extends Command
	{
		public function OpenXinyueGiftPanelCommand()
		{
			super();
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.ACTIVITY;
		}
	}
}