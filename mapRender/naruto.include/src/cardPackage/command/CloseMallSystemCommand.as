package cardPackage.command 
{
    import com.tencent.morefun.framework.base.Command;
    
    import def.PluginDef;
    
    /**
     * 关闭商城
     * @author blackqin
     * @createTime 2014/9/18 14:57
     */
    public class CloseMallSystemCommand extends Command
    {
        public function CloseMallSystemCommand() 
        {
            super();
        }
        
        override public function getPluginName():String 
        {
            return PluginDef.CARD_PACKAGE;
        }
        
    }

}