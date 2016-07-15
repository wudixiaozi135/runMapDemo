package npc.cfgs
{
	
	

	public class TriggerNpcCfg extends BaseNpcCfg
	{
		public var radius:int;   //有效半径
//		public var checkTimeInterval:int;  //检测时间间隔
		public var needTask:String;    //触发需要任务
		public var visible:Boolean;
		public var fight:int;  //触发定制战斗 
		public var dialogue:int;  //触发后播放剧情对白
		public var newplot:int;//触发新剧情
		public var isContinue:Boolean;
		public var miniMapVisiable:Boolean;
		public var miniMapType:int;
		public var allowCaptain:Boolean;
		
		public function TriggerNpcCfg()
		{
			super();
		}
		
		override public function parse(xml:XML):void
		{
			super.parse(xml);
			
			radius = xml.@radius;
//			checkTimeInterval = xml.@checkTimeInterval;
			needTask = xml.@needTask;
			visible = String(xml.@visible)=="1";
//			stopWithCount = (int(xml.@stopWithCount) == 1);
//			getTask = xml.@getTask;
//			getTaskCount = xml.@getTaskCount;
			fight = xml.@fight;
			dialogue = xml.@dialogue;
			isContinue = String(xml.@isContinue) == "1";
			newplot = xml.@newplot;
			allowCaptain = String(xml.@allowCaptain) == "1";
//			alert = xml.@alert;
			this.miniMapVisiable = String(xml.@miniMapVisiable) == "1";
			this.miniMapType = int(xml.@miniMapType);
		}
	}
}