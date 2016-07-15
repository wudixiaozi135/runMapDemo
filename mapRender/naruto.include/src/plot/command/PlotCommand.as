// ActionScript file
package plot.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	import user.def.UserStateDef;
		
	public class PlotCommand extends NarutoCommand
	{
		public var plotid:int;//剧情ID
		public var showSkipBtn:Boolean;
		//public var skipBtnVisibleBoo:Boolean;//是否显示跳过按钮
		public function PlotCommand(id:int = 0, showSkipBtn:Boolean = true)
		{
			super();
			this.plotid = id;
			this.showSkipBtn = showSkipBtn;
			this.addBeginStateInfo(UserStateDef.BASE_PLOT_DIALOGUE, true);
			this.addEndStateInfo(UserStateDef.BASE_PLOT_DIALOGUE, false);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.NARUTO_PLOT;
		}
	}
}