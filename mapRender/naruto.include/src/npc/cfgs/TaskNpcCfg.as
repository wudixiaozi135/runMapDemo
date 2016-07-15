package npc.cfgs
{
	

	public class TaskNpcCfg extends BaseNpcCfg implements ITaskStateCheck
	{
		public var sentence:Array; //闲话数组
		private var _defaultShow:Boolean;
		private var _doingTaskShow:String;//带有任务时可见
		private var _doingTaskHide:String;//带有任务时不可见
		private var _doneTaskShow:String;//完成任务后可见
		private var _doneTaskHide:String;//完成任务后不可见
		private var _receiveAbleTaskShow:String;//带有任务可接状态时可见
		private var _receiveAbleTaskHide:String;//带有任务可接状态时可见
		public var dialogNpcId:int;
		
		public var entryEffectType:int;//入场特效
		public var leaveEffectType:int;//离场特效

		public var menus:Array;
		public var menuParams:Array;
		public var functionIcon:int;
		public var miniMapType:int;
		
		public var autoCloseDialogDistance:int = 300;
		
		public function TaskNpcCfg()
		{
			super();
		}
		
		override public function parse(xml:XML):void
		{
			super.parse(xml);
			
			listId = xml.@listId;
			dialogNpcId = xml.@dialogNpcId;
			title = xml.@title;
			name = xml.@name;
			sentence = String(xml.@sentence).split("|");
			_defaultShow = String(xml.@defaultShow)=="1";
			_doingTaskShow = xml.@doingTaskShow;
			_doingTaskHide = xml.@doingTaskHide;
			_doneTaskShow = xml.@doneTaskShow;
			_doneTaskHide = xml.@doneTaskHide;
			_receiveAbleTaskShow = xml.@receiveAbleTaskShow;
			_receiveAbleTaskHide = xml.@receiveAbleTaskHide;
			menus = [String(xml.@menu1), String(xml.@menu2), String(xml.@menu3)];
			menuParams = [String(xml.@menuParam1), String(xml.@menuParam2), String(xml.@menuParam3)];
			functionIcon = xml.@functionIcon;
			miniMapType = int(xml.@miniMapType);
			
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
	}
}