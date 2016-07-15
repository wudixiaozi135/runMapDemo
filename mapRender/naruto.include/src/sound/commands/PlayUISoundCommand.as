package sound.commands 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	/**
	 * 播放UI音效命令
	 * @author larryhou
	 * @createTime 2013/11/19 20:39
	 */
	public class PlayUISoundCommand extends Command
	{
		/**
		 * UI音效id
		 * @see sound.def.UISoundDef
		 */
		public var id:uint;
		
		/**
		 * 构造函数
		 * create a [PlayUISoundCommand] object
		 */
		public function PlayUISoundCommand(id:uint) 
		{
			this.id = id;
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.SOUND;
		}
	}

}