package equipment.cmd
{
    import RSModel.command.RSModelCommand;
    
    import bag.data.EquipmentItemData;
    import bag.data.GemItemData;

    public class UpgradeGemCommand extends RSModelCommand
    {
        public var equipmentData:EquipmentItemData;
        public var upgradingGemIndex:int;
        public var materialGems:Vector.<GemItemData>;

        public function UpgradeGemCommand(equipmentData:EquipmentItemData, upgradingGemIndex:int, materialGems:Vector.<GemItemData>)
        {
            super();

            this.equipmentData = equipmentData;
            this.upgradingGemIndex = upgradingGemIndex;
            this.materialGems = materialGems;
        }
    }
}