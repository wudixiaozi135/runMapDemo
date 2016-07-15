package ninja.command 
{
	import RSModel.command.RSModelCommand;
	
	import ninja.model.data.FormationInfo;
	import ninja.model.data.NinjaInfo;
	
	/**
	 * 获取阵法信息
	 * @author larryhou
	 * @createTime 2013/12/12 21:21
	 */
	public class RequestFormationTroopCommand extends RSModelCommand
	{		
		// 数据类型
		//*************************************************
		/**
		 * 背包数据
		 */
		public static const PACKAGE:uint = 1/*1 << 0*/;
		
		/**
		 * 仓库数据
		 */
		public static const STORAGE:uint = 2/*1 << 1*/;
		
		// params
		//*************************************************
		/**
		 * 仓库类型 @see serverProto.ninjaSystem.NinjaSourceType 
		 */		
		public var sourceType:uint;
		
		/**
		 * 数据类型标记
		 */
		public var flag:uint;
		
		// response
		//*************************************************
		/**
		 * 当前阵法信息
		 */
		public var formation:FormationInfo;
		
		/**
		 * 仓库忍者列表 
		 */	
		public var storageNinjas:Vector.<NinjaInfo>;
		
		/**
		 * 背包忍者列表
		 */
		public var packageNinjas:Vector.<NinjaInfo>;
		
		/**
		 * 构造函数
		 * create a [RequestFormationCommand] object
		 */
		public function RequestFormationTroopCommand(sourceType:uint, flag:uint = STORAGE)
		{
			this.sourceType = sourceType;
			this.flag = flag;
		}
	}
}