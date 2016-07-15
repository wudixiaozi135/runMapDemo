package newplot.cmds
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;

	public class BaseNewPlotCommand extends Command
	{
		public function BaseNewPlotCommand(autoHideLoading:Boolean=true)
		{
			super(2,autoHideLoading);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.NEWPLOT;
		}
	}
}