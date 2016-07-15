package gvg.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	import gvg.data.GvgInfo;
	
	public class RequestGvgInfoCommand extends Command
	{
		public var gvgInfo:GvgInfo;
		
		public function RequestGvgInfoCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.GVG;
		}
	}
}