package friend.data
{
	import serverProto.inc.ProtoDiamondInfo;
	import serverProto.inc.ProtoPlayerKey;

	public class FriendInfo
	{
		public var playerKey:ProtoPlayerKey;
		public var name:String;
		public var level:int;
		public var role:int;  //5个主角，分别用1，2，3，4，5表示
		public var status:int;
		public var teamId:String;
		public var friendDegreeLevel:int; //好友度等级
		public var friendDegree:int;  //好友度
		public var maxFriendDegree:int; //当前好友度等级最大的好友度
		public var wateringStatus:int;  //浇水状态 0-不可浇水  1-可浇水
		public var vipLevel:int;//VIP等级
		public var diamondInfo:ProtoDiamondInfo;//蓝钻黄钻等信息
		public var logOutTime:Number;//上次离线时间
		public var index:int;
		public var selected:Boolean;
		public var fightCap:int; //战斗力
		
		public function FriendInfo()
		{
		}
	}
}