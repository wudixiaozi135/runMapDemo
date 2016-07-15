package crew.cmd
{
    import com.tencent.morefun.framework.base.Command;
	import crew.def.MajorRoleTabDef;
    
    
    
    import def.PluginDef;
    
    public class OpenCrewCommand extends Command
    {
        public var viewId:int;
		
		/**
		 * 打开页签id @see crew.def.MajorRoleTabDef
		 */
		public var pageTab:uint;
		
		/**
		 * 页签透传数据
		 */
		public var data:*;

        public function OpenCrewCommand(viewId:int = 1, pageTab:uint = 1, data:* = null)
        {
            super();

            this.viewId = viewId;
			this.pageTab = pageTab;
			this.data = data;
        }

        override public function getPluginName():String
        {
            return PluginDef.CREW;
        }
    }
}