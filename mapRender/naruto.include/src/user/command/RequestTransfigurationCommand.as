package user.command
{
	import serverProto.user.ProtoTransfigurationInfo;

	public class RequestTransfigurationCommand extends BaseUserCommand
	{
		public var ninjaSeq:uint;
		public var isAutoBuy:Boolean;
		public var type:int;
		
		public var info:ProtoTransfigurationInfo;
		
		
		public function RequestTransfigurationCommand(ninjaSeq:uint, isAutoBuy:Boolean,type:int)
		{
			super();
			
			this.ninjaSeq = ninjaSeq;
			this.isAutoBuy = isAutoBuy;
			this.type = type;
		}
	}
}