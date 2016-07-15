package com.tencent.morefun.naruto.plugin.motion.data
{

	public class BaseChangedInfo
	{
		public static const BLOOD:int = 0;//扣血
		public static const IGNITE:int = 1;//点燃
		public static const POISON:int = 2;//中毒
		public static const SPEED:int = 3;//速度
		public static const BODY_ATTACK:int = 4;//攻击
		public static const BODY_DEFENSE:int = 5;//防御
		public static const NINJA_ATTACK:int = 6;//忍术
		public static const NINJA_DEFENSE:int = 7;//抗性
		public static const CRIT:int = 8;//暴击率
		public static const FIRE_RESIST:int = 9;//火抗
		public static const WIND_RESIST:int = 10;//风抗
		public static const THUNDER_RESIST:int = 11;//雷抗
		public static const EARTH_RESIST:int = 12;//土抗
		public static const WATER_RESIST:int = 13;//水抗
		public static const NINJA_ATTACK_PENETRATE:int = 14;//忍术穿透
		public static const BODY_ATTACK_PENETRATE:int = 15;//体术穿透
		public static const HEAL_EFFECT:int = 16;//治疗效果
		public static const BRIDLE_BODY:int = 17;//定身
		public static const CHAOS:int = 18;//混乱
		public static const BLIND:int = 19;//目盲
		public static const PALSY:int = 20;//麻痹
		public static const SLEEP:int = 21;//睡眠
		public static const MARK:int = 22;//标记
		public static const ACUPUNCTURE:int = 23;//点穴
		public static const STEALTH:int = 24;//隐身
		public static const DISPERSE:int = 25;//驱散
		public static const COMBO:int = 26;//连击率
		
		public static const STEAL_HP:int = 10001;//吸血
		public static const REBOUND:int = 10002;//反弹
		public static const ALLELOPATHY:int = 10003;//属性相克
		public static const PRISON:int = 10004;//天牢
		public static const SOUL_CHAIN:int = 10005;//魂系
		public static const BODY_ATTACK_IMMU:int = 10006;//体术免疫
		public static const NINJA_ATTACK_IMMU:int = 10007;//忍术免疫
		public static const DAMAGE_FROM_OTHER:int = 10010;//别人打出的伤害,世界boss用
		
		public static const RESTRAIN_WATER_TO_FIRE:int = 10011;//别人打出的伤害,世界boss用
		public static const RESTRAIN_FIRE_TO_WIND:int = 10012;//别人打出的伤害,世界boss用
		public static const RESTRAIN_WIND_TO_THUNDER:int = 10013;//别人打出的伤害,世界boss用
		public static const RESTRAIN_THUNDER_TO_EARTH:int = 10014;//别人打出的伤害,世界boss用
		public static const RESTRAIN_EARTH_TO_WATER:int = 10015;//别人打出的伤害,世界boss用
		
		public static const MP:int = 20000;
		
		public static const IMMUNITY:int = 99999;//免疫
		
		public var type:int;
		public var value:int;
		public var critical:Boolean;
	
															
		public function autoSetNull():void
		{

		}
	}
}