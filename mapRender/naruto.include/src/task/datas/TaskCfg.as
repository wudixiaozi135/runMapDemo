package task.datas
{
	

    import com.tencent.morefun.naruto.i18n.I18n;
	public class TaskCfg
	{
		public var id:int;
		public var name:String;//I18n.lang("as_include_1451031572_3529") 
		public var type:int;//I18n.lang("as_include_1451031572_3530") 
		public var state:int;//I18n.lang("as_include_1451031572_3531") 
		public var hard:int;//I18n.lang("as_include_1451031572_3532")
		public var needLevel:int;//I18n.lang("as_include_1451031572_3533")
		public var prevId:int;//I18n.lang("as_include_1451031572_3534") 
		public var nextId:int;//I18n.lang("as_include_1451031572_3535") 
		public var autoReceive:Boolean;
		
		public var reward:int;//I18n.lang("as_include_1451031572_3536")
		public var rewardExp:int;//I18n.lang("as_include_1451031572_3537")
		public var rewardMoney:int;//I18n.lang("as_include_1451031572_3538")
		public var rewardTicket:int;//I18n.lang("as_include_1451031572_3539")
		
		public var receiveType:int;//I18n.lang("as_include_1451031572_3540") 
		public var receiveNpcId:int;//I18n.lang("as_include_1451031572_3541") 
		public var receiveNpcSceneId:int;//I18n.lang("as_include_1451031572_3542")
		public var receiveNpcName:String;//I18n.lang("as_include_1451031572_3543")
		public var receiveNpcDesc:String;//前端-任务接取提示
		
		public var commitNpcName:String;//I18n.lang("as_include_1451031572_3545")
		public var commitNpcId:int;//I18n.lang("as_include_1451031572_3546")
		public var commitNpcSceneId:int;//I18n.lang("as_include_1451031572_3547") 
		
		public var autoFinish:Boolean;//I18n.lang("as_include_1451031572_3548")
		public var canGiveUp:Boolean;//I18n.lang("as_include_1451031572_3549")
		
		public var receiveBeforePlotId:int;//I18n.lang("as_include_1451031572_3550")
		public var receiveAfterPlotId:int;//I18n.lang("as_include_1451031572_3551")
		public var finishBeforePlotId:int;//I18n.lang("as_include_1451031572_3552")
		public var finishAfterPlotId:int;//I18n.lang("as_include_1451031572_3553")>
		
		public var desc:String;//<![CDATA[{任务描述}]]>
		public var receiveDialog:String;//<![CDATA[{接任务对话}]]>
		public var receivedDialog:String;//<![CDATA[{条件未达成对白}]]>
		public var commitDialog:String;//<![CDATA[{交任务对话}]]>
		
		public var conditions:Array = [];
		public var pic:String;
		
		public function TaskCfg()
		{
		}
		
//		public function setData(xml:XML):void
//		{
//			id = xml.@id;
//			name = xml.@name; 
//			type = xml.@type; 
//			state = xml.@state;
//			hard = xml.@hard;
//			needLevel = xml.@needLevel;
//			prevId = xml.@prevId;  
//			nextId = xml.@nextId;  
//			autoReceive = String(xml.@autoReceive)=="1";
//			
//			reward = xml.@reward;
//			rewardExp = xml.@rewardExp;
//			rewardMoney = xml.@rewardMoney;
//			rewardTicket = xml.@rewardTicket;
//			
//			receiveType = xml.@receiveType;
//			receiveNpcName = xml.@receiveNpcName;
//			receiveNpcDesc = xml.@receiveNpcDesc;
//			receiveNpcId = xml.@receiveNpcId;
//			receiveNpcSceneId = xml.@receiveNpcSceneId;
//			
//			commitNpcName = xml.@commitNpcName;
//			commitNpcId = xml.@commitNpcId;
//			commitNpcSceneId = xml.@commitNpcSceneId;
//			
//			autoFinish = String(xml.@autoFinish) == "1";
//			canGiveUp = String(xml.@canGiveup) == "1";
//			
//			receiveBeforePlotId = xml.@receiveBeforePlotId;
//			receiveAfterPlotId = xml.@receiveAfterPlotId;
//			finishBeforePlotId = xml.@finishBeforePlotId;
//			finishAfterPlotId = xml.@finishAfterPlotId;
//			
//			desc = xml.desc[0].text();
//			receiveDialog = xml.receiveDialog[0].text();
//			receivedDialog = xml.receivedDialog[0].text();
//			commitDialog = xml.commitDialog[0].text();
//			
//			
//			conditions.length = 0;
//			for each(var conditionXML:XML in xml.condition)
//			{
//				var tci:TaskConditionCfg = new TaskConditionCfg();
//				tci.setData(conditionXML);
//				if(tci.type!=0)
//				{
//					conditions.push(tci);
//				}
//			}
//		}
		
		public function setData(cfg:*):void
		{
			id = cfg.id;
			name = cfg.name; 
			type = cfg.type; 
			state = cfg.state;
			hard = cfg.hard;
			needLevel = cfg.needLevel;
			prevId = cfg.prevId;  
			nextId = cfg.nextId;  
			autoReceive = cfg.autoReceive;
			
			reward = cfg.reward;
			rewardExp = cfg.rewardExp;
			rewardMoney = cfg.rewardMoney;
			rewardTicket = cfg.rewardTicket;
			
			receiveType = cfg.receiveType;
			receiveNpcName = cfg.receiveNpcName;
			receiveNpcDesc = cfg.receiveNpcDesc;
			receiveNpcId = cfg.receiveNpcId;
			receiveNpcSceneId = cfg.receiveNpcSceneId;
			
			commitNpcName = cfg.commitNpcName;
			commitNpcId = cfg.commitNpcId;
			commitNpcSceneId = cfg.commitNpcSceneId;
			
			autoFinish = cfg.autoFinish;
			canGiveUp = cfg.canGiveup;
			
			receiveBeforePlotId = cfg.receiveBeforePlotId;
			receiveAfterPlotId = cfg.receiveAfterPlotId;
			finishBeforePlotId = cfg.finishBeforePlotId;
			finishAfterPlotId = cfg.finishAfterPlotId;
			
			desc = cfg.desc;
			receiveDialog = cfg.receiveDialog;
			receivedDialog = cfg.receivedDialog;
			commitDialog = cfg.commitDialog;
			
			
			conditions.length = 0;
			var tci:TaskConditionCfg;
			
			if(cfg.conditionType1)
			{
				tci = new TaskConditionCfg();
				tci.type = cfg.conditionType1;
				tci.data = cfg.conditionData1;
				tci.args = cfg.conditionArg1;
				tci.num = cfg.conditionNum1;
				tci.text = cfg.conditionDesc1;
				
				conditions.push(tci);
			}
			
			if(cfg.conditionType2)
			{
				tci = new TaskConditionCfg();
				tci.type = cfg.conditionType2;
				tci.data = cfg.conditionData2;
				tci.args = cfg.conditionArg2;
				tci.num = cfg.conditionNum2;
				tci.text = cfg.conditionDesc2;
				
				conditions.push(tci);
			}
			
			if(cfg.conditionType3)
			{
				tci = new TaskConditionCfg();
				tci.type = cfg.conditionType3;
				tci.data = cfg.conditionData3;
				tci.args = cfg.conditionArg3;
				tci.num = cfg.conditionNum3;
				tci.text = cfg.conditionDesc3;
				
				conditions.push(tci);
			}
			
			pic = cfg.pic;
		}
	}
}