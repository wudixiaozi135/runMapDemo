package popup.utils
{
    import popup.api.IPopupPlot;

    public class PopupUtils
    {
        private static var _popupPlot:IPopupPlot;

        public static function initialize(popupPlot:IPopupPlot):void
        {
            _popupPlot = popupPlot;
        }

        public static function destroy():void
        {
            _popupPlot = null;
        }

        // 如果当前有高优先级的窗口处于打开状态，值为ture，否则为false
        public static function get delayNewPlot():Boolean
        {
            if (_popupPlot != null)
                return _popupPlot.delayNewPlot;
            else
                return false;
        }

        // 如果当前有高优先级的窗口处于打开状态，或者在窗口队列中有高优先级的窗口，值为ture，否则为false
        public static function get holdNewPlot():Boolean
        {
            if (_popupPlot != null)
                return _popupPlot.holdNewPlot;
            else
                return false;
        }

        public function PopupUtils()
        {
            throw new Error(PopupUtils + " can not be instantiated.");
        }
    }
}