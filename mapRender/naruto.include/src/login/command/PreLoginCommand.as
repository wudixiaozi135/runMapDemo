package login.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	/**
	 * 主要是在login模块里预先加载ui.swc和exui.swc
	 * @author fixchen
	 */
	public class PreLoginCommand extends Command
	{
		public function PreLoginCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.LOGIN;
		}
	}
}