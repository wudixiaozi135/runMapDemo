package throughTheBeast.command
{
	import com.tencent.morefun.framework.base.Command;
	
	import def.PluginDef;
	
	import throughTheBeast.data.BeastData;

	/**
	 * 查看单个通灵搜的数据
	 * @author Georgehu
	 * 
	 */	
	public class GetBeastByIdCmd extends Command
	{
		public var m_beastId:int;
		/**
		 *服务器协议返回状态值 
		 */		
		public var status:int;
		public var beastInfo:BeastData;
		public function GetBeastByIdCmd(beastId:int) {
			m_beastId = beastId;
			super(2,true);
		}
		
		override public function getPluginName():String {
			return PluginDef.RSMODEL;
		}
	}
}