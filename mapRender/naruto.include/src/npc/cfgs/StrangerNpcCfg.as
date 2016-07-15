package npc.cfgs
{
	

    public class StrangerNpcCfg extends BaseNpcCfg implements ITaskStateCheck
    {
        public var showName:Boolean;            // 是否显示名字
        public var words:String;                // 闲话
		
		private var _defaultShow:Boolean;
		private var _doingTaskShow:String;//带有任务时可见
		private var _doingTaskHide:String;//带有任务时不可见
		private var _doneTaskShow:String;//完成任务后可见
		private var _doneTaskHide:String;//完成任务后不可见
		private var _receiveAbleTaskShow:String;//带有任务可接状态时可见
		private var _receiveAbleTaskHide:String;//带有任务可接状态时可见
		private var _delayShow:Boolean;//延迟显示

		public var entryEffectType:int;//入场特效
		public var leaveEffectType:int;//离场特效
		
        public function StrangerNpcCfg()
        {
            super();
        }
        
        override public function parse(xml:XML):void
        {
            super.parse(xml);

            name = xml.@name;
            title = xml.@title;
            showName = int(xml.@showName) == 1;
            words = xml.@words;
			
			_defaultShow = String(xml.@defaultShow)=="1";
			_doingTaskShow = xml.@doingTaskShow;
			_doingTaskHide = xml.@doingTaskHide;
			_doneTaskShow = xml.@doneTaskShow;
			_doneTaskHide = xml.@doneTaskHide;
			_receiveAbleTaskShow = xml.@receiveAbleTaskShow;
			_receiveAbleTaskHide = xml.@receiveAbleTaskHide;
			_delayShow = String(xml.@delayShow)=="1";
			
			entryEffectType = xml.@entryEffectType;
			leaveEffectType = xml.@leaveEffectType;
        }
		
		public function get defaultShow():Boolean{return _defaultShow};
		public 	function get doingTaskShow():String{return _doingTaskShow};
		public function get doingTaskHide():String{return _doingTaskHide};
		public function get doneTaskShow():String{return _doneTaskShow};
		public function get doneTaskHide():String{return _doneTaskHide};
		public function get receiveAbleTaskShow():String{return _receiveAbleTaskShow};
		public function get receiveAbleTaskHide():String{return _receiveAbleTaskHide};
		public function get delayShow():Boolean{return _delayShow;}
		
    }
}