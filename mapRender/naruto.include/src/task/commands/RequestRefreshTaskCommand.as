package task.commands
{
	import RSModel.command.RSModelCommand;
	
	public class RequestRefreshTaskCommand extends RSModelCommand
	{
		public var taskType:int;
		public var payType:int;
		
		/**
		 * 请求刷新任务
		 * @param taskType	希望刷新哪一类的任务
		 * @param payType	支付方式，0默认不支付(也可以说是免费)，1点券，2元宝
		 */
		public function RequestRefreshTaskCommand(taskType:int,payType:int=0)
		{
			super();
			this.taskType = taskType;
			this.payType = payType;
		}
	}
}