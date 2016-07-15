package ui.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	
	
	/**
	 * 显示带头像提示框
	 * @author larryhou
	 * @createTime 2013/8/29 18:44
	 */
	public class ShowTextMsgWithImageCommand extends Command
	{
		/**
		 * 图片url
		 */
		public var image:String;
		
		/**
		 * 提示文字内容
		 */
		public var htmlText:String;
		
		/**
		 * tips显示时间：毫秒
		 */
		public var duration:uint;
		
		/**
		 * 构造函数
		 * create a [ShowTextMsgWithImageCommand] object
		 */
		public function ShowTextMsgWithImageCommand(htmlText:String, image:String, duration:uint = 0) 
		{
			this.htmlText = htmlText; this.image = image; this.duration = duration;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.NPC;
		}
	}

}