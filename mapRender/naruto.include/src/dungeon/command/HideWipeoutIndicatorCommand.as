package dungeon.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	/**
	 * 关闭扫荡指示器
	 * @author larryhou
	 * @createTime 2014/7/2 20:20
	 */
	public class HideWipeoutIndicatorCommand extends Command
	{
		
		/**
		 * 构造函数
		 * create a [HideWipeoutIndicatorCommand] object
		 */
		public function HideWipeoutIndicatorCommand() 
		{
			
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.HUD;
		}
	}

}