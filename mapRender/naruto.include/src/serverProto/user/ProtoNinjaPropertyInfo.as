package serverProto.user {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.user.ProtoNinjaPropertyComposeInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNinjaPropertyInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CURRENT_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoNinjaPropertyInfo.current_hp", "currentHp", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_hp$field:int;

		private var hasField$0:uint = 0;

		public function clearCurrentHp():void {
			hasField$0 &= 0xfffffffe;
			current_hp$field = new int();
		}

		public function get hasCurrentHp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currentHp(value:int):void {
			hasField$0 |= 0x1;
			current_hp$field = value;
		}

		public function get currentHp():int {
			return current_hp$field;
		}

		/**
		 *  @private
		 */
		public static const HP_ULIMIT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoNinjaPropertyInfo.hp_ulimit", "hpUlimit", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoNinjaPropertyComposeInfo);

		private var hp_ulimit$field:serverProto.user.ProtoNinjaPropertyComposeInfo;

		public function clearHpUlimit():void {
			hp_ulimit$field = null;
		}

		public function get hasHpUlimit():Boolean {
			return hp_ulimit$field != null;
		}

		public function set hpUlimit(value:serverProto.user.ProtoNinjaPropertyComposeInfo):void {
			hp_ulimit$field = value;
		}

		public function get hpUlimit():serverProto.user.ProtoNinjaPropertyComposeInfo {
			return hp_ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const BODY_ATTACK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoNinjaPropertyInfo.body_attack", "bodyAttack", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoNinjaPropertyComposeInfo);

		private var body_attack$field:serverProto.user.ProtoNinjaPropertyComposeInfo;

		public function clearBodyAttack():void {
			body_attack$field = null;
		}

		public function get hasBodyAttack():Boolean {
			return body_attack$field != null;
		}

		public function set bodyAttack(value:serverProto.user.ProtoNinjaPropertyComposeInfo):void {
			body_attack$field = value;
		}

		public function get bodyAttack():serverProto.user.ProtoNinjaPropertyComposeInfo {
			return body_attack$field;
		}

		/**
		 *  @private
		 */
		public static const BODY_DEFENSE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoNinjaPropertyInfo.body_defense", "bodyDefense", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoNinjaPropertyComposeInfo);

		private var body_defense$field:serverProto.user.ProtoNinjaPropertyComposeInfo;

		public function clearBodyDefense():void {
			body_defense$field = null;
		}

		public function get hasBodyDefense():Boolean {
			return body_defense$field != null;
		}

		public function set bodyDefense(value:serverProto.user.ProtoNinjaPropertyComposeInfo):void {
			body_defense$field = value;
		}

		public function get bodyDefense():serverProto.user.ProtoNinjaPropertyComposeInfo {
			return body_defense$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_ATTACK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoNinjaPropertyInfo.ninja_attack", "ninjaAttack", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoNinjaPropertyComposeInfo);

		private var ninja_attack$field:serverProto.user.ProtoNinjaPropertyComposeInfo;

		public function clearNinjaAttack():void {
			ninja_attack$field = null;
		}

		public function get hasNinjaAttack():Boolean {
			return ninja_attack$field != null;
		}

		public function set ninjaAttack(value:serverProto.user.ProtoNinjaPropertyComposeInfo):void {
			ninja_attack$field = value;
		}

		public function get ninjaAttack():serverProto.user.ProtoNinjaPropertyComposeInfo {
			return ninja_attack$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_DEFENSE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoNinjaPropertyInfo.ninja_defense", "ninjaDefense", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.user.ProtoNinjaPropertyComposeInfo);

		private var ninja_defense$field:serverProto.user.ProtoNinjaPropertyComposeInfo;

		public function clearNinjaDefense():void {
			ninja_defense$field = null;
		}

		public function get hasNinjaDefense():Boolean {
			return ninja_defense$field != null;
		}

		public function set ninjaDefense(value:serverProto.user.ProtoNinjaPropertyComposeInfo):void {
			ninja_defense$field = value;
		}

		public function get ninjaDefense():serverProto.user.ProtoNinjaPropertyComposeInfo {
			return ninja_defense$field;
		}

		/**
		 *  @private
		 */
		public static const GROWTH_HP:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.growth_hp", "growthHp", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var growth_hp$field:int;

		public function clearGrowthHp():void {
			hasField$0 &= 0xfffffffd;
			growth_hp$field = new int();
		}

		public function get hasGrowthHp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set growthHp(value:int):void {
			hasField$0 |= 0x2;
			growth_hp$field = value;
		}

		public function get growthHp():int {
			return growth_hp$field;
		}

		/**
		 *  @private
		 */
		public static const GROWTH_BODY_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.growth_body_attack", "growthBodyAttack", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var growth_body_attack$field:int;

		public function clearGrowthBodyAttack():void {
			hasField$0 &= 0xfffffffb;
			growth_body_attack$field = new int();
		}

		public function get hasGrowthBodyAttack():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set growthBodyAttack(value:int):void {
			hasField$0 |= 0x4;
			growth_body_attack$field = value;
		}

		public function get growthBodyAttack():int {
			return growth_body_attack$field;
		}

		/**
		 *  @private
		 */
		public static const GROWTH_BODY_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.growth_body_defense", "growthBodyDefense", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var growth_body_defense$field:int;

		public function clearGrowthBodyDefense():void {
			hasField$0 &= 0xfffffff7;
			growth_body_defense$field = new int();
		}

		public function get hasGrowthBodyDefense():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set growthBodyDefense(value:int):void {
			hasField$0 |= 0x8;
			growth_body_defense$field = value;
		}

		public function get growthBodyDefense():int {
			return growth_body_defense$field;
		}

		/**
		 *  @private
		 */
		public static const GROWTH_NINJA_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.growth_ninja_attack", "growthNinjaAttack", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var growth_ninja_attack$field:int;

		public function clearGrowthNinjaAttack():void {
			hasField$0 &= 0xffffffef;
			growth_ninja_attack$field = new int();
		}

		public function get hasGrowthNinjaAttack():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set growthNinjaAttack(value:int):void {
			hasField$0 |= 0x10;
			growth_ninja_attack$field = value;
		}

		public function get growthNinjaAttack():int {
			return growth_ninja_attack$field;
		}

		/**
		 *  @private
		 */
		public static const GROWTH_NINJA_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.growth_ninja_defense", "growthNinjaDefense", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var growth_ninja_defense$field:int;

		public function clearGrowthNinjaDefense():void {
			hasField$0 &= 0xffffffdf;
			growth_ninja_defense$field = new int();
		}

		public function get hasGrowthNinjaDefense():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set growthNinjaDefense(value:int):void {
			hasField$0 |= 0x20;
			growth_ninja_defense$field = value;
		}

		public function get growthNinjaDefense():int {
			return growth_ninja_defense$field;
		}

		/**
		 *  @private
		 */
		public static const CRIT_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.crit_value", "critValue", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var crit_value$field:int;

		public function clearCritValue():void {
			hasField$0 &= 0xffffffbf;
			crit_value$field = new int();
		}

		public function get hasCritValue():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set critValue(value:int):void {
			hasField$0 |= 0x40;
			crit_value$field = value;
		}

		public function get critValue():int {
			return crit_value$field;
		}

		/**
		 *  @private
		 */
		public static const CRIT_DAMAGE_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.crit_damage_value", "critDamageValue", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var crit_damage_value$field:int;

		public function clearCritDamageValue():void {
			hasField$0 &= 0xffffff7f;
			crit_damage_value$field = new int();
		}

		public function get hasCritDamageValue():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set critDamageValue(value:int):void {
			hasField$0 |= 0x80;
			crit_damage_value$field = value;
		}

		public function get critDamageValue():int {
			return crit_damage_value$field;
		}

		/**
		 *  @private
		 */
		public static const SPEED:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.speed", "speed", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var speed$field:int;

		public function clearSpeed():void {
			hasField$0 &= 0xfffffeff;
			speed$field = new int();
		}

		public function get hasSpeed():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set speed(value:int):void {
			hasField$0 |= 0x100;
			speed$field = value;
		}

		public function get speed():int {
			return speed$field;
		}

		/**
		 *  @private
		 */
		public static const COMBO_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.combo_value", "comboValue", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combo_value$field:int;

		public function clearComboValue():void {
			hasField$0 &= 0xfffffdff;
			combo_value$field = new int();
		}

		public function get hasComboValue():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set comboValue(value:int):void {
			hasField$0 |= 0x200;
			combo_value$field = value;
		}

		public function get comboValue():int {
			return combo_value$field;
		}

		/**
		 *  @private
		 */
		public static const CONTROL_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.control_value", "controlValue", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var control_value$field:int;

		public function clearControlValue():void {
			hasField$0 &= 0xfffffbff;
			control_value$field = new int();
		}

		public function get hasControlValue():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set controlValue(value:int):void {
			hasField$0 |= 0x400;
			control_value$field = value;
		}

		public function get controlValue():int {
			return control_value$field;
		}

		/**
		 *  @private
		 */
		public static const BODY_PENETRATE_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.body_penetrate_value", "bodyPenetrateValue", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		private var body_penetrate_value$field:int;

		public function clearBodyPenetrateValue():void {
			hasField$0 &= 0xfffff7ff;
			body_penetrate_value$field = new int();
		}

		public function get hasBodyPenetrateValue():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set bodyPenetrateValue(value:int):void {
			hasField$0 |= 0x800;
			body_penetrate_value$field = value;
		}

		public function get bodyPenetrateValue():int {
			return body_penetrate_value$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_PENETRATE_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.ninja_penetrate_value", "ninjaPenetrateValue", (18 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_penetrate_value$field:int;

		public function clearNinjaPenetrateValue():void {
			hasField$0 &= 0xffffefff;
			ninja_penetrate_value$field = new int();
		}

		public function get hasNinjaPenetrateValue():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set ninjaPenetrateValue(value:int):void {
			hasField$0 |= 0x1000;
			ninja_penetrate_value$field = value;
		}

		public function get ninjaPenetrateValue():int {
			return ninja_penetrate_value$field;
		}

		/**
		 *  @private
		 */
		public static const DAMAGE_REDUCE_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.damage_reduce_value", "damageReduceValue", (19 << 3) | com.netease.protobuf.WireType.VARINT);

		private var damage_reduce_value$field:int;

		public function clearDamageReduceValue():void {
			hasField$0 &= 0xffffdfff;
			damage_reduce_value$field = new int();
		}

		public function get hasDamageReduceValue():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set damageReduceValue(value:int):void {
			hasField$0 |= 0x2000;
			damage_reduce_value$field = value;
		}

		public function get damageReduceValue():int {
			return damage_reduce_value$field;
		}

		/**
		 *  @private
		 */
		public static const HP_RESTORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.hp_restore", "hpRestore", (20 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hp_restore$field:int;

		public function clearHpRestore():void {
			hasField$0 &= 0xffffbfff;
			hp_restore$field = new int();
		}

		public function get hasHpRestore():Boolean {
			return (hasField$0 & 0x4000) != 0;
		}

		public function set hpRestore(value:int):void {
			hasField$0 |= 0x4000;
			hp_restore$field = value;
		}

		public function get hpRestore():int {
			return hp_restore$field;
		}

		/**
		 *  @private
		 */
		public static const FIRE_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.fire_resist", "fireResist", (21 << 3) | com.netease.protobuf.WireType.VARINT);

		private var fire_resist$field:int;

		public function clearFireResist():void {
			hasField$0 &= 0xffff7fff;
			fire_resist$field = new int();
		}

		public function get hasFireResist():Boolean {
			return (hasField$0 & 0x8000) != 0;
		}

		public function set fireResist(value:int):void {
			hasField$0 |= 0x8000;
			fire_resist$field = value;
		}

		public function get fireResist():int {
			return fire_resist$field;
		}

		/**
		 *  @private
		 */
		public static const WIND_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.wind_resist", "windResist", (22 << 3) | com.netease.protobuf.WireType.VARINT);

		private var wind_resist$field:int;

		public function clearWindResist():void {
			hasField$0 &= 0xfffeffff;
			wind_resist$field = new int();
		}

		public function get hasWindResist():Boolean {
			return (hasField$0 & 0x10000) != 0;
		}

		public function set windResist(value:int):void {
			hasField$0 |= 0x10000;
			wind_resist$field = value;
		}

		public function get windResist():int {
			return wind_resist$field;
		}

		/**
		 *  @private
		 */
		public static const THUNDER_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.thunder_resist", "thunderResist", (23 << 3) | com.netease.protobuf.WireType.VARINT);

		private var thunder_resist$field:int;

		public function clearThunderResist():void {
			hasField$0 &= 0xfffdffff;
			thunder_resist$field = new int();
		}

		public function get hasThunderResist():Boolean {
			return (hasField$0 & 0x20000) != 0;
		}

		public function set thunderResist(value:int):void {
			hasField$0 |= 0x20000;
			thunder_resist$field = value;
		}

		public function get thunderResist():int {
			return thunder_resist$field;
		}

		/**
		 *  @private
		 */
		public static const EARTH_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.earth_resist", "earthResist", (24 << 3) | com.netease.protobuf.WireType.VARINT);

		private var earth_resist$field:int;

		public function clearEarthResist():void {
			hasField$0 &= 0xfffbffff;
			earth_resist$field = new int();
		}

		public function get hasEarthResist():Boolean {
			return (hasField$0 & 0x40000) != 0;
		}

		public function set earthResist(value:int):void {
			hasField$0 |= 0x40000;
			earth_resist$field = value;
		}

		public function get earthResist():int {
			return earth_resist$field;
		}

		/**
		 *  @private
		 */
		public static const WATER_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.user.ProtoNinjaPropertyInfo.water_resist", "waterResist", (25 << 3) | com.netease.protobuf.WireType.VARINT);

		private var water_resist$field:int;

		public function clearWaterResist():void {
			hasField$0 &= 0xfff7ffff;
			water_resist$field = new int();
		}

		public function get hasWaterResist():Boolean {
			return (hasField$0 & 0x80000) != 0;
		}

		public function set waterResist(value:int):void {
			hasField$0 |= 0x80000;
			water_resist$field = value;
		}

		public function get waterResist():int {
			return water_resist$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasCurrentHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, current_hp$field);
			}
			if (hasHpUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, hp_ulimit$field);
			}
			if (hasBodyAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, body_attack$field);
			}
			if (hasBodyDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, body_defense$field);
			}
			if (hasNinjaAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_attack$field);
			}
			if (hasNinjaDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_defense$field);
			}
			if (hasGrowthHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, growth_hp$field);
			}
			if (hasGrowthBodyAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, growth_body_attack$field);
			}
			if (hasGrowthBodyDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, growth_body_defense$field);
			}
			if (hasGrowthNinjaAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, growth_ninja_attack$field);
			}
			if (hasGrowthNinjaDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, growth_ninja_defense$field);
			}
			if (hasCritValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, crit_value$field);
			}
			if (hasCritDamageValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, crit_damage_value$field);
			}
			if (hasSpeed) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, speed$field);
			}
			if (hasComboValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, combo_value$field);
			}
			if (hasControlValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, control_value$field);
			}
			if (hasBodyPenetrateValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, body_penetrate_value$field);
			}
			if (hasNinjaPenetrateValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 18);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_penetrate_value$field);
			}
			if (hasDamageReduceValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, damage_reduce_value$field);
			}
			if (hasHpRestore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 20);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, hp_restore$field);
			}
			if (hasFireResist) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 21);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, fire_resist$field);
			}
			if (hasWindResist) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 22);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, wind_resist$field);
			}
			if (hasThunderResist) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 23);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, thunder_resist$field);
			}
			if (hasEarthResist) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 24);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, earth_resist$field);
			}
			if (hasWaterResist) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 25);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, water_resist$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var current_hp$count:uint = 0;
			var hp_ulimit$count:uint = 0;
			var body_attack$count:uint = 0;
			var body_defense$count:uint = 0;
			var ninja_attack$count:uint = 0;
			var ninja_defense$count:uint = 0;
			var growth_hp$count:uint = 0;
			var growth_body_attack$count:uint = 0;
			var growth_body_defense$count:uint = 0;
			var growth_ninja_attack$count:uint = 0;
			var growth_ninja_defense$count:uint = 0;
			var crit_value$count:uint = 0;
			var crit_damage_value$count:uint = 0;
			var speed$count:uint = 0;
			var combo_value$count:uint = 0;
			var control_value$count:uint = 0;
			var body_penetrate_value$count:uint = 0;
			var ninja_penetrate_value$count:uint = 0;
			var damage_reduce_value$count:uint = 0;
			var hp_restore$count:uint = 0;
			var fire_resist$count:uint = 0;
			var wind_resist$count:uint = 0;
			var thunder_resist$count:uint = 0;
			var earth_resist$count:uint = 0;
			var water_resist$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (current_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.currentHp cannot be set twice.');
					}
					++current_hp$count;
					this.currentHp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (hp_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.hpUlimit cannot be set twice.');
					}
					++hp_ulimit$count;
					this.hpUlimit = new serverProto.user.ProtoNinjaPropertyComposeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.hpUlimit);
					break;
				case 3:
					if (body_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.bodyAttack cannot be set twice.');
					}
					++body_attack$count;
					this.bodyAttack = new serverProto.user.ProtoNinjaPropertyComposeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.bodyAttack);
					break;
				case 4:
					if (body_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.bodyDefense cannot be set twice.');
					}
					++body_defense$count;
					this.bodyDefense = new serverProto.user.ProtoNinjaPropertyComposeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.bodyDefense);
					break;
				case 5:
					if (ninja_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.ninjaAttack cannot be set twice.');
					}
					++ninja_attack$count;
					this.ninjaAttack = new serverProto.user.ProtoNinjaPropertyComposeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaAttack);
					break;
				case 6:
					if (ninja_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.ninjaDefense cannot be set twice.');
					}
					++ninja_defense$count;
					this.ninjaDefense = new serverProto.user.ProtoNinjaPropertyComposeInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaDefense);
					break;
				case 7:
					if (growth_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.growthHp cannot be set twice.');
					}
					++growth_hp$count;
					this.growthHp = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 8:
					if (growth_body_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.growthBodyAttack cannot be set twice.');
					}
					++growth_body_attack$count;
					this.growthBodyAttack = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 9:
					if (growth_body_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.growthBodyDefense cannot be set twice.');
					}
					++growth_body_defense$count;
					this.growthBodyDefense = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 10:
					if (growth_ninja_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.growthNinjaAttack cannot be set twice.');
					}
					++growth_ninja_attack$count;
					this.growthNinjaAttack = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 11:
					if (growth_ninja_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.growthNinjaDefense cannot be set twice.');
					}
					++growth_ninja_defense$count;
					this.growthNinjaDefense = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 12:
					if (crit_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.critValue cannot be set twice.');
					}
					++crit_value$count;
					this.critValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 13:
					if (crit_damage_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.critDamageValue cannot be set twice.');
					}
					++crit_damage_value$count;
					this.critDamageValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 14:
					if (speed$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.speed cannot be set twice.');
					}
					++speed$count;
					this.speed = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 15:
					if (combo_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.comboValue cannot be set twice.');
					}
					++combo_value$count;
					this.comboValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 16:
					if (control_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.controlValue cannot be set twice.');
					}
					++control_value$count;
					this.controlValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 17:
					if (body_penetrate_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.bodyPenetrateValue cannot be set twice.');
					}
					++body_penetrate_value$count;
					this.bodyPenetrateValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 18:
					if (ninja_penetrate_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.ninjaPenetrateValue cannot be set twice.');
					}
					++ninja_penetrate_value$count;
					this.ninjaPenetrateValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 19:
					if (damage_reduce_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.damageReduceValue cannot be set twice.');
					}
					++damage_reduce_value$count;
					this.damageReduceValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 20:
					if (hp_restore$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.hpRestore cannot be set twice.');
					}
					++hp_restore$count;
					this.hpRestore = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 21:
					if (fire_resist$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.fireResist cannot be set twice.');
					}
					++fire_resist$count;
					this.fireResist = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 22:
					if (wind_resist$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.windResist cannot be set twice.');
					}
					++wind_resist$count;
					this.windResist = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 23:
					if (thunder_resist$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.thunderResist cannot be set twice.');
					}
					++thunder_resist$count;
					this.thunderResist = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 24:
					if (earth_resist$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.earthResist cannot be set twice.');
					}
					++earth_resist$count;
					this.earthResist = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 25:
					if (water_resist$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNinjaPropertyInfo.waterResist cannot be set twice.');
					}
					++water_resist$count;
					this.waterResist = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
