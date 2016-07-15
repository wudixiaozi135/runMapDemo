package player.commands
{
	import flash.geom.Point;
	
	import user.def.UserStateDef;

	public class CrossSceneGotoPixelPointCommand extends BasePlayerCommand
	{
		public var sceneId:int;
		public var point:Point;
		
		public function CrossSceneGotoPixelPointCommand(sceneId:int, pointX:int, pointY:int)
		{
			super();
			this.sceneId = sceneId;
//			this.point = point;
			this.point = new Point(pointX, pointY);
			
			this.addEnableStateInfo(UserStateDef.ACTION_CAN_WALK, true);
		}
	}
}