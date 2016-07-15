package activity.minRenQianBao
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class OpenMinRenQianBaoCommand extends Command
	{
		
		public function OpenMinRenQianBaoCommand()
		{
			
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.ACTIVITY;
		}
	}
}