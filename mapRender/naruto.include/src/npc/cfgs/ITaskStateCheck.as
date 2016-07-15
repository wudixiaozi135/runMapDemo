package npc.cfgs
{
	public interface ITaskStateCheck
	{
		function get defaultShow():Boolean;//默认情况下显示
		function get doingTaskShow():String;//带有任务时可见
		function get doingTaskHide():String;//带有任务时不可见
		function get doneTaskShow():String;//完成任务后可见
		function get doneTaskHide():String;//完成任务后不可见
		function get receiveAbleTaskShow():String;//带有任务可接状态时可见
		function get receiveAbleTaskHide():String;//带有任务可接状态时可见
	}
}