package bag.utils
{
    import flash.geom.Point;
    
    import bag.conf.BagItemConf;
    import bag.data.BeastFragmentData;
    import bag.data.BeastRuneData;
    import bag.data.CardItemData;
    import bag.data.CommonItemData;
    import bag.data.EquipmentItemData;
    import bag.data.GemItemData;
    import bag.data.ItemData;
    import bag.data.TaskItemData;
    import bag.data.TreasureMapItemData;
    
    import equipment.utils.EquipmentUtils;
    
    import serverProto.bag.ProtoBagCardInfo;
    import serverProto.bag.ProtoBagItemInfo;
    import serverProto.bag.ProtoBagRuneInfo;
    import serverProto.bag.ProtoBagSummonMonsterCardInfo;
    import serverProto.bag.ProtoBagTreasureMapInfo;
    import serverProto.bag.ProtoCommonItemInfo;
    import serverProto.bag.ProtoEquipInfo;
    import serverProto.bag.ProtoJadeInfo;
    import serverProto.bag.ProtoTaskItemInfo;

    public class BagProtoParser
    {
        public static function parseCommonItemProto(proto:ProtoCommonItemInfo, index:int=0):CommonItemData
        {
            if (proto == null)
                return null;

            var data:CommonItemData = new CommonItemData();
            data.id = proto.id;
            data.index = index;
            data.num = proto.num;
            data.expireTime = new Date(proto.expiredTime * 1000);
            data.expireSeconds = proto.expiredRemainderSecond;

            BagItemConf.fillData(data);
            return data;
        }

        public static function parseEquipmentProto(proto:ProtoEquipInfo, index:int=0):EquipmentItemData
        {
            if (proto == null)
                return null;

            var data:EquipmentItemData = new EquipmentItemData();
            data.id = proto.id;
            data.sequenceId = proto.sequence.toString();
            data.index = index;
            data.num = proto.num;
            data.level = proto.level;
            data.gems = parseGemsProto(proto.inlay);
            data.forgeLevel = proto.forgeLevel;
            data.forgeLevelMax = EquipmentUtils.FORGE_MAX_LEVEL;
            data.forgePropVal1 = proto.forgeAttr[0];
            data.forgePropVal2 = proto.forgeAttr[1];
            data.forgePropVal3 = proto.forgeAttr[2];
            data.forgePropVal4 = proto.forgeAttr[3];
            data.forgePropVal5 = proto.forgeAttr[4];
            data.forgeQualityPercent1 = proto.forgeQualityAttr[0];
            data.forgeQualityPercent2 = proto.forgeQualityAttr[1];
            data.forgeQualityPercent3 = proto.forgeQualityAttr[2];
            data.forgeQualityPercent4 = proto.forgeQualityAttr[3];
            data.forgeQualityPercent5 = proto.forgeQualityAttr[4];

            refreshForgeQualityValues(data);
            BagItemConf.fillData(data);

            return data;
        }

        public static function refreshForgeQualityValues(data:EquipmentItemData):void
        {
            if (data == null)
                return;

            data.forgeQualityVal1 = calcForgeQualityValueByPercent(data.forgePropVal1, data.forgeQualityPercent1);
            data.forgeQualityVal2 = calcForgeQualityValueByPercent(data.forgePropVal2, data.forgeQualityPercent2);
            data.forgeQualityVal3 = calcForgeQualityValueByPercent(data.forgePropVal3, data.forgeQualityPercent3);
            data.forgeQualityVal4 = calcForgeQualityValueByPercent(data.forgePropVal4, data.forgeQualityPercent4);
            data.forgeQualityVal5 = calcForgeQualityValueByPercent(data.forgePropVal5, data.forgeQualityPercent5);
        }

        private static function calcForgeQualityValueByPercent(propValue:int, qualityPercent:int):int
        {
            if (propValue <= 0 || qualityPercent <= 0)
                return 0;

            var value:int = propValue * qualityPercent / 100;

            return value > 0 ? value : 1;
        }

        public static function parseGemProto(proto:ProtoJadeInfo, index:int=0):GemItemData
        {
            if (proto == null)
                return null;

            var data:GemItemData = new GemItemData();
            data.id = proto.id;
            data.index = index;
            data.num = proto.num;
            data.exp = proto.exp;
            data.isUltimate = proto.isUltimate;

            BagItemConf.fillData(data);
            return data;
        }

        public static function parseGemsProto(arr:Array):Vector.<GemItemData>
        {
            if (arr == null)
                return null;

            var len:int = arr.length;
            var proto:ProtoJadeInfo;
            var dataList:Vector.<GemItemData> = new Vector.<GemItemData>();
            var data:GemItemData;

            for (var i:int=0; i<len; ++i)
            {
                proto = arr[i] as ProtoJadeInfo;
                data = parseGemProto(proto, i);
                dataList[i] = data;
            }

            return dataList;
        }

        public static function parseCardProto(proto:ProtoBagCardInfo, index:int=0):CardItemData
        {
            if (proto == null)
                return null;

            var data:CardItemData = new CardItemData();
            data.id = proto.id;
            data.index = index;
            data.num = proto.num;
            data.combat = proto.combat;
            data.state = proto.recruitStatus;

            BagItemConf.fillData(data);
            return data;
        }

        public static function parseItems(items:Array):Vector.<ItemData>
        {
            if (items == null)
                return null;

            var len:int = items.length;
            var item:ProtoBagItemInfo;
            var data:ItemData;
            var arr:Array = [];

            for (var i:int=0; i<len; ++i)
            {
                item = items[i] as ProtoBagItemInfo;
                data = null;

                if (item.hasCommonItemInfo)
                    data = parseCommonItemProto(item.commonItemInfo, i);
                else if (item.hasJadeInfo)
                    data = parseGemProto(item.jadeInfo, i);

                if (data != null)
                    arr.push(data);
            }

            return Vector.<ItemData>(arr);
        }

        public static function parseTaskItems(items:Array):Vector.<TaskItemData>
        {
            if (items == null)
                return null;

            var len:int = items.length;
            var item:ProtoTaskItemInfo;
            var data:TaskItemData;
            var arr:Array = [];

            for (var i:int=0; i<len; ++i)
            {
                item = items[i] as ProtoTaskItemInfo;
                data = parseTaskProto(item, i);

                arr.push(data);
            }

            return Vector.<TaskItemData>(arr);
        }

        public static function parseEquipmentItems(items:Array):Vector.<EquipmentItemData>
        {
            if (items == null)
                return null;

            var len:int = items.length;
            var proto:ProtoEquipInfo;
            var data:EquipmentItemData;
            var arr:Array = [];

            for (var i:int=0; i<len; ++i)
            {
                proto = items[i] as ProtoEquipInfo;
                data = parseEquipmentProto(proto, i);

                arr.push(data);
            }

            return Vector.<EquipmentItemData>(arr);
        }

        public static function parseGems(items:Array):Vector.<GemItemData>
        {
            if (items == null)
                return null;

            var len:int = items.length;
            var proto:ProtoJadeInfo;
            var dataList:Vector.<GemItemData> = new Vector.<GemItemData>();
            var data:GemItemData;

            for (var i:int=0; i<len; ++i)
            {
                proto = items[i] as ProtoJadeInfo;
                data = parseGemProto(proto, i);

                dataList[i] = data;
            }

            return dataList;
        }

        public static function parseCardItems(items:Array):Vector.<CardItemData>
        {
            if (items == null)
                return null;

            var len:int = items.length;
            var item:ProtoBagCardInfo;
            var data:CardItemData;
            var arr:Array = [];

            for (var i:int=0; i<len; ++i)
            {
                item = items[i] as ProtoBagCardInfo;
                data = parseCardProto(item, i);

                arr.push(data);
            }

            return Vector.<CardItemData>(arr);
        }

        public static function parseTaskProto(proto:ProtoTaskItemInfo, index:int=0):TaskItemData
        {
            if (proto == null)
                return null;

            var data:TaskItemData = new TaskItemData();
            data.id = proto.id;
            data.index = index;
            data.num = proto.num;
            data.expireTime = new Date(proto.expiredTime * 1000);
            data.expireSeconds = proto.expiredRemainderSecond;

            BagItemConf.fillData(data);
            return data;
        }

        public static function parseBeastFragments(items:Array):Vector.<BeastFragmentData>
        {
            if (items == null)
                return null;

            var len:int = items.length;
            var proto:ProtoBagSummonMonsterCardInfo;
            var dataList:Vector.<BeastFragmentData> = new Vector.<BeastFragmentData>();
            var data:BeastFragmentData;

            for (var i:int=0; i<len; ++i)
            {
                proto = items[i] as ProtoBagSummonMonsterCardInfo;
                data = parseBeastFragment(proto);

                dataList[i] = data;
            }

            return dataList;
        }

        public static function parseBeastFragment(proto:ProtoBagSummonMonsterCardInfo):BeastFragmentData
        {
            if (proto == null)
                return null;

            var data:BeastFragmentData = new BeastFragmentData();
            data.id = proto.id;
            data.num = proto.num;

            BagItemConf.fillData(data);
            return data;
        }

        public static function parseBeastRunes(items:Array):Vector.<BeastRuneData>
        {
            if (items == null)
                return null;

            var len:int = items.length;
            var proto:ProtoBagRuneInfo;
            var dataList:Vector.<BeastRuneData> = new Vector.<BeastRuneData>();
            var data:BeastRuneData;

            for (var i:int=0; i<len; ++i)
            {
                proto = items[i] as ProtoBagRuneInfo;
                data = parseBeastRune(proto);

                dataList[i] = data;
            }

            return dataList;
        }

        public static function parseBeastRune(proto:ProtoBagRuneInfo):BeastRuneData
        {
            if (proto == null)
                return null;

            var data:BeastRuneData = new BeastRuneData();
            data.id = proto.id;
            data.index = proto.index;
            data.num = proto.num;
            data.exp = proto.exp;
            data.isUltimate = proto.isUltimate;

            BagItemConf.fillData(data);
			
			//这两个值使用后台下发的，因为反正后台下发了
			//而且合成时提供的经验matExp，因为要考虑符文本身的经验，所以与配置表配的matExp可能不一样
			data.matExp = proto.composeExp;
			data.levelExp = proto.levelUpExp;
            return data;
        }
		
		public static function parseTreasureMaps(items:Array):Vector.<TreasureMapItemData>
		{
			if (items == null)
				return null;
			
			var len:int = items.length;
			var proto:ProtoBagTreasureMapInfo;
			var dataList:Vector.<TreasureMapItemData> = new Vector.<TreasureMapItemData>();
			var data:TreasureMapItemData;
			
			for (var i:int=0; i<len; ++i)
			{
				proto = items[i] as ProtoBagTreasureMapInfo;
				data = parseTreasureMap(proto);
				
				dataList[i] = data;
			}
			
			return dataList;
		}
		
		public static function parseTreasureMap(proto:ProtoBagTreasureMapInfo):TreasureMapItemData
		{
			if (proto == null)
				return null;
			
			var data:TreasureMapItemData = new TreasureMapItemData();
			data.id = proto.id;
			data.index = proto.index;
			data.mapId = proto.mapId;
			data.position = new Point(proto.point.x, proto.point.y);
			data.roleId = 60000 + Math.ceil(Math.random()*3);
			
			BagItemConf.fillData(data);
			
			return data;
		}

        public function BagProtoParser()
        {
            throw new Error(BagProtoParser + " can not be instantiated.");
        }
    }
}