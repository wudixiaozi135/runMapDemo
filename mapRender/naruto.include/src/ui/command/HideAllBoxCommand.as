package ui.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	/**
	 * @author woodychen
	 * @createTime 2014-9-20 下午1:40:44
	 **/
	public class HideAllBoxCommand extends Command
	{
		public function HideAllBoxCommand(commandLoadingType:int=2, autoHideLoading:Boolean=true)
		{
			super(commandLoadingType, autoHideLoading);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.HUD;
		}
	}
}