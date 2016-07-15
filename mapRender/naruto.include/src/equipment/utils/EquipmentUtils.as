package equipment.utils
{
    import com.tencent.morefun.framework.apf.core.facade.Facade;
    import com.tencent.morefun.framework.apf.core.plugin.Plugin;
    
    import RSModel.IRSModelPlugin;
    
    import bag.data.EquipmentItemData;
    import bag.model.BagModel;
    import bag.utils.BagUtils;
    
    import def.ModelDef;
    import def.PluginDef;
    
    import equipment.model.EquipmentModel;
    
    import user.model.UserModel;

    import com.tencent.morefun.naruto.i18n.I18n;
    public class EquipmentUtils
    {
        public static const MIN_LEVEL:int                   =   1;
        public static const VAL_LABELS:Array                =   [I18n.lang("as_include_1451031571_3207_0"), I18n.lang("as_include_1451031571_3207_1"), I18n.lang("as_include_1451031571_3207_2"), I18n.lang("as_include_1451031571_3207_3"), I18n.lang("as_include_1451031571_3207_4")];
        public static const FORGE_VAL_LABELS:Array          =   [I18n.lang("as_include_1451031571_3208_0"), I18n.lang("as_include_1451031571_3208_1"), I18n.lang("as_include_1451031571_3208_2"), I18n.lang("as_include_1451031571_3208_3"), I18n.lang("as_include_1451031571_3208_4")];
        public static const FORGE_QUALITY_PERCENTS:Array    =   [1, 21, 41, 61, 81];
        public static const FORGE_QUALITY_COLORS:Array      =   [0xFFFFFF, 0x00CE30, 0x1BB1F4, 0xB463FF, 0xFFBA00]; //白绿蓝紫橙
        public static const FORGE_MAX_LEVEL:int             =   10;
        public static const FORGE_PROP_OPEN_LEVEL:int       =   40;
        public static const FORGE_QUALITY_OPEN_LEVEL:int    =   45;
        public static const VALUE_TYPE_NUM:int              =   5;
        public static const SCROLL_ITEM_ID:uint             =   10600005;

        public static function get plugin():IRSModelPlugin
        {
            return Facade.getInstance().retrievePlugin(PluginDef.RSMODEL) as IRSModelPlugin;
        }

        public static function get model():EquipmentModel
        {
            return (plugin as Plugin).retrieveModel(ModelDef.EQUIPMENT) as EquipmentModel;
        }

        public static function get bagModel():BagModel
        {
            return (plugin as Plugin).retrieveModel(ModelDef.BAG) as BagModel;
        }

        public static function get userModel():UserModel
        {
            return (plugin as Plugin).retrieveModel(ModelDef.USER) as UserModel;
        }

        public static function calcValue(data:EquipmentItemData):int
        {
            if (data == null)
                return 0;

            var type:int = BagUtils.calcEquipmentType(data.id);

            if (type > 0)
                return data["val" + type];
            else
                return 0;
        }

        public static function calcUpgradeValue(data:EquipmentItemData):int
        {
            if (data == null)
                return 0;

            var type:int = BagUtils.calcEquipmentType(data.id);

            if (type > 0)
                return data["upgradeVal" + type];
            else
                return 0;
        }

        public static function getScrollNum():int
        {
            return BagUtils.model.getTotalItemNumById(SCROLL_ITEM_ID);
        }

        public static function getForgeQualityColor(qualityPercent:int):uint
        {
            var index:int = 0;

            if (qualityPercent < EquipmentUtils.FORGE_QUALITY_PERCENTS[1])
                index = 0;
            else if (qualityPercent < EquipmentUtils.FORGE_QUALITY_PERCENTS[2])
                index = 1;
            else if (qualityPercent < EquipmentUtils.FORGE_QUALITY_PERCENTS[3])
                index = 2;
            else if (qualityPercent < EquipmentUtils.FORGE_QUALITY_PERCENTS[4])
                index = 3;
            else
                index = 4;

            return EquipmentUtils.FORGE_QUALITY_COLORS[index];
        }

        public function EquipmentUtils()
        {
            throw new Error(EquipmentUtils + " can not be instantiated.");
        }
    }
}