package gvg.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	/**
	 * @author junliu
	 * @createTime 2015-03-03 下午4:28:52
	 **/
	public class OpenGvgCheerPanelCommand extends Command
	{
		public function OpenGvgCheerPanelCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.GVG;
		}
	}
}