package expeditionary.command
{
	import base.NarutoCommand;
	
	import def.PluginDef;
	
	public class OpenExpeditionaryCommand extends NarutoCommand
	{
		/**
		 * 后台返回码
		 */
		public var isRefresh:Boolean = true;
		public var isShowFinish:Boolean = true;
		public function OpenExpeditionaryCommand(_isRefresh:Boolean= true,showFinish:Boolean = false)
		{
			isRefresh = _isRefresh;
			isShowFinish = showFinish;
			super(2);
		}
		
		override public function getPluginName():String
		{
			return PluginDef.EXPEDITIONARY;
		}
	}
}
