package user.data
{
    public class LevelUpData
    {
        public var uin:uint;                    // 升级用户的uin
		public var roleId:uint;
		public var svrId:uint;
        public var ninjaId:uint;                // 忍者id
        public var levelBefore:int;             // 旧等级
        public var levelAfter:int;              // 新等级
        public var leadershipBefore:int;        // 旧领导力
        public var leadershipAfter:int;         // 新领导力
        public var ninjaNumBefore:int;          // 旧忍者携带数量
        public var ninjaNumAfter:int;           // 新忍者携带数量
        public var battlePointBefore:int;       // 旧战斗力
        public var battlePointAfter:int;        // 新战斗力
        public var val1Before:int;              // 旧生命值
        public var val1After:int;               // 新生命值
        public var val2Before:int;              // 旧攻击力
        public var val2After:int;               // 新攻击力
        public var val3Before:int;              // 旧防御力
        public var val3After:int;               // 新防御力
        public var val4Before:int;              // 旧忍术值
        public var val4After:int;               // 新忍术值
        public var val5Before:int;              // 旧抗性值
        public var val5After:int;               // 新抗性值
		
		public function LevelUpData():void
		{
			
		}
    }
}