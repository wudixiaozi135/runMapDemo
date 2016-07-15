package ninja.command 
{
    import com.tencent.morefun.framework.base.Command;
    
    import def.PluginDef;

    public class OpenCopyFormationPanelCommand extends Command
    {
        public function OpenCopyFormationPanelCommand()
        {
        }

        override public function getPluginName():String
        {
            return PluginDef.NINJA;
        }
    }

}