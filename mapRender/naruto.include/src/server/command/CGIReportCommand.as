package server.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import base.ApplicationData;
	
	import def.PluginDef;
	
	public class CGIReportCommand extends Command
	{
		public var reportInfo:Array = [];
		
		public function CGIReportCommand(type:int, params:Array)
		{
			super();
			
			reportInfo.push({name:"type", value:type});
			reportInfo.push({name:"uin", value:ApplicationData.singleton.selfuin});
			reportInfo.push({name:"zone", value:ApplicationData.singleton.ser_id});
			reportInfo.push({name:"host", value:ApplicationData.singleton.ip});
			reportInfo.push({name:"port", value:ApplicationData.singleton.port});
			reportInfo = reportInfo.concat(params);
		}
		
		
		override public function getPluginName():String
		{
			return PluginDef.NARUTO_SERVER;
		}
	}
}