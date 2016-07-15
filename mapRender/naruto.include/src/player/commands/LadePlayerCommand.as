package player.commands
{
	import com.tencent.morefun.framework.base.Command;
	
	import flash.geom.Point;
	
	
	public class LadePlayerCommand extends BasePlayerCommand
	{
		public var leaderNinjaIds:Vector.<uint>;
		public var position:Point;
		public var direction:int;
		
		public function LadePlayerCommand(leaderNinjaIds:String, position:Point, direction:int)
		{
			super(Command.FULL_SCREEN | Command.TOTAL_FILE);
			
			this.position = position;
			this.direction = direction;
			
			leaderNinjaIds = leaderNinjaIds.replace(/ /g, "");
			if (leaderNinjaIds)
			{
				this.leaderNinjaIds = new Vector.<uint>();
				var ids:Array = leaderNinjaIds.split(",");
				var len:int = ids.length;
				var ninjaID:uint;
				for (var i:int = 0; i < len; i++)
				{
					ninjaID = uint(ids[i]);
					if (ninjaID)
					{
						this.leaderNinjaIds.push(ninjaID);
					}
				}
			}
		}
		
	}
}