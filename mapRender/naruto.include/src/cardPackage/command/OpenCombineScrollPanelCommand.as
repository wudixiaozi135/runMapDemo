package cardPackage.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	/**
	 * @author woodychen
	 * @createTime 2015-6-16 下午5:57:01
	 **/
	public class OpenCombineScrollPanelCommand extends Command
	{
		public var pieceId:int;
		
		public function OpenCombineScrollPanelCommand(pieceId:int)
		{
			super();
			this.pieceId = pieceId;
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.CARD_PACKAGE;
		}
	}
}