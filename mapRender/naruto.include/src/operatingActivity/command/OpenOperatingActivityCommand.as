package operatingActivity.command
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
    public class OpenOperatingActivityCommand extends Command
    {
		public var activityID:int;
        public function OpenOperatingActivityCommand(activityID:int=0)
        {
			this.activityID = activityID;
            super();
        }
		
        override public function getPluginName():String
        {
            return PluginDef.OPERATING_ACTIVITY;
        }
    }
}
