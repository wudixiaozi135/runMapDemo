package task.defs
{
	public class TaskReceiveTypeDef
	{
		/** 2.自动领取 且 弹出任务领取面板 */
		public static const AUTO_RECEIVE_AND_OPEN_RECEIVE_PANEL:int = 2;
		/** 4.NPC处领取 */
		public static const NPC:int = 4;
		/** 5.任务领取面板 */
		public static const PANEL:int = 5;
		
//		public static function needAutoOpenReceivePanel(type:int):Boolean
//		{
//			switch(type)
//			{
//				case 1:
//				case 2:
//				case 3:
//					return true;
//					break;
//			}
//			return false;
//		}
		
		public function TaskReceiveTypeDef()
		{
		}
	}
}