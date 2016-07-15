package task.commands
{
	public class HrefEventCommand extends TaskBaseCommand
	{
		/**
		 * 悬赏任务NPC
		 */
		public static const DATA_LARGESS_NPC:String = "goto,2015002,26900615";
		/**
		 * 押镖任务NPC
		 */
		public static const DATA_ESCORT_NPC:String = "cgoto,1003001,26900622";
		/**
		 * 通缉任务NPC
		 */
		public static const DATA_WANTED_NPC:String = "cgoto,2015003,26900623";
		
		public var data:String;
		
		public function HrefEventCommand(data:String)
		{
			this.data = data;
			super();
		}
	}
}