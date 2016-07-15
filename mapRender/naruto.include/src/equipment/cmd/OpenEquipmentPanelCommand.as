package equipment.cmd
{
    import equipment.data.EquipmentSelectionData;
    import equipment.def.EquipmentViewDef;

    public class OpenEquipmentPanelCommand extends BaseEquipmentCommand
    {
        public var viewId:int;
        public var data:EquipmentSelectionData;

        public function OpenEquipmentPanelCommand(viewId:int=EquipmentViewDef.UPGRADE, data:EquipmentSelectionData=null)
        {
            super();

            this.viewId = viewId;
            this.data = data;
        }
    }
}