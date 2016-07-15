package user.utils
{
    import user.data.LevelUpData;
    
    import base.ApplicationData;
    
    import serverProto.inc.ProtoNarutoProperty;
    import serverProto.user.ProtoNinjaLevelUpInfo;
    import serverProto.user.ProtoNinjaLevelUpNotify;

    public class LevelUpDataParser
    {
        public function LevelUpDataParser()
        {
        }

        public function destroy():void
        {
        }

        public function parse(rsp:ProtoNinjaLevelUpNotify):LevelUpData
        {
            if (rsp == null)
                return null;

            var before:ProtoNinjaLevelUpInfo = rsp.beforeInfo;
            var after:ProtoNinjaLevelUpInfo = rsp.afterInfo;
            var beforeVal:ProtoNarutoProperty = before.protperty;
            var afterVal:ProtoNarutoProperty = after.protperty;

            var data:LevelUpData = new LevelUpData();
//TODO: parse uin
            data.uin = ApplicationData.singleton.selfInfo.uin;
			data.roleId = ApplicationData.singleton.selfInfo.role;
			data.svrId = ApplicationData.singleton.selfInfo.svrId;
////
            data.ninjaId = rsp.ninjaId;
            data.levelBefore = before.level;
            data.levelAfter = after.level;
            data.leadershipBefore = before.leadshipUlimit;
            data.leadershipAfter = after.leadshipUlimit;
            data.ninjaNumBefore = before.packageNinjaUlimit;
            data.ninjaNumAfter = after.packageNinjaUlimit;
            data.battlePointBefore = beforeVal.combat;
            data.battlePointAfter = afterVal.combat;
            data.val1Before = beforeVal.maxHp;
            data.val1After = afterVal.maxHp;
            data.val2Before = beforeVal.bodyAttack;
            data.val2After = afterVal.bodyAttack;
            data.val3Before = beforeVal.bodyDefense;
            data.val3After = afterVal.bodyDefense;
            data.val4Before = beforeVal.ninjaAttack;
            data.val4After = afterVal.ninjaAttack;
            data.val5Before = beforeVal.ninjaDefense;
            data.val5After = afterVal.ninjaDefense;

            return data;
        }
    }
}