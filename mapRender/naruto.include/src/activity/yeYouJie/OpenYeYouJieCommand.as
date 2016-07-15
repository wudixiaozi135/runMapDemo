package activity.yeYouJie 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	/**
	 * ...
	 * @author larryhou
	 * @createTime 2015/3/11 16:47
	 */
	public class OpenYeYouJieCommand extends Command
	{
		
		/**
		 * 构造函数
		 * create a [OpenQQHallOnlineRewardCommand] object
		 */
		public function OpenYeYouJieCommand() 
		{
			
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.ACTIVITY;
		}
	}

}