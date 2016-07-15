package gvg.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	/**
	 * @author woodychen
	 * @createTime 2014-11-28 下午4:28:52
	 **/
	public class OpenGvgRulePanelCommand extends Command
	{
		public function OpenGvgRulePanelCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.GVG;
		}
	}
}