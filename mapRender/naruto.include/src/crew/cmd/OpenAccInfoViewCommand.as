package crew.cmd
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
    
    
    
    public class OpenAccInfoViewCommand extends Command
    {
		public var attrInfo:Object;
		/**1 成功，2晋级查看*/
		public var type:int;
        public function OpenAccInfoViewCommand()
        {
            super();
        }

        override public function getPluginName():String
        {
            return PluginDef.CREW;
        }
    }
}