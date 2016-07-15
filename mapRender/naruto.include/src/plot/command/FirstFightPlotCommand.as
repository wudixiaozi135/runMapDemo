// ActionScript file
package plot.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	import user.def.UserStateDef;
		
	public class FirstFightPlotCommand extends NarutoCommand
	{
		public var plotid:int;//剧情ID
		public var showSkipBtn:Boolean;
		//public var skipBtnVisibleBoo:Boolean;//是否显示跳过按钮
		public function FirstFightPlotCommand(id:int = 0, showSkipBtn:Boolean = true)
		{
			super();
			this.plotid = id;
			this.showSkipBtn = showSkipBtn;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.NARUTO_PLOT;
		}
	}
}