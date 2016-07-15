package newplot.cmds
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	/**
	 * 销毁新剧情。
	 * @author yboyjiang
	 */	
	public class DestroyNewPlotCommand extends NarutoCommand
	{
		public var id:int;
		public function DestroyNewPlotCommand(id:int)
		{
			this.id = id;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.NEWPLOT;
		}
	}
}