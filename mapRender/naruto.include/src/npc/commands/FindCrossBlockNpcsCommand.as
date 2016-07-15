package npc.commands
{
	import flash.geom.Point;

	/**
	 * @author woodychen
	 * @createTime 2014-5-25 下午7:27:34
	 **/
	public class FindCrossBlockNpcsCommand extends BaseNpcCommand
	{
		public var fromPoint:Point;
		public var toPoint:Point;
		public var npcIds:Array;
		
		public function FindCrossBlockNpcsCommand(fromPoint:Point, toPoint:Point)
		{
			super();
			this.fromPoint = fromPoint;
			this.toPoint = toPoint;
		}
	}
}