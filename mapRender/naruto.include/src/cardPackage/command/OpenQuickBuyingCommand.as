package cardPackage.command
{
    import com.tencent.morefun.framework.base.Command;
    
    import def.PluginDef;
    
    public class OpenQuickBuyingCommand extends Command
    {
        public var itemId:uint;
        public var itemNum:int;
        public var label:String;
        public var onSuccess:Function;
        public var onFailed:Function;

        public function OpenQuickBuyingCommand(itemId:uint, itemNum:int=1, label:String="", onSuccess:Function=null, onFailed:Function=null)
        {
            super();

            this.itemId = itemId;
            this.itemNum = itemNum;
            this.label = label;
            this.onSuccess = onSuccess;
            this.onFailed = onFailed;
        }

        override public function getPluginName():String
        {
            return PluginDef.RSMODEL;
        }
    }
}