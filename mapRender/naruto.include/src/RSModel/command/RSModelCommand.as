package RSModel.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	/**
	 * 抽象类
	 * @author larryhou
	 * @createTime 2014/7/28 11:04
	 */
	public class RSModelCommand extends Command
	{
		/**
		 * 错误码
		 */
		public var errorCode:int;
		
		/**
		 * 构造函数
		 * create a [RSModelCommand] object
		 */
		public function RSModelCommand() 
		{
			
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.RSMODEL;
		}
	}

}