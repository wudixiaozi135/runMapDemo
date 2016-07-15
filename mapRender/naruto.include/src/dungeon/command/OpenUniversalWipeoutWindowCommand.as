package dungeon.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	import dungeon.wipeout.delegate.UniversalWipeoutDelegate;
	
	/**
	 * 打开扫荡窗口
	 * @author larryhou
	 * @createTime 2014/8/7 19:23
	 */
	public class OpenUniversalWipeoutWindowCommand extends Command
	{
		/**
		 * 扫荡窗口代理
		 */
		public var delegate:UniversalWipeoutDelegate;
		
		/**
		 * 构造函数
		 * create a [OpenUniversalWipeoutWindowCommand] object
		 */
		public function OpenUniversalWipeoutWindowCommand(delegate:UniversalWipeoutDelegate) 
		{
			this.delegate = delegate;
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.DUNGEON;
		}
	}

}