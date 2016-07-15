package user.data
{
	import com.netease.protobuf.UInt64;
	
	import ninja.model.data.FormationInfo;
	import ninja.model.data.NinjaInfo;
	
	import serverProto.inc.ProtoDiamondInfo;

    public class OtherUserInfo
    {
        public var uin:uint;
        public var roleId:uint;
        public var serverId:uint;
        public var name:String;
        public var level:int;
        public var hp:int;
        public var maxHp:int;
        public var chakura:int;
        public var battlePower:int;
		public var roleTalentAwakenSkill:int; //主角的奥义技
		public var roleTalentCommonSkill:int; //主角的普攻
		public var roleTalentSkill:Array; //主角的其他天赋技能
		public var formationInfo:FormationInfo;
		public var ninjaInfos:Vector.<ninja.model.data.NinjaInfo>;
		public var teamId:String;
		public var roleCategory:uint;//遁系
		public var vipLevel:int;//VIP等级
		public var diamondInfo:ProtoDiamondInfo;//钻信息
		public var guildName:String;//所在公会名字
		public var guildMemberIdentity:int;//在公会中的职位名称
		public var choosedTitleId:int;//在称号系统中的称号
		public var guildId:UInt64;//组织ID
		
		
		public function OtherUserInfo():void
		{
			
		}
    }
}