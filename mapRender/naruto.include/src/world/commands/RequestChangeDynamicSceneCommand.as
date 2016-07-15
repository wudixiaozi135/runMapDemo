package world.commands
{
	public class RequestChangeDynamicSceneCommand extends BaseWorldCommand
	{
		/**
		 * 要切哪个场景
		 * @see serverProto.zone.ProtoDynamicSceneType
		 */
		public var type:int;
		/**
		 * 进入或离开
		 * @see serverProto.zone.ProtoDynamicSceneOperate
		 */
		public var operate:int;
		/**
		 * 
		 * @param type 要切哪个场景
		 * @param operate 进入或离开
		 * 
		 * @see serverProto.zone.ProtoDynamicSceneType
		 * @see serverProto.zone.ProtoDynamicSceneOperate
		 */		
		public function RequestChangeDynamicSceneCommand(type:int, operate:int)
		{
			super();
			
			this.type = type;
			this.operate = operate;
		}
	}
}