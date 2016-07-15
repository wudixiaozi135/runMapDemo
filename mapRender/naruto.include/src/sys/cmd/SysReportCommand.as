package sys.cmd
{
    import com.tencent.morefun.framework.base.Command;
    
    import def.PluginDef;
    
    public class SysReportCommand extends Command
    {
        public var id:uint;
        public var msg:Object;
        public var via:String;
        public function SysReportCommand(id:uint, msg:Object=null, via:String="")
        {
            super();

            this.id = id;
            this.msg = msg;
            this.via = via;
        }

        override public function getPluginName():String
        {
            return PluginDef.NARUTO_SERVER;
        }
    }
}