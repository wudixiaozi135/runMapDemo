package gvg.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class OpenGvgPanelCommand extends Command
	{
		public var type:int;//0进入战场,1观战
		public function OpenGvgPanelCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.GVG;
		}
	}
}
