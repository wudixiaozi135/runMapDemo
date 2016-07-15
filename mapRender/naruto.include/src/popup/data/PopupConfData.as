package popup.data
{
    public class PopupConfData
    {
        public var id:uint;                     // 窗口id
        public var name:String;                 // 窗口名称
        public var type:int;                    // 窗口类型
        public var priority:int;                // 窗口优先级
		public var hideWhenExclusive:Boolean;   // 互斥时仅隐藏而不关闭

        public function PopupConfData()
        {
        }
    }
}