package rank.command 
{
	import com.tencent.morefun.framework.base.Command;
	import def.PluginDef;
	import rank.def.RankCategoryDef;
	import rank.def.RankTypeDef;
	
	/**
	 * 打开排行榜面板
	 * @author larryhou
	 * @createTime 2014/10/16 14:07
	 */
	public class OpenRankWindowCommand extends Command
	{
		/**
		 * 排行榜类型
		 * @see rank.def.RankTypeDef
		 */
		public var type:uint;
		
		/**
		 * 透传数据
		 */
		public var params:Object;
		
		/**
		 * 服务器
		 */
		public var server:String;
		
		/**
		 * 构造函数
		 * create a [OpenRankWindowCommand] object
		 */
		public function OpenRankWindowCommand(type:uint = RankTypeDef.COMBAT_0, params:Object = null, server:String = RankCategoryDef.CRX_RANK) 
		{
			this.type = type; this.params = params; this.server = server;
		}
		
		override public function getPluginName():String 
		{
			return PluginDef.RANK;
		}
	}
}