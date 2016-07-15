package cardPackage.command 
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	/**
	 * 打开卡包命令
	 * @author larryhou
	 * @createTime 2013/8/1 14:57
	 */
	public class OpenCardPackageCommand extends Command
	{
		/**
		 * 构造函数
		 * create a [OpenCardPackageCommand] object
		 */
		public var data:*=null;
		/**
		 * 子页签
		 * @see cardPackage.def.CardpkgTabDef
		 */
		public var pkgTab:uint;
		/**
		 * 打开指定的TAB 数字  从1开始 
		 * 或者字符串 1:100100  就是跳转到TAB并选中指定的物品
		 * @Add By:Gerogehu
		 */
		public function OpenCardPackageCommand(postDdata:*=null,pkgTab:int = 0) 
		{
			data = postDdata;
			this.pkgTab = pkgTab;
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.CARD_PACKAGE;
		}
		
	}

}