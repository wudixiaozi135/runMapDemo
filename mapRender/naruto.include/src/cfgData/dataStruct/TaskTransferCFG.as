package cfgData.dataStruct
{
    /**
     * 任务配置2
     * @author:Auto creater 自动生成的
     * @since:
     */
    public class TaskTransferCFG{
        public function  TaskTransferCFG(){}  
        /**任务ID*/
        public var id:uint;
        /**任务名称*/
        public var name:String="";
        /**任务类型*/
        public var type:int;
        /**任务状态*/
        public var state:int;
        /**任务难度*/
        public var hard:int;
        /**等级要求*/
        public var needLevel:int;
        /**前置任务*/
        public var prevId:uint;
        /**后续任务*/
        public var nextId:uint;
        /**任务是否由服务器下发*/
        public var autoReceive:Boolean;
        /**任务奖励*/
        public var reward:uint;
        /**获得主角经验*/
        public var rewardExp:uint;
        /**获得铜币*/
        public var rewardMoney:uint;
        /**获得点券*/
        public var rewardTicket:int;
        /**任务领取方式*/
        public var receiveType:int;
        /**接取任务NPC*/
        public var receiveNpcName:String="";
        /**前端-任务接取提示*/
        public var receiveNpcDesc:String="";
        /**接取任务NPCid*/
        public var receiveNpcId:uint;
        /**接取任务NPC场景id*/
        public var receiveNpcSceneId:uint;
        /**任务完成NPC*/
        public var commitNpcName:String="";
        /**完成任务NPCid*/
        public var commitNpcId:uint;
        /**完成任务NPC场景id*/
        public var commitNpcSceneId:uint;
        /**任务是否自动完成*/
        public var autoFinish:Boolean;
        /**任务是否可以放弃*/
        public var canGiveup:Boolean;
        /**接任务前触发剧情*/
        public var receiveBeforePlotId:uint;
        /**接任务后触发剧情*/
        public var receiveAfterPlotId:uint;
        /**交任务前触发剧情*/
        public var finishBeforePlotId:uint;
        /**交任务后触发剧情*/
        public var finishAfterPlotId:uint;
        /**任务描述*/
        public var desc:String="";
        /**接任务对话*/
        public var receiveDialog:String="";
        /**任务未完成对话*/
        public var receivedDialog:String="";
        /**交任务对话*/
        public var commitDialog:String="";
        /**前端任务条件提示参数1*/
        public var conditionData1:String="";
        /**任务完成条件1类型*/
        public var conditionType1:int;
        /**任务完成条件1参数*/
        public var conditionArg1:String="";
        /**任务完成条件1数量*/
        public var conditionNum1:int;
        /**前端任务条件提示1*/
        public var conditionDesc1:String="";
        /**前端任务条件提示参数2*/
        public var conditionData2:String="";
        /**任务完成条件2类型*/
        public var conditionType2:int;
        /**任务完成条件2参数*/
        public var conditionArg2:String="";
        /**任务完成条件2数量*/
        public var conditionNum2:int;
        /**前端任务条件提示2*/
        public var conditionDesc2:String="";
        /**前端任务条件提示参数3*/
        public var conditionData3:String="";
        /**任务完成条件3类型*/
        public var conditionType3:int;
        /**任务完成条件3参数*/
        public var conditionArg3:String="";
        /**任务完成条件3数量*/
        public var conditionNum3:int;
        /**前端任务条件提示3*/
        public var conditionDesc3:String="";
        /**图片资源*/
        public var pic:String="";

    }
}