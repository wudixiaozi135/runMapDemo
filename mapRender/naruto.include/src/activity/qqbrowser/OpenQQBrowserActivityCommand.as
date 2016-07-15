package activity.qqbrowser 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	/**
	 * ...
	 * @author larryhou
	 * @createTime 2015/6/2 10:59
	 */
	public class OpenQQBrowserActivityCommand extends Command
	{
		
		
		/**
		 * 构造函数
		 * create a [OpenQQBrowserActivityCommand] object
		 */
		public function OpenQQBrowserActivityCommand() 
		{
			
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.ACTIVITY;
		}
	}

}