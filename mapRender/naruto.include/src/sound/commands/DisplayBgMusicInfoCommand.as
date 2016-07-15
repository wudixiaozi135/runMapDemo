package sound.commands 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	/**
	 * 显示背景音乐信息
	 * @author larryhou
	 * @createTime 2014/5/24 14:58
	 */
	public class DisplayBgMusicInfoCommand extends Command
	{
		
		/**
		 * 构造函数
		 * create a [DisplayBgMusicInfoCommand] object
		 */
		public function DisplayBgMusicInfoCommand() 
		{
			
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.SOUND;
		}
	}

}