package ninja.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	/**
	 * 忍者系统命令抽象类
	 * @author larryhou
	 * @createTime 2013/9/24 10:07
	 */
	public class NinjaCommand extends Command
	{
		/**
		 * 后台返回码
		 */
		public var errorCode:int;
		
		/**
		 * 构造函数
		 * create a [NinjaCommand] object
		 */
		public function NinjaCommand() 
		{
			
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.NINJA;
		}
		
	}

}