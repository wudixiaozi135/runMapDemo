package team.cmd
{
    import com.tencent.morefun.framework.base.Command;
    
    import def.PluginDef;

    public class OpenTeamPanelCommand extends Command
    {
		public var typeIndex:int;
		/**
		 * 0为普通，1修行任务
		 */		
        public function OpenTeamPanelCommand(typeIndex:int=0)
        {
            super();
			this.typeIndex = typeIndex;
        }

        override public function getPluginName():String
        {
            return PluginDef.TEAM;
        }
    }
}