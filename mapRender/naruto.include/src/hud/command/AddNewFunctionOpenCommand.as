package hud.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	/**
	 * @author woodychen
	 * @createTime 2014-10-30 下午2:38:49
	 **/
	public class AddNewFunctionOpenCommand extends Command
	{
		public var protoHudType:int;
		
		public function AddNewFunctionOpenCommand(protoHudType:int)
		{
			super();
			this.protoHudType = protoHudType;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.HUD;
		}
	}
}