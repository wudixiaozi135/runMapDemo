package guild.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	/**
	 *打开公会面板 
	 * @author georgehu
	 * 
	 */	
	public class OpenGuildCommand extends NarutoCommand
	{
		/**
		 * 后台返回码
		 */
		public var errorCode:int;
		/**
		 * 
		 *  要打开的标签 从0开始
		 */
		public var tabIdx:int;
		public function OpenGuildCommand(_tabidx:int=0)
		{
			tabIdx=_tabidx;
			super(2);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.GUILD;
		}
	}
}
