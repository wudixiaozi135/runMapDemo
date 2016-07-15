package exam.conf
{
    import com.tencent.morefun.framework.apf.core.plugin.Plugin;
    
    import flash.utils.ByteArray;
    import flash.utils.Dictionary;
    
    import cfgData.CFGDataEnum;
    import cfgData.CFGDataLibs;
    import cfgData.dataStruct.ExamConfCFG;
    
    import exam.data.ExamLevelData;

    public class ExamConf
    {
        private static const CONF_LINK:String               =   "plugin.exam.examConf";
        private static const CONF_KEY:String                =   CFGDataEnum.ENUM_ExamConfCFG;

        private static var _confData:ByteArray;
        private static var _items:Dictionary;

        public static function initialize(plugin:Plugin):void
        {
            _confData = plugin.getResource(plugin.getPluginName())[CONF_LINK] as ByteArray;
            parse(CFGDataLibs.parseData(_confData, CONF_KEY));
        }

        public static function destroy():void
        {
            _confData = null;
            _items = null;
        }

        public static function findLevelData(id:uint):ExamLevelData
        {
            if (_items == null)
                return null;

            return _items[id];
        }
		
		public static function collectWipeoutConsumes():Vector.<uint>
		{
			var list:Vector.<uint> = new Vector.<uint>();
			
			var index:uint = 1;
			while (_items[index])
			{
				list.push((_items[index] as ExamLevelData).consumeMoney);
				index++;
			}
			
			return list;
		}

        private static function parse(cfgs:Dictionary):void
        {
            _items = new Dictionary();
            var data:ExamLevelData;

            for each(var cfg:ExamConfCFG in cfgs)
            {
                data = parseItem(cfg);
                _items[data.id] = data;
            }
        }

        private static function parseItem(cfg:ExamConfCFG):ExamLevelData
        {
            var data:ExamLevelData = new ExamLevelData();

            data.id = cfg.id;
            data.battleId = cfg.battleId;
            data.battlePower = cfg.battlePower;
            data.earnMoney = cfg.earnMoney;
            data.earnExp = cfg.earnExp;
            data.consumeMoney = cfg.consumeMoney;
            data.ninjaId = cfg.ninjaId;
            data.rewardId = cfg.rewardId;
            data.specialRewardId = cfg.specRewardId;
            data.enemyIds = parseEnemyIds(cfg);
            data.specialRewardDescription = parseSpecialItems(cfg);
            data.rewardDescription = cfg.rwdDesc;

            return data;
        }

        private static function parseEnemyIds(cfg:ExamConfCFG):Vector.<uint>
        {
            if (cfg == null)
                return null;

            var vec:Vector.<uint> = new Vector.<uint>();

            vec.push(cfg.enemyId1);
            vec.push(cfg.enemyId2);
            vec.push(cfg.enemyId3);
            vec.push(cfg.enemyId4);

            return vec;
        }

        private static function parseSpecialItems(cfg:ExamConfCFG):Vector.<String>
        {
            if (cfg == null)
                return null;

            var vec:Vector.<String> = new Vector.<String>();

            if (cfg.specRwd1 != "")
                vec.push(cfg.specRwd1);

            if (cfg.specRwd2 != "")
                vec.push(cfg.specRwd2);

            if (cfg.specRwd3 != "")
                vec.push(cfg.specRwd3);

            if (cfg.specRwd4 != "")
                vec.push(cfg.specRwd4);

            return vec;
        }

        public function ExamConf()
        {
            throw new Error(ExamConf + " can not be instantiated.");
        }
    }
}