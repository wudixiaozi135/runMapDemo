package hud.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class UpdateHudMoneyLockCommand extends Command
	{
		public var lock:Boolean;
        public var type:int;
		
		public function UpdateHudMoneyLockCommand(lock:Boolean, type:int)
		{
			super();
			
			this.lock = lock;
            this.type = type;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.HUD;
		}
	}
}