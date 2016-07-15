package cardPackage.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	/**
	 * ...
	 * @author larryhou
	 * @createTime 2015/9/2 19:51
	 */
	public class QueryMysteryChestOpenCommand extends Command
	{
		public var isChestOpen:Boolean;
		
		/**
		 * 构造函数
		 * create a [QueryChestOpenCommand] object
		 */
		public function QueryMysteryChestOpenCommand() 
		{
			
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.CARD_PACKAGE;
		}
	}

}