package com.tencent.morefun.naruto.plugin.motion.manager.ninja.data
{

	public class RoleStatusOffsetDef
	{
		public static const NULL:int = 1; // 无状态
		public static const RUN:int = 2; //前进中
		public static const RUN_COMPLETE:int = 3;//前进完成
		public static const JUMP_UP:int = 4;//起跳中
		public static const JUMP_UP_COMPLETE:int = 5;//起跳完成
		public static const JUMP_DOWN:int = 6; //下落中
		public static const JUMP_DOWN_COMPLETE:int = 7;//下落完成
		public static const ATTACK:int = 8;//攻击中
		public static const ATTACK_COMPLETE:int = 9;//攻击完成
		public static const ATTACK_TURN_BACK:int = 20;//回去的路中
		public static const ATTACK_TURN_BACK_COMPLETE:int = 21;//回去完成
		public static const BE_HIT_LOCK:int = 22;//被打锁定，表示当前角色有人在打了，其他人要打得排队
		public static const BE_HIT:int = 23;//被打中
		public static const BE_HIT_COMPLETE:int = 24;//被打完成
		public static const STAND_UP:int = 25;//站起来
		public static const STAND_UP_COMPLETE:int = 26;//站起来完成
	
															
		public function autoSetNull():void
		{

		}
	}
}