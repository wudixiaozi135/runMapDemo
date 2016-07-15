package npc.commands
{
	import com.tencent.morefun.framework.base.Command;

	/**
	 * 装载已加载好的MapNpc
	 */
	public class LadeNpcCommand extends BaseNpcCommand
	{
		public var config:XML;
		public function LadeNpcCommand(config:XML)
		{
			super(Command.FULL_SCREEN | Command.TOTAL_FILE);
			
			this.config = config;
		}
	}
}