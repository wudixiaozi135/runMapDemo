package bag.utils
{
    import RSModel.IRSModelPlugin;
    
    import bag.BagConst;
    import bag.conf.BagItemConf;
    import bag.data.BeastFragmentData;
    import bag.data.BeastRuneData;
    import bag.data.CardItemData;
    import bag.data.CommonItemData;
    import bag.data.EquipmentItemData;
    import bag.data.GemItemData;
    import bag.data.ItemData;
    import bag.data.TreasureMapItemData;
    import bag.def.ItemTabs;
    import bag.model.BagModel;
    
    import base.ApplicationData;
    
    import cfgData.dataStruct.FashionItemCFG;
    
    import com.tencent.morefun.framework.apf.core.facade.Facade;
    import com.tencent.morefun.framework.apf.core.plugin.Plugin;
    import com.tencent.morefun.framework.loader.FileManager;
    import com.tencent.morefun.naruto.util.StrReplacer;
    
    import crew.cmd.RequestNinjaPropsCfgCommand;
    import crew.data.NinjaPropsCfgInfo;
    import crew.model.NinjaPropsModel;
    
    import def.ModelDef;
    import def.PluginDef;

    public class BagUtils
    {
        public static const QUALITY_COLORS:Array                =   [0xFFFFFF, 0x00CE30, 0x1BB1F4, 0xB463FF, 0xFFBA00, 0xEB3A37]; //白绿蓝紫橙红
        public static const PLAYER_FRAGMENT_RES_IDS:Array       =   [204001251, 204001252, 204001253, 204001254, 204001255];    // 水女，火男，风女，雷男，土男
        public static const PLAYER_PREVIEW_RES_IDS:Array        =   [10000101, 10000201, 10000301, 10000401, 10000501];         // 水女，火男，风女，雷男，土男
        public static const PLAYER_NINJA_ID:uint                =   20400125;   // 主角卡ID
        public static const MONEY_ID:uint                       =   11000001;   // 铜币
        public static const DIANQUAN_ID:uint                    =   11100002;   // 点券
        public static const YUANBAO_ID:uint                     =   11300003;   // 元宝
        public static const STAMINA_ID:uint                     =   11200004;   // 体力
        public static const STRENGTH_ITEM:uint                  =   1005;       // 体力药水（回复体力效果）

        public static function get plugin():IRSModelPlugin
        {
            return Facade.getInstance().retrievePlugin(PluginDef.RSMODEL) as IRSModelPlugin;
        }

        public static function get model():BagModel
        {
            return (plugin as Plugin).retrieveModel(ModelDef.BAG) as BagModel;
        }

        public static function calcItemTab(id:uint):int
        {
            return id / 10000000;
        }

        public static function calcItemType(id:uint):int
        {
            return (id / 1000000) % 10;
        }

        public static function calcItemSubtype(id:uint):int
        {
            return (id / 100000) % 10;
        }

        public static function calcEquipmentType(id:uint):int
        {
            return (id / 1000) % 10;
        }

        public static function calcGemType(id:uint):int
        {
            return (id / 1000) % 10;
        }

        public static function isUsableItem(id:uint):Boolean
        {
            return calcItemTab(id) == ItemTabs.USABLE;
        }

        public static function isCardItem(id:uint):Boolean
        {
            return (uint(id / 100000)) == ItemTabs.CARD;
        }

        public static function isEquipmentItem(id:uint):Boolean
        {
            return calcItemTab(id) == ItemTabs.EQUIPMENT;
        }

        public static function isGemItem(id:uint):Boolean
        {
            return calcItemTab(id) == ItemTabs.GEM;
        }

        public static function isTaskItem(id:uint):Boolean
        {
            return calcItemTab(id) == ItemTabs.TASK;
        }

        public static function isNinjaPropsItem(id:uint):Boolean
        {
            return calcItemTab(id) == ItemTabs.NINJA_PROPS;
        }

        public static function isBeastFragment(id:uint):Boolean
        {
            return (uint(id / 100000)) == ItemTabs.BEAST_FRAGMENTS;
        }

        public static function isBeastRune(id:uint):Boolean
        {
            return (uint(id / 100000)) == ItemTabs.BEAST_RUNES;
        }

        public static function isRewardPackageItem(id:uint):Boolean
        {
            return calcItemTab(id) == ItemTabs.USABLE && calcItemType(id) == 0 && calcItemSubtype(id) == 1;
        }

        public static function isTreasureMapItem(id:uint):Boolean
        {
            return (uint(id / 100000)) == ItemTabs.TREASURE_MAP;
        }

		public static function isFashionItem(id:uint):Boolean
		{
			return (uint(id / 100000)) == ItemTabs.FASHION;
		}
		
        public static function isStrengthItem(id:uint):Boolean
        {
            var data:CommonItemData = createItemData(id, 0) as CommonItemData;

            return (data != null && data.val1 == STRENGTH_ITEM);
        }

        public static function isNameChangeItem(id:uint):Boolean
        {
            return calcItemTab(id) == ItemTabs.USABLE && calcItemType(id) == 2 && calcItemSubtype(id) == 6;
        }

        public static function isGuildNameChangeItem(id:uint):Boolean
        {
            return (id == 13500001);
        }

        public static function isMoney(id:uint):Boolean
        {
            return id == MONEY_ID;
        }

        public static function isDianquan(id:uint):Boolean
        {
            return id == DIANQUAN_ID;
        }

        public static function isYuanbao(id:uint):Boolean
        {
            return id == YUANBAO_ID;
        }

        public static function isStamina(id:uint):Boolean
        {
            return id == STAMINA_ID;
        }

        public static function createItemData(id:uint, num:int=0):ItemData
        {
            var data:ItemData;

            if (isNinjaPropsItem(id))
            {
                data = ninjaPropsModel != null ? ninjaPropsModel.getNinjaPropsCfgInfo(id) : null;

                if (data != null)
                    data.num = num;
            }
            else
            {
                if (isEquipmentItem(id))
                    data = new EquipmentItemData();
                else if (isGemItem(id))
                    data = new GemItemData();
                else if (isCardItem(id))
                    data = new CardItemData();
                else if (isNinjaPropsItem(id))
                    data = new NinjaPropsCfgInfo();
                else if (isBeastFragment(id))
                    data = new BeastFragmentData();
                else if (isBeastRune(id))
                    data = new BeastRuneData();
                else if (isTreasureMapItem(id))
                    data = new TreasureMapItemData();
                else
                    data = new CommonItemData();

                data.id = id;
                data.num = num;
                BagItemConf.fillData(data);
            }

            return data;
        }

        private static function get ninjaPropsModel():NinjaPropsModel
        {
            return Facade.getInstance().model.retrieveModel(ModelDef.NINJA_PROPS) as NinjaPropsModel;
        }

        public static function getColoredItemName(id:uint):String
        {
            var data:ItemData;

            if (isNinjaPropsItem(id))
            {
                var cmd:RequestNinjaPropsCfgCommand = new RequestNinjaPropsCfgCommand(Vector.<uint>([id]));
                cmd.call();
                data = cmd.props != null && cmd.props.length > 0 ? cmd.props[0] : null;
            }
            else
            {
                data = BagItemConf.findDataById(id);
            }

            if (data != null)
            {
                var str:String = "<font color='#" + data.color.toString(16) + "'>" + (isCardItem(data.id)? (data.name + (data as CardItemData).title) : data.name) + "</font>";

                return str;
            }
            else
            {
                return null;
            }
        }

        public static function getRewardDesc(id:uint, num:int):String
        {
            var str:String = "";
            var item:ItemData = BagUtils.createItemData(id, num);
            var name:String = (item != null && item.name != null) ? item.name : BagConst.UNKNOWN;

            switch (id)
            {
                case SpecialItemUtils.STRENGTH_ID:
                case SpecialItemUtils.PLAYER_EXP_ID:
                case SpecialItemUtils.NINJA_EXP_ID:
                case SpecialItemUtils.NINJA_ON_SQUAD_HP_ID:
                case SpecialItemUtils.NINJA_OFF_SQUAD_HP_ID:
                case SpecialItemUtils.CHAKRA_ID:
                    str = StrReplacer.replace(BagConst.SPECIAL_ITEM_DESC, [name, num]);
                    break;
                default:
                    str = StrReplacer.replace(BagConst.COMMON_ITEM_DESC, [name, num]);
            }

            return str;
        }

        public static function getItemResUrl(id:uint):String
        {
            if (id == PLAYER_NINJA_ID)
                id  = getPlayerFragmentResId();

            var url:String = getItemImgResRoot().replace("*", id);

            return FileManager.getQualifiedUrl(url);
        }

        public static function getNinjaCardResUrl(id:uint):String
        {
            return FileManager.getQualifiedUrl(getNinjaCardResRoot().replace("*", id));
        }

        public static function getNinjaPreviewResUrl(id:uint):String
        {
            if (id == PLAYER_NINJA_ID)
                id  = getPlayerPreviewResId();

            var url:String = getItemImgResRoot().replace("*", id);

            return FileManager.getQualifiedUrl(getNinjaPreviewResRoot().replace("*", id));
        }

        public static function getPlayerFragmentResId():uint
        {
            var ninjaType:int = ApplicationData.singleton.selfInfo.professions;

            return PLAYER_FRAGMENT_RES_IDS[ninjaType - 1];
        }

        public static function getPlayerPreviewResId():uint
        {
            var ninjaType:int = ApplicationData.singleton.selfInfo.professions;

            return PLAYER_PREVIEW_RES_IDS[ninjaType - 1];
        }

        public static function getColorValueByIndex(index:int):uint
        {
            if (index >= 0 && index < QUALITY_COLORS.length)
                return QUALITY_COLORS[index];
            else
                return QUALITY_COLORS[0];
        }

        private static function getItemImgResRoot():String
        {
            return "assets/bag/item/*.png";
        }

        private static function getItemSwfResRoot():String
        {
            return "assets/bag/item/*.swf";
        }

        private static function getNinjaCardResRoot():String
        {
            return "assets/bag/ninja/card/*.png";
        }

        private static function getNinjaPreviewResRoot():String
        {
            return "assets/bag/ninja/preview/*.png";
        }

        public function BagUtils()
        {
            throw new Error(BagUtils + " can not be instantiated.");
        }
    }
}