package cardPackage.command 
{
    import com.tencent.morefun.framework.base.Command;
    
    import def.PluginDef;
    
    /**
     * 关闭抽卡
     * @author blackqin
     * @createTime 2014/9/18 14:58
     */
    public class CloseCardPackageCommand extends Command
    {
        public function CloseCardPackageCommand() 
        {
            super();
        }
        
        override public function getPluginName():String 
        {
            return PluginDef.CARD_PACKAGE;
        }
        
    }

}