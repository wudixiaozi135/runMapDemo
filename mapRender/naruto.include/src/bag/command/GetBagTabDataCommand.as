package bag.command
{
    import RSModel.command.RSModelCommand;
    
    public class GetBagTabDataCommand extends RSModelCommand
    {
        public var tab:int;                     // 请求的物品类别，详细参见ItemTabs
        public var forceUpdate:Boolean;         // 是否从服务器拉数据（否的话返回缓存数据）
        public var data:Object;                 // 类型可能是 Vector.<ItemData> or Vector.<TaskItemData> or Vector.<EquipmentItemData>

        public function GetBagTabDataCommand(tab:int=0, forceUpdate:Boolean=false)
        {
            super();

            this.tab = tab;
            this.forceUpdate = forceUpdate;
        }
    }
}