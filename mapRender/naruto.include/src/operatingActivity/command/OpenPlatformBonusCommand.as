package operatingActivity.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	/**
	 *打开QQgame平台奖励界面 
	 * @author vianzhang
	 * 
	 */	
	public class OpenPlatformBonusCommand extends Command
	{
		public function OpenPlatformBonusCommand(commandLoadingType:int=2, autoHideLoading:Boolean=true)
		{
			super(commandLoadingType, autoHideLoading);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.OPERATING_ACTIVITY;
		}
	}
}