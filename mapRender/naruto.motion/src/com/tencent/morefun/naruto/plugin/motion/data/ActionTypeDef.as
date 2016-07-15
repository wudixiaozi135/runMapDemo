package com.tencent.morefun.naruto.plugin.motion.data
{

	public class ActionTypeDef
	{
		public static const STAGE:int = 0;//登场 退场
		public static const COMMON:int = 1;//普通攻击
		public static const COMBO:int = 2;//触发技能
		public static const CALLUP:int = 3;//召唤
		public static const MASTER:int = 4;//召唤与分身一起攻击
		public static const SCRIPT:int = 5;//剧情
		public static const FORMATION:int = 6;//剧情
		public static const DIALOGUE:int = 7;//冒泡对话
		public static const ENCHATMENT:int = 8;//结界
		public static const ABORT:int = 9;
		public static const TRANSFORM:int = 10;
		public static const ENERVATION:int = 11;
		public static const ONLY_DEFENCE_EFFECT:int = 12;
		public static const GUID_SCRIPT:int = 13;
	
															
		public function autoSetNull():void
		{

		}
	}
}