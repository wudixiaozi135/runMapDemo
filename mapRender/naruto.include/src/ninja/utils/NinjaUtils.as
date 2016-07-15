package ninja.utils 
{
	import flash.utils.describeType;
	import flash.utils.Dictionary;
	import serverProto.formation.FormationType;
	import serverProto.inc.NinjaSourceType;
	
	/**
	 * 忍者系统工具类
	 * @author larryhou
	 * @createTime 2015/4/23 11:33
	 */
	public class NinjaUtils 
	{
		/**
		 * 忍者来源返回阵法来源
		 * @param  ninjaSourceType	@see serverProto.inc.NinjaSourceType
		 * @return @see serverProto.formation.FormationType
		 */
		public static function getFormationType(ninjaSourceType:uint):uint
		{
			switch (ninjaSourceType)
			{
				case NinjaSourceType.NINJA_SOURCE_TYPE_EXPEDITION:return FormationType.EXPEDITION_FORMATION;
				case NinjaSourceType.NINJA_SOURCE_TYPE_BASE_MONEY:return FormationType.BASE_MONEY_FORMATION;
				case NinjaSourceType.NINJA_SOURCE_TYPE_BASE_RASHOMON:return FormationType.BASE_RASHOMON_FORMATION;
				case NinjaSourceType.NINJA_SOURCE_TYPE_BASE_MAIN:return FormationType.BASE_MAIN_FORMATION;
				case NinjaSourceType.NINJA_SOURCE_TYPE_SINGLE_ARENA_INFERIOR:return FormationType.SINGLE_ARENA_INFERIOR;
				case NinjaSourceType.NINJA_SOURCE_TYPE_SINGLE_ARENA_MEDIUM:return FormationType.SINGLE_ARENA_MEDIUM;
				case NinjaSourceType.NINJA_SOURCE_TYPE_RANK_BATTLE_DOWN:return FormationType.FORMATION_TYPE_RANK_BATTLE_DOWN;
				case NinjaSourceType.NINJA_SOURCE_TYPE_RANK_BATTLE_MID:return FormationType.FORMATION_TYPE_RANK_BATTLE_MID;
				case NinjaSourceType.NINJA_SOURCE_TYPE_RANK_BATTLE_UP:return FormationType.FORMATION_TYPE_RANK_BATTLE_UP;
				case NinjaSourceType.NINJA_SOURCE_TYPE_WARWORSHIP:return FormationType.FORMATION_TYPE_WARWORSHIP;
			}
			
			return FormationType.DEFAULT_FORMATION;
		}
		
		/**
		 * 根据阵法来源ID返回忍者来源
		 * @param  formationType @see serverProto.formation.FormationType
		 * @return @see serverProto.inc.NinjaSourceType
		 */
		public static function getNinjaSourceType(formationType:uint):uint
		{
			if (!map)
			{
				map = new Dictionary(false);
				var list:XMLList = describeType(NinjaSourceType).constant;
				for each(var node:XML in list)
				{
					var sourceType:uint = NinjaSourceType[String(node.@name)];
					map[getFormationType(sourceType)] = sourceType;
				}
			}
			
			return map[formationType];
		}
	}
}
import flash.utils.Dictionary;
var map:Dictionary;