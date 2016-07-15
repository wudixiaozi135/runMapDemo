package ninja.command 
{
	import flash.utils.Dictionary;
	import ninja.def.NinjaListTypeDef;
	import ninja.model.data.FormationInfo;
	import RSModel.command.RSModelCommand;
	
	/**
	 * 请求忍者列表命令
	 * @author larryhou
	 * @createTime 2013/12/12 16:02
	 */
	public class RequestNinjaListCommand extends RSModelCommand
	{
		/**
		 * 忍者列表类型 @see ninja.def.NinjaListTypeDef
		 * 支持与运算，如：type = NinjaListTypeDef.PACKAGE|NinjaListTypeDef.STORAGE
		 */
		public var type:uint;
		
		/**
		 * 忍者列表数据
		 * 所有忍者列表：ninjas[NinjaListTypeDef.ALL]
		 * 背包忍者列表：ninjas[NinjaListTypeDef.PACKAGE]
		 * 仓库忍者列表：ninjas[NinjaListTypeDef.STORAGE]
		 * 阵法忍者列表：ninjas[NinjaListTypeDef.FORMATION]
		 * 以上所有列表均为Vector.<NinjaInfo>类型，并且受type参数控制
		 * @usage 所有列表均已排好序，无需再二次排序，这样可以保证排序的统一性
		 */
		public var ninjas:Dictionary;
		
		/**
		 * 是否从后台请求新数据
		 */
		public var pull:Boolean;
		
		/**
		 * 附带返回阵法信息
		 */
		public var formation:FormationInfo;
		
		/**
		 * 构造函数
		 * create a [RequestNinjaListCommand] object
		 */
		public function RequestNinjaListCommand(type:uint = NinjaListTypeDef.PACKAGE, pull:Boolean = true)
		{
			this.type = type; this.pull = pull;
		}
	}

}