package task.datas
{
	import com.tencent.morefun.naruto.util.Assert;
	
	import task.defs.TaskTypeDef;

    import com.tencent.morefun.naruto.i18n.I18n;
	public class TaskInfo
	{
		public var cfg:TaskCfg;
		public var id:int;
		public var type:int;
		public var state:int;
		public var isNew:Boolean;
		public var conditions:Array;
		public var receiveTime:uint;
		public var condState:int; //条件是否已经满足,0条件未满足，条件已满足
		
		public function TaskInfo(id:int)
		{
			this.id = id;
			cfg = TaskConfig.instance.getTaskCfg(id);
			conditions = [];
			
			Assert(cfg!=null,I18n.lang("as_include_1451031572_3559_0")+id+I18n.lang("as_include_1451031572_3559_1"));
		}
		
		public function get sortField():int
		{
			if(type == TaskTypeDef.MAIN)
			{
				return 100;
			}else
			{
				return (10 - type)*100;
			}
		}
	}
}