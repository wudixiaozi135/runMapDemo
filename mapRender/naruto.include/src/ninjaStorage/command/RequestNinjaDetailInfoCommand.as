package ninjaStorage.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	import ninja.model.data.NinjaInfo;
	
	public class RequestNinjaDetailInfoCommand extends Command
	{
		public var ninjaSeq:int;
		public var ninjaInfo:NinjaInfo;
		
		public function RequestNinjaDetailInfoCommand(ninjaSeq:int)
		{
			super();
			this.ninjaSeq = ninjaSeq;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.NINJA_STORAGE;
		}
	}
}