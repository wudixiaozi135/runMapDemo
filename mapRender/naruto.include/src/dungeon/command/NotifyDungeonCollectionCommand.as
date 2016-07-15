package dungeon.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class NotifyDungeonCollectionCommand extends Command
	{
		public var collectionArr:Array;
		public var add:Boolean;
		
		public function NotifyDungeonCollectionCommand(collectionArr:Array, add:Boolean = false)
		{
			super();
			this.collectionArr = collectionArr;
			this.add = add;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.DUNGEON;
		}
	}
}