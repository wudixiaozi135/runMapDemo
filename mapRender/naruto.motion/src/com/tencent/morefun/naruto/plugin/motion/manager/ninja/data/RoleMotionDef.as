package com.tencent.morefun.naruto.plugin.motion.manager.ninja.data
{

	public class RoleMotionDef
	{
		public var fix:String; //默认动作
		public var leisure:String; //闲暇动作
		public var move:String; //移动动作
		public var teletrot_hide:String; //瞬移消失前动作
		public var teletrot_show:String; //瞬移到达目的后出现动作
		public var attack1:String; //普通攻击1
		public var attack2:String; //普通攻击2
		public var attack3:String; //普通攻击3
		public var pass_attack1:String; //触发技1
		public var pass_attack2:String; //触发技2
		public var pass_attack3:String; //触发技3
		public var miss:String; //躲闪
		public var beAttack1:String; //普通受击1 捂脸
		public var beAttack2:String; //普通受击2 捂肚子
		public var beAttack3:String; //普通受击3 后仰
		public var beAttack4:String; //普通转浮空受击 保留浮空状态 有后续浮空攻击
		public var beAttack5:String; //普通转浮空受击 浮空完且下落 无后续浮空攻击 有倒地攻击
		public var beAttack6:String; //普通转浮空受击 浮空完且下落且站起来 无后续攻击
		public var beAttack7:String; //浮空受击 受击完保持浮空 有后续攻击
		public var beAttack8:String; //浮空受击 受击完下落 无后续浮空攻击 有倒地攻击
		public var beAttack9:String; //浮空受击 受击完下落且站起来 无后续攻击
		public var beAttack10:String; //倒地受击 受击完保持倒地 有后续攻击
		public var beAttack11:String; //倒地受击 受击完站起来 无后续攻击
		public var skill1:String; //觉醒技1
		public var skill2:String; //觉醒技2
		public var skill3:String; //觉醒技3
		public var magic:String; //施法 就一个结印动作
		public var dead:String; //死亡倒地
		public var jump_up:String; //起跳
		public var jump_down:String; //下落
		public var call_up:String; //成功被召唤出来
		public var call_up_fail:String; //召唤失败
		public var call_help:String; //叫人档刀
		public var call_help_complete:String; //叫人档刀完成
		
		public function setData(xml:XMLList):void
		{
			for each(var i:* in xml)
			{
				this[String(i.@name)] = String(i.@motionId);
			}
		}
	
															
		public function autoSetNull():void
		{

			fix = null;
			leisure = null;
			move = null;
			teletrot_hide = null;
			teletrot_show = null;
			attack1 = null;
			attack2 = null;
			attack3 = null;
			pass_attack1 = null;
			pass_attack2 = null;
			pass_attack3 = null;
			miss = null;
			beAttack1 = null;
			beAttack2 = null;
			beAttack3 = null;
			beAttack4 = null;
			beAttack5 = null;
			beAttack6 = null;
			beAttack7 = null;
			beAttack8 = null;
			beAttack9 = null;
			beAttack10 = null;
			beAttack11 = null;
			skill1 = null;
			skill2 = null;
			skill3 = null;
			magic = null;
			dead = null;
			jump_up = null;
			jump_down = null;
			call_up = null;
			call_up_fail = null;
			call_help = null;
			call_help_complete = null;
		}
	}
}