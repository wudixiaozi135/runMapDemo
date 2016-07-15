package npc.commands
{
	public class MoveAndSpeaKnowledgeNpcCommand extends BaseNpcCommand
	{
		public var resId:int;
		public var toNpcListId:int;
		public var speak:String;
		
		/**
		 * 让喵问答里面的答题npc移动到答案喵那里去，并且说话
		 */
		public function MoveAndSpeaKnowledgeNpcCommand(resId:int, toNpcListId:int, speak:String)
		{
			super();
			
			this.resId = resId;
			this.toNpcListId = toNpcListId;
			this.speak = speak;
		}
	}
}