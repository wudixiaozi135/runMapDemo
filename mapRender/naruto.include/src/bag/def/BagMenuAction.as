package bag.def
{
    import bag.BagConst;

    public class BagMenuAction
    {
        public static const USE:int             =   1;
        public static const USE_MULTIPLE:int    =   2;
        public static const SWALLOW:int         =   3;
        public static const EQUIP:int           =   4;
        public static const EQUIP_GEM:int       =   5;
		public static const COMPOSE:int         =   6;
        public static const SELL:int            =   100;
        public static const DESTROY:int         =   101;

        public static function getActionLabel(action:int):String
        {
            switch (action)
            {
                case BagMenuAction.USE:
                    return BagConst.USE;
                case BagMenuAction.USE_MULTIPLE:
                    return BagConst.USE_MULTIPLE;
                case BagMenuAction.SWALLOW:
                    return BagConst.SWALLOW;
                case BagMenuAction.EQUIP:
                    return BagConst.EQUIP;
                case BagMenuAction.EQUIP_GEM:
                    return BagConst.EQUIP_GEM;
                case BagMenuAction.SELL:
                    return BagConst.SELL;
                case BagMenuAction.DESTROY:
                    return BagConst.DESTROY;
				case BagMenuAction.COMPOSE:
					return BagConst.COMPOSE;
            }

            return BagConst.UNKNOWN;
        }
    }
}