package hud.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	import server.SocketProtocol;
	
	/**
	 * 清理通知缓冲数据
	 * @author larryhou
	 * @createTime 2014/7/28 17:49
	 */
	public class FlushHudNotifyCommand extends Command
	{
		/**
		 * 按钮闪光
		 */
		public var flash:Vector.<SocketProtocol>;
		
		/**
		 * 自动弹窗
		 */
		public var popup:Vector.<SocketProtocol>;
		
		/**
		 * 系统通知
		 */
		public var system:Vector.<SocketProtocol>;
		
		/**
		 * 按钮开启
		 */
		public var open:Vector.<SocketProtocol>;
		
		/**
		 * 构造函数
		 * create a [FlushHudNotifyCommand] object
		 */
		public function FlushHudNotifyCommand(system:Vector.<SocketProtocol>, popup:Vector.<SocketProtocol>, flash:Vector.<SocketProtocol>, open:Vector.<SocketProtocol>) 
		{
			this.system = system; this.popup = popup; this.flash = flash; this.open = open;
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.HUD;
		}
	}

}