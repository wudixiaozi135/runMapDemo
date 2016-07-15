package com.tencent.morefun.naruto.plugin.motion.data
{

	public class AttackResultItemInfo
	{
		public var code:String;//受击结果代号
		public var defenceType:int = 0;// 0常规 1霸体
		public var defenceAction:String;//防御过程动作
		public var defenceEndEffect:int;//防御特效
		public var defenceEffect:int;
		public var needRestIdle:Boolean;//防御结束后是否恢复IDLE，受击结果为地面的一般都需要恢复到IDLE 浮空倒地的不需要
		public var beatback:Boolean;//是否击退
		public var defenceEndAction:String;//防御结尾动作
		public var hideBlood:Boolean;
		public var showBlood:Boolean;
		public var isEmptyAction:Boolean;
	
															
		public function autoSetNull():void
		{

		}
	}
}