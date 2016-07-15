package crew.data 
{
	import flash.utils.Dictionary;
	/**
	 * 忍者数据值
	 * @author larryhou
	 * @createTime 2014/4/21 17:26
	 */
    import com.tencent.morefun.naruto.i18n.I18n;
	public class NinjaPropsPropertyInfo 
	{
		/**
		 * 最大血量
		 */
		public var hp:uint;
		
		/**
		 * 攻击
		 */
		public var attack:uint;
		
		/**
		 * 防御
		 */
		public var defense:uint;
		
		/**
		 * 忍术
		 */
		public var ninjutsu:uint;
		
		/**
		 * 抗性
		 */
		public var resistance:uint;
		
		/**
		 * 暴击值
		 */
		public var crit:uint;
		
		/**
		 * 暴击伤害
		 */
		public var damage:uint;
		
		/**
		 * 先攻值、速度
		 */
		public var speed:uint;
		
		/**
		 * 连击值
		 */
		public var combo:uint;
		
		/**
		 * 控制值
		 */
		public var control:uint;
		
		/**
		 * 体术穿透值
		 */
		public var penetrationBody:uint;
		
		/**
		 * 忍术穿透值
		 */
		public var penetrationNinjutsu:uint;
		
		/**
		 * 伤害减免值
		 */
		public var damageReduction:uint;
		
		/**
		 * 体力恢复值
		 */
		public var restoration:uint;
		
		/**
		 * 火抗
		 */
		public var resistanceFire:uint;
		
		/**
		 * 风抗
		 */
		public var resistanceWind:uint;
		
		/**
		 * 雷抗
		 */
		public var resistanceThunder:uint;
		
		/**
		 * 土抗
		 */
		public var resistanceEarth:uint;
		
		/**
		 * 水抗
		 */
		public var resistanceWater:uint;
		
		/**
		 * 后台下发字段列表
		 */
		public var keys:Vector.<String>;
		
		/**
		 * 获取属性对应中文
		 * @param	property	属性键值
		 */
		public function getPropertyName(property:String):String
		{
			return nameKeys[property] as String;
		}
		
		// static members
		//*************************************************
		private static const nameKeys:Dictionary = generateKeys();
		private static function generateKeys():Dictionary
		{
			var map:Dictionary = new Dictionary();
			map["hp"] = I18n.lang("as_include_1451031571_2569");
			map["attack"] = I18n.lang("as_include_1451031571_2570");
			map["defense"] = I18n.lang("as_include_1451031571_2571");
			map["ninjutsu"] = I18n.lang("as_include_1451031571_2572");
			map["resistance"] = I18n.lang("as_include_1451031571_2573");
			map["resistanceWater"] = I18n.lang("as_include_1451031571_2574");
			map["resistanceEarth"] = I18n.lang("as_include_1451031571_2575");
			map["resistanceThunder"] = I18n.lang("as_include_1451031571_2576");
			map["resistanceWind"] = I18n.lang("as_include_1451031571_2577");
			map["resistanceFire"] = I18n.lang("as_include_1451031571_2578");
			map["restoration"] = I18n.lang("as_include_1451031571_2579");
			map["damageReduction"] = I18n.lang("as_include_1451031571_2580");
			map["penetrationNinjutsu"] = I18n.lang("as_include_1451031571_2581");
			map["penetrationBody"] = I18n.lang("as_include_1451031571_2582");
			map["control"] = I18n.lang("as_include_1451031571_2583");
			map["combo"] = I18n.lang("as_include_1451031571_2584");
			map["speed"] = I18n.lang("as_include_1451031571_2585");
			map["damage"] = I18n.lang("as_include_1451031571_2586");
			map["crit"] = I18n.lang("as_include_1451031571_2587");
			return map;
		}
		
		/**
		 * 获取属性对应索引
		 * @param	property	属性键值
		 */
		public function getPropertyIndex(property:String):int
		{
			switch (property)
			{
				case "resistanceWind": return 0;
				case "resistanceFire": return 1;
				case "resistanceWater": return 2;
				case "resistanceEarth": return 3;
				case "resistanceThunder": return 4;
				case "defense": return 5;
				case "resistance": return 6;
				case "hp": return 7;
				case "attack": return 8;
				case "ninjutsu": return 9;
				case "penetrationBody": return 10;
				case "penetrationNinjutsu": return 11;
				case "damageReduction": return 12;
				case "restoration": return 13;
				case "crit": return 14;
				case "damage": return 15;
				case "control": return 16;
				case "combo": return 17;
			}
			return -1;
		}
	}
}