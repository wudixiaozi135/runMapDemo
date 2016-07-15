package task.defs
{
	public class TaskStateDef
	{
		/**可接、未接*/
		public static const RECEIVE_ABLE:int = 0;
		/**已接，未完成*/
		public static const RECEIVED:int = 1;
		/**可交，所有条件已完成*/
		public static const COMMIT_ABLE:int = 2;
		/**已交*/
		public static const COMMITED:int = 3;
		/** 已失败 */
		public static const FAILED:int = 4;
	}
}