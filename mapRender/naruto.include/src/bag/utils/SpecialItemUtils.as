package bag.utils
{
    public class SpecialItemUtils
    {
        public static const MONEY_ID:uint                   =   11000001;
        public static const COUPON_ID:uint                  =   11100002;
        public static const INGOT_ID:uint                   =   11300003;
        public static const STRENGTH_ID:uint                =   11200004;
        public static const PLAYER_EXP_ID:uint              =   11400005;
        public static const NINJA_EXP_ID:uint               =   11700006;
        public static const NINJA_ON_SQUAD_HP_ID:uint       =   11800007;
        public static const NINJA_OFF_SQUAD_HP_ID:uint      =   11800008;
        public static const CHAKRA_ID:uint                  =   11900008;

        public static function isMoney(id:uint):Boolean
        {
            return id == MONEY_ID;
        }

        public static function isCoupon(id:uint):Boolean
        {
            return id == COUPON_ID;
        }

        public static function isIngot(id:uint):Boolean
        {
            return id == INGOT_ID;
        }

        public static function isStrength(id:uint):Boolean
        {
            return id == STRENGTH_ID;
        }

        public static function isPlayerExp(id:uint):Boolean
        {
            return id == PLAYER_EXP_ID;
        }

        public static function isNinjaExp(id:uint):Boolean
        {
            return id == NINJA_EXP_ID;
        }

        public static function isNinjaOnSquadHp(id:uint):Boolean
        {
            return id == NINJA_ON_SQUAD_HP_ID;
        }

        public static function isNinjaOffSquadHp(id:uint):Boolean
        {
            return id == NINJA_OFF_SQUAD_HP_ID;
        }

        public static function isChakra(id:uint):Boolean
        {
            return id == CHAKRA_ID;
        }

        public function SpecialItemUtils()
        {
            throw new Error(SpecialItemUtils + " can not be instantiated.");
        }
    }
}