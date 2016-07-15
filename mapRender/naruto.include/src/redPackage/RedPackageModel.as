package redPackage
{
	import com.tencent.morefun.framework.net.pub;
	import com.tencent.morefun.naruto.model.BaseModel;
	import com.tencent.morefun.naruto.model.event.ModelEvent;
	
	import def.ModelDef;

	public class RedPackageModel extends BaseModel
	{
		private var m_redpackgeCommand:RedPackageCommand;
		public static const DATA_CHANGE_EVENT:String = "dataChgEvt";
		public function RedPackageModel(modelName:String) 
		{
			super(ModelDef.RED_PACKAGE);
		}
		
		public function set redpackgeCommand(value:RedPackageCommand):void
		{
			m_redpackgeCommand = value;
			dispModelEvent(ModelEvent.UPDATE, DATA_CHANGE_EVENT);
		}
		
		public function get redpackgeCommand():RedPackageCommand
		{
			return m_redpackgeCommand;
		}
	}
}