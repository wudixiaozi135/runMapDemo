package user.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	/**
	 * 清理重要提示
	 * @author larryhou
	 * @createTime 2014/9/11 11:04
	 */
	public class ClearImportantNoticeCommand extends Command
	{
		/**
		 * 重要提示
		 * @see user.def.ImportantNoticeTypeDef
		 */
		public var types:Vector.<uint>;
		
		/**
		 * 构造函数
		 * create a [ClearImportantNoticeCommand] object
		 * @param	type @see user.def.ImportantNoticeTypeDef
		 */
		public function ClearImportantNoticeCommand(type:uint, ...args)
		{
			var list:Array = [type].concat(args);
			this.types = Vector.<uint>(list);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.USER;
		}
	}

}