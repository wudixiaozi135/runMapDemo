package vip.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	/**
	 * 打开VIP窗口
	 * @author larryhou
	 * @createTime 2014/8/26 16:40
	 */
	public class OpenVIPWindowCommand extends Command
	{
		
		/**
		 * 构造函数
		 * create a [OpenVIPWindowCommand] object
		 */
		public function OpenVIPWindowCommand() 
		{
			
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.VIP;
		}
	}

}