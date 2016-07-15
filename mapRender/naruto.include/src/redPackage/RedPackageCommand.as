package redPackage
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	public class RedPackageCommand extends Command
	{
		public var rechargeMoney:int;
		public var beginTime:uint;
		public var endTime:uint;
		public var returnMoney:int;
		public var sendDirectCount:int;
		public var recvDirectCount:int;
		public var sendWholeCount:int;
		public var recvWholeCount:int;
		
		public var award:Array;
		
		public function RedPackageCommand(commandLoadingType:int=2, autoHideLoading:Boolean=true)
		{
			super(commandLoadingType, autoHideLoading);
		}
		
		override public function getPluginName():String {
			return PluginDef.OPERATING_ACTIVITY;
		}
	}
}