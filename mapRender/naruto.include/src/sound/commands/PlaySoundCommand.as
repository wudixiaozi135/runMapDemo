package sound.commands 
{
	
	/**
	 * 播放音效
	 * @author larryhou
	 * @createTime 2013/11/19 20:37
	 */
	public class PlaySoundCommand extends PlayUISoundCommand
	{
		/**
		 * 音效播放音量
		 */
		public var volume:uint;
		
		/**
		 * 构造函数
		 * create a [PlaySoundCommand] object
		 */
		public function PlaySoundCommand(id:uint, volume:uint = 100) 
		{
			this.volume = volume;
			super(id);
		}
	}

}