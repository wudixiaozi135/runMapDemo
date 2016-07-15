package npc.commands
{
	public class CreateKnowledgeNpcCommand extends BaseNpcCommand
	{
		public var resId:int;
		public var name:String;
		public var posX:int;
		public var posY:int;
		/**
		 * 创建喵问答里面的答题NPC
		 */
		public function CreateKnowledgeNpcCommand(resId:int, name:String, posX:int, posY:int)
		{
			super();
			
			this.resId = resId;
			this.name = name;
			this.posX = posX;
			this.posY = posY;
		}
	}
}