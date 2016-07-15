package RSModel.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	import task.datas.TaskInfo;
	
	/**
	 * @author woodychen
	 * @createTime 2015-3-26 下午4:24:39
	 **/
	public class RequestArenaTaskDownGradeCommand extends Command
	{
		public var taskId:int;
		public var newTaskInfo:TaskInfo;
		
		public function RequestArenaTaskDownGradeCommand(taskId:int)
		{
			super();
			this.taskId = taskId;
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.RSMODEL;
		}
	}
}