package npc.commands
{
	public class PlayNpcActionCommand extends BaseNpcCommand
	{
		public var id:int;
		public var useListId:Boolean;
		public var action:String;
		public var loop:Boolean;
		/**
		 * 让npc播放动作
		 */
		public function PlayNpcActionCommand(id:int, useListId:Boolean, action:String, loop:Boolean = false)
		{
			super();
			
			this.id = id;
			this.useListId = useListId;
			this.action = action;
			this.loop = loop;
		}
	}
}