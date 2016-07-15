package sound.commands 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	
	/**
	 * 更改音效开关
	 * @author larryhou
	 * @createTime 2014/10/24 20:20
	 */
	public class ChangeAudioStatusCommand extends Command
	{
		/**
		 * 是否开启
		 */
		public var enabled:Boolean;
		
		/**
		 * 构造函数
		 * create a [ChangeAudioStatusCommand] object
		 */
		public function ChangeAudioStatusCommand(enabled:Boolean) 
		{
			this.enabled = enabled;
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.SOUND;
		}
	}

}