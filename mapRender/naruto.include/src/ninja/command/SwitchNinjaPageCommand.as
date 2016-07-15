package ninja.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class SwitchNinjaPageCommand extends Command
	{
		public var id:uint;
		public var data:Object;
		
		public function SwitchNinjaPageCommand(id:uint, data:Object = null)
		{
			super();
			this.id = id;
			this.data = data;
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.NINJA;
		}
	}
}