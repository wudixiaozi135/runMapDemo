package crew.cmd
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class OpenMoodBoxCommand extends Command
	{
		public var ninjaId:int;
		public var ninjaSequence:uint;
		
		public function OpenMoodBoxCommand(ninjaSequence:uint, ninjaId:int)
		{
			super();
			
			this.ninjaId = ninjaId;
			this.ninjaSequence = ninjaSequence;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.CREW;
		}
	}
}