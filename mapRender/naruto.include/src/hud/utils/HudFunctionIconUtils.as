package hud.utils
{
    import flash.display.DisplayObject;
    import flash.geom.Point;
    import flash.utils.Dictionary;

    public class HudFunctionIconUtils
    {
        private static var _icons:Dictionary = new Dictionary();

//        public static function set icons(value:Array):void
//        {
//            if (value == null)
//                return;
//
//            clear();
//
//            var len:int = value.length;
//            var dis:DisplayObject;
//
//            for (var i:int=0; i<len; ++i)
//            {
//                dis = value[i] as DisplayObject;
//
//                if (dis != null)
//                    _icons[dis.name] = dis;
//            }
//        }
//
//        public static function getExamIcon():DisplayObject
//        {
//            return _icons["exam"];
//        }
//
//        public static function getTeamIcon():DisplayObject
//        {
//            return _icons["team"];
//        }
//
//        public static function getGiftIcon():DisplayObject
//        {
//            return _icons["gjft"];
//        }
//
//        public static function getActiveIcon():DisplayObject
//        {
//            return _icons["active"];
//        }
//
//        public static function getSignatureIcon():DisplayObject
//        {
//            return _icons["signature"];
//        }
//
//        public static function getForecastDungeon1Icon():DisplayObject
//        {
//            return _icons["forecastDungeon1"];
//        }
//
//        public static function getForecastDungeon2Icon():DisplayObject
//        {
//            return _icons["forecastDungeon2"];
//        }
//
//        public static function getForecastDungeon3Icon():DisplayObject
//        {
//            return _icons["forecastDungeon3"];
//        }
//
//        public static function getForecastDungeon4Icon():DisplayObject
//        {
//            return _icons["forecastDungeon4"];
//        }
//
//        public static function getExamIconPos(center:Boolean=false):Point
//        {
//            var icon:DisplayObject = getExamIcon();
//            return getIconPos(icon, center);
//        }
//
//        public static function getTeamIconPos(center:Boolean=false):Point
//        {
//            var icon:DisplayObject = getTeamIcon();
//            return getIconPos(icon, center);
//        }
//
//        public static function getGiftIconPos(center:Boolean=false):Point
//        {
//            var icon:DisplayObject = getGiftIcon();
//            return getIconPos(icon, center);
//        }
//
//        public static function getActiveIconPos(center:Boolean=false):Point
//        {
//            var icon:DisplayObject = getActiveIcon();
//            return getIconPos(icon, center);
//        }
//
//        public static function getSignatureIconPos(center:Boolean=false):Point
//        {
//            var icon:DisplayObject = getSignatureIcon();
//            return getIconPos(icon, center);
//        }
//
//        public static function getForecastDungeon1IconPos(center:Boolean=false):Point
//        {
//            var icon:DisplayObject = getForecastDungeon1Icon();
//            return getIconPos(icon, center);
//        }
//
//        public static function getForecastDungeon2IconPos(center:Boolean=false):Point
//        {
//            var icon:DisplayObject = getForecastDungeon2Icon();
//            return getIconPos(icon, center);
//        }
//
//        public static function getForecastDungeon3IconPos(center:Boolean=false):Point
//        {
//            var icon:DisplayObject = getForecastDungeon3Icon();
//            return getIconPos(icon, center);
//        }
//
//        public static function getForecastDungeon4IconPos(center:Boolean=false):Point
//        {
//            var icon:DisplayObject = getForecastDungeon4Icon();
//            return getIconPos(icon, center);
//        }
//
//        private static function getIconPos(icon:DisplayObject, center:Boolean=false):Point
//        {
//            if (icon == null || icon.parent == null)
//                return null;
//
//            var point:Point = new Point();
//            var globalPoint:Point = icon.parent.localToGlobal(new Point(icon.x, icon.y));
//            var iconX:int = globalPoint.x;
//            var iconY:int = globalPoint.y;
//
//            if (center)
//            {
//                point.x = iconX + icon.width / 2;
//                point.y = iconY + icon.height / 2;
//            }
//            else
//            {
//                point.x = iconX;
//                point.y = iconY;
//            }
//
//            return point;
//        }
//
//        private static function clear():void
//        {
//            for (var key:Object in _icons)
//                delete _icons[key];
//        }

        public function HudFunctionIconUtils()
        {
            throw new Error(HudFunctionIconUtils + " can not be instantiated.");
        }
    }
}