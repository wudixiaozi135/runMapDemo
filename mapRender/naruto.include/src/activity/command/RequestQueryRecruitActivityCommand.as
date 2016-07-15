package activity.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	import serverProto.activity.ProtoAwardPackageBox;
	
	public class RequestQueryRecruitActivityCommand extends Command
	{
		public var awards:Vector.<ProtoAwardPackageBox>;
		public var beginTime:uint;
		public var endTime:uint;
		public var fengyinSplit:Array;
		public var currFengyin:int;
		
		public function RequestQueryRecruitActivityCommand()
		{
			super();
		}
		
		override public function getPluginName():String
		{
			return PluginDef.ACTIVITY;
		}
	}
}