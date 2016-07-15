package user.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class RequestLoginCommand extends Command
	{
		public var uin:uint;
		public var role:int;
		public var channel:int;
		
		public function RequestLoginCommand(uin:uint, role:int, channel:int)
		{
			super();
			
			this.uin = uin;
			this.role = role;
			this.channel = channel;
		}
		
		override public function getPluginName():String
		{
			return PluginDef.USER;
		}
	}
}