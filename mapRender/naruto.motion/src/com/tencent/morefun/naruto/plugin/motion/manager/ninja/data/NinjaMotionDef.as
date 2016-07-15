package com.tencent.morefun.naruto.plugin.motion.manager.ninja.data
{

	public class NinjaMotionDef
	{
		public static const idle:String = "C_idle"; 							//默认动作
		public static const enervationIdle:String = "C_dead1";			//虚弱待机
		public static const inEnervation:String = "C_dead";				//进入虚弱
		public static const outEnervation:String = "land_stand";			//结束虚弱
		public static const skillIdle_1:String = "C_skillIdle_1";
		public static const skillIdle_2:String = "C_skillIdle_2";
		public static const run1_1:String = "C_run1_1"; 							//移动动作
		public static const run1_2:String = "C_run1_2"; 							//瞬移到达目的后出现动作
		public static const run1_3:String = "C_run1_3"; 							//瞬移消失前动作
		public static const run2_1:String = "C_run2_1";
		public static const run2_2:String = "C_run2_2";
		public static const run2_3:String = "C_run2_3";

		public static const miss:String = "D_miss"; 							//躲闪
		public static const exeunt:String = "C_exeunt";						//退场
		public static const callup_dead:String = "C_callup_dead";
		public static const enter:String = "C_entry";							//进场
		public static const dead:String = "C_dead"; 							//死亡倒地
		public static const jumpup1_1:String = "jumpup1_1";						//起跳2
		public static const jumpup1_2:String = "jumpup1_2";						//起跳2
		public static const jumpdown1_1:String = "jumpdown1_1";
		public static const jumpdown1_2:String = "jumpdown1_2";
		
		public static const be_call_up:String = "C_be_call_up";
		public static const call_up_fail:String = "call_up_fail";
		
		public static const defaultAttackPoint:String = "C_defaultAttackPoint";
		public static const defaultDefencePoint:String = "C_defaultDefencePoint";
		
		public static const beatback_1:String = "D_beatback1";
		public static const beatback_2:String = "D_beatback2";
		public static const beatback_3:String = "D_beatback3";
		public static const beatback_4:String = "D_beatback4";
		public static const beatback_5:String = "D_beatback5";
		
		public static const beatback_beHit:String = "D_behit_1";
		
		public static const beatback:String = "beatback";
	
															
		public function autoSetNull():void
		{

		}
	}
}