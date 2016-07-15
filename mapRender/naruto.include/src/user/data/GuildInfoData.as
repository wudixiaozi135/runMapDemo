package user.data {
	import com.netease.protobuf.UInt64;

	/**
	 *用户公会基本信息 
	 * @author georgehu
	 * enum GuildMemberIdentity
{
	EM_COMMON     = 0;  //普通玩家
	EM_ELITE      = 1;  //精英
	EM_SHADOW     = 2;  //暗部
	EM_HIGH_LEVEL = 3;  //高层
	EM_CHIEF      = 4;  //首领
}
	 */    
    public class GuildInfoData {
		public var guildId:UInt64=null;
		public var guildName:String=null;
		/**
		 * 公会等级
		 */
		public var guildLvl:int=0;
		/**
		 * 玩家在公会中的职位0;  //普通玩家1;  //精英2;  //暗部3;  //高层 4;  //首领
		 */
		public var guildMemberIdentity:int=0;
		/** 
		 * 创建需要的元宝
		 */		
		public var needYuanbao:uint = 0;
		/** 
		 * 创建需要的等级条件
		 */		
		public var needLv:uint = 0;
        public function GuildInfoData() {
        }
    }
}
