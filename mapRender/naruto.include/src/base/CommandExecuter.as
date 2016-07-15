package base 
{
	import base.NarutoExecuter;
	import com.tencent.morefun.framework.base.Command;
	import flash.utils.Dictionary;
	
	/**
	 * 命令执行器
	 * @author larryhou
	 * @createTime 2013/12/23 10:48
	 */
	public class CommandExecuter extends NarutoExecuter
	{
		private var dict:Dictionary;
		
		/**
		 * 构造函数
		 * create a [CommandExecuter] object
		 */
		public function CommandExecuter(pluginName:String) 
		{
			super(pluginName);
			dict = new Dictionary(false);
		}
		
		
		/**
		 * 建立请求与命令的映射关系，方便后期使用
		 */
		protected final function storeCommand(key:Object, command:Command):void
		{
			if (key && command)
			{
				dict[key] = command;
			}
		}
		
		/**
		 * 获取请求对应的command对象
		 */
		protected final function getCommand(key:Object):Command
		{
			return key? dict[key] as Command : null;
		}
		
		/**
		 * 删除命令映射关系
		 */
		protected final function deleteCommand(key:Object):Command
		{
			var command:Command = dict[key] as Command;
			delete dict[key];
			return command;
		}
		
		/**
		 * 结束命令执行
		 */
		protected final function finishCommand(key:Object):void
		{
			if (key)
			{
				var command:Command = getCommand(key);
				command && command.finish();
				delete dict[key];
			}
		}
		
		/**
		 * 结束命令执行
		 */
		protected final function failCommand(key:Object, error:int):void
		{
			if (key)
			{
				var command:Command = getCommand(key);
				command && command.faild(error);
				delete dict[key];
			}
		}
	}

}