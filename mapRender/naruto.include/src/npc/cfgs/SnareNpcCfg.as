package npc.cfgs
{
	

	public class SnareNpcCfg extends BaseNpcCfg
	{
		public static const HIT_TYPE_RADIUS:int = 1;
		public static const HIT_TYPE_POINTS:int = 2;
		public var range:int;
		/**
		 * 持续时间 
		 */
		public var duration:int;
		/** 陷阱机关类型 */
		public var snareType:int;
		/** 动画间隔 */		
		public var interval:int;
		/** 伤害间隔 */
		public var hurtInterval:int;
		/** 伤害值 */
		public var hurt:int;
		/** 是否循环 */
		public var loop:Boolean;
		/** 碰撞判断类型，1圆形，2资源里面点的多边形 */
		public var hitType:int;
		/** 碰撞判断类型为1圆形时的半径 */
		public var hitRadius:int;
		
		public function SnareNpcCfg()
		{
			super();
		}
		
		override public function parse(xml:XML):void
		{
			super.parse(xml);
			
			name = xml.@name;
//			range = xml.@range;
			duration = xml.@duration;
			interval = xml.@interval;
			hurt = xml.@hurt;
			loop = String(xml.@loop)=="1";
			hitType = xml.@hitType;
			hitRadius = xml.@hitRadius;
			hurtInterval = xml.@hurtInterval;
			snareType = xml.@snareType;
		}
	}
}