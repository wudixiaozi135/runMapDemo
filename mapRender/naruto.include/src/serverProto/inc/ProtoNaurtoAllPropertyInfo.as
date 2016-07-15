package serverProto.inc {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNaurtoAllPropertyInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const HP_ULIMIT:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.hp_ulimit", "hpUlimit", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hp_ulimit$field:int;

		private var hasField$0:uint = 0;

		public function clearHpUlimit():void {
			hasField$0 &= 0xfffffffe;
			hp_ulimit$field = new int();
		}

		public function get hasHpUlimit():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set hpUlimit(value:int):void {
			hasField$0 |= 0x1;
			hp_ulimit$field = value;
		}

		public function get hpUlimit():int {
			return hp_ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const BODY_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.body_attack", "bodyAttack", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var body_attack$field:int;

		public function clearBodyAttack():void {
			hasField$0 &= 0xfffffffd;
			body_attack$field = new int();
		}

		public function get hasBodyAttack():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set bodyAttack(value:int):void {
			hasField$0 |= 0x2;
			body_attack$field = value;
		}

		public function get bodyAttack():int {
			return body_attack$field;
		}

		/**
		 *  @private
		 */
		public static const BODY_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.body_defense", "bodyDefense", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var body_defense$field:int;

		public function clearBodyDefense():void {
			hasField$0 &= 0xfffffffb;
			body_defense$field = new int();
		}

		public function get hasBodyDefense():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set bodyDefense(value:int):void {
			hasField$0 |= 0x4;
			body_defense$field = value;
		}

		public function get bodyDefense():int {
			return body_defense$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_ATTACK:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.ninja_attack", "ninjaAttack", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_attack$field:int;

		public function clearNinjaAttack():void {
			hasField$0 &= 0xfffffff7;
			ninja_attack$field = new int();
		}

		public function get hasNinjaAttack():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set ninjaAttack(value:int):void {
			hasField$0 |= 0x8;
			ninja_attack$field = value;
		}

		public function get ninjaAttack():int {
			return ninja_attack$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_DEFENSE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.ninja_defense", "ninjaDefense", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_defense$field:int;

		public function clearNinjaDefense():void {
			hasField$0 &= 0xffffffef;
			ninja_defense$field = new int();
		}

		public function get hasNinjaDefense():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set ninjaDefense(value:int):void {
			hasField$0 |= 0x10;
			ninja_defense$field = value;
		}

		public function get ninjaDefense():int {
			return ninja_defense$field;
		}

		/**
		 *  @private
		 */
		public static const CRIT_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.crit_value", "critValue", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var crit_value$field:int;

		public function clearCritValue():void {
			hasField$0 &= 0xffffffdf;
			crit_value$field = new int();
		}

		public function get hasCritValue():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set critValue(value:int):void {
			hasField$0 |= 0x20;
			crit_value$field = value;
		}

		public function get critValue():int {
			return crit_value$field;
		}

		/**
		 *  @private
		 */
		public static const CRIT_DAMAGE_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.crit_damage_value", "critDamageValue", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var crit_damage_value$field:int;

		public function clearCritDamageValue():void {
			hasField$0 &= 0xffffffbf;
			crit_damage_value$field = new int();
		}

		public function get hasCritDamageValue():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set critDamageValue(value:int):void {
			hasField$0 |= 0x40;
			crit_damage_value$field = value;
		}

		public function get critDamageValue():int {
			return crit_damage_value$field;
		}

		/**
		 *  @private
		 */
		public static const SPEED:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.speed", "speed", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var speed$field:int;

		public function clearSpeed():void {
			hasField$0 &= 0xffffff7f;
			speed$field = new int();
		}

		public function get hasSpeed():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set speed(value:int):void {
			hasField$0 |= 0x80;
			speed$field = value;
		}

		public function get speed():int {
			return speed$field;
		}

		/**
		 *  @private
		 */
		public static const COMBO_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.combo_value", "comboValue", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combo_value$field:int;

		public function clearComboValue():void {
			hasField$0 &= 0xfffffeff;
			combo_value$field = new int();
		}

		public function get hasComboValue():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set comboValue(value:int):void {
			hasField$0 |= 0x100;
			combo_value$field = value;
		}

		public function get comboValue():int {
			return combo_value$field;
		}

		/**
		 *  @private
		 */
		public static const CONTROL_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.control_value", "controlValue", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var control_value$field:int;

		public function clearControlValue():void {
			hasField$0 &= 0xfffffdff;
			control_value$field = new int();
		}

		public function get hasControlValue():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set controlValue(value:int):void {
			hasField$0 |= 0x200;
			control_value$field = value;
		}

		public function get controlValue():int {
			return control_value$field;
		}

		/**
		 *  @private
		 */
		public static const BODY_PENETRATE_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.body_penetrate_value", "bodyPenetrateValue", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var body_penetrate_value$field:int;

		public function clearBodyPenetrateValue():void {
			hasField$0 &= 0xfffffbff;
			body_penetrate_value$field = new int();
		}

		public function get hasBodyPenetrateValue():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set bodyPenetrateValue(value:int):void {
			hasField$0 |= 0x400;
			body_penetrate_value$field = value;
		}

		public function get bodyPenetrateValue():int {
			return body_penetrate_value$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_PENETRATE_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.ninja_penetrate_value", "ninjaPenetrateValue", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_penetrate_value$field:int;

		public function clearNinjaPenetrateValue():void {
			hasField$0 &= 0xfffff7ff;
			ninja_penetrate_value$field = new int();
		}

		public function get hasNinjaPenetrateValue():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set ninjaPenetrateValue(value:int):void {
			hasField$0 |= 0x800;
			ninja_penetrate_value$field = value;
		}

		public function get ninjaPenetrateValue():int {
			return ninja_penetrate_value$field;
		}

		/**
		 *  @private
		 */
		public static const DAMAGE_REDUCE_VALUE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.damage_reduce_value", "damageReduceValue", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var damage_reduce_value$field:int;

		public function clearDamageReduceValue():void {
			hasField$0 &= 0xffffefff;
			damage_reduce_value$field = new int();
		}

		public function get hasDamageReduceValue():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set damageReduceValue(value:int):void {
			hasField$0 |= 0x1000;
			damage_reduce_value$field = value;
		}

		public function get damageReduceValue():int {
			return damage_reduce_value$field;
		}

		/**
		 *  @private
		 */
		public static const HP_RESTORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.hp_restore", "hpRestore", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hp_restore$field:int;

		public function clearHpRestore():void {
			hasField$0 &= 0xffffdfff;
			hp_restore$field = new int();
		}

		public function get hasHpRestore():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set hpRestore(value:int):void {
			hasField$0 |= 0x2000;
			hp_restore$field = value;
		}

		public function get hpRestore():int {
			return hp_restore$field;
		}

		/**
		 *  @private
		 */
		public static const FIRE_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.fire_resist", "fireResist", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var fire_resist$field:int;

		public function clearFireResist():void {
			hasField$0 &= 0xffffbfff;
			fire_resist$field = new int();
		}

		public function get hasFireResist():Boolean {
			return (hasField$0 & 0x4000) != 0;
		}

		public function set fireResist(value:int):void {
			hasField$0 |= 0x4000;
			fire_resist$field = value;
		}

		public function get fireResist():int {
			return fire_resist$field;
		}

		/**
		 *  @private
		 */
		public static const WIND_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.wind_resist", "windResist", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var wind_resist$field:int;

		public function clearWindResist():void {
			hasField$0 &= 0xffff7fff;
			wind_resist$field = new int();
		}

		public function get hasWindResist():Boolean {
			return (hasField$0 & 0x8000) != 0;
		}

		public function set windResist(value:int):void {
			hasField$0 |= 0x8000;
			wind_resist$field = value;
		}

		public function get windResist():int {
			return wind_resist$field;
		}

		/**
		 *  @private
		 */
		public static const THUNDER_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.thunder_resist", "thunderResist", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		private var thunder_resist$field:int;

		public function clearThunderResist():void {
			hasField$0 &= 0xfffeffff;
			thunder_resist$field = new int();
		}

		public function get hasThunderResist():Boolean {
			return (hasField$0 & 0x10000) != 0;
		}

		public function set thunderResist(value:int):void {
			hasField$0 |= 0x10000;
			thunder_resist$field = value;
		}

		public function get thunderResist():int {
			return thunder_resist$field;
		}

		/**
		 *  @private
		 */
		public static const EARTH_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.earth_resist", "earthResist", (18 << 3) | com.netease.protobuf.WireType.VARINT);

		private var earth_resist$field:int;

		public function clearEarthResist():void {
			hasField$0 &= 0xfffdffff;
			earth_resist$field = new int();
		}

		public function get hasEarthResist():Boolean {
			return (hasField$0 & 0x20000) != 0;
		}

		public function set earthResist(value:int):void {
			hasField$0 |= 0x20000;
			earth_resist$field = value;
		}

		public function get earthResist():int {
			return earth_resist$field;
		}

		/**
		 *  @private
		 */
		public static const WATER_RESIST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.inc.ProtoNaurtoAllPropertyInfo.water_resist", "waterResist", (19 << 3) | com.netease.protobuf.WireType.VARINT);

		private var water_resist$field:int;

		public function clearWaterResist():void {
			hasField$0 &= 0xfffbffff;
			water_resist$field = new int();
		}

		public function get hasWaterResist():Boolean {
			return (hasField$0 & 0x40000) != 0;
		}

		public function set waterResist(value:int):void {
			hasField$0 |= 0x40000;
			water_resist$field = value;
		}

		public function get waterResist():int {
			return water_resist$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasHpUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, hp_ulimit$field);
			}
			if (hasBodyAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, body_attack$field);
			}
			if (hasBodyDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, body_defense$field);
			}
			if (hasNinjaAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_attack$field);
			}
			if (hasNinjaDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_defense$field);
			}
			if (hasCritValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, crit_value$field);
			}
			if (hasCritDamageValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, crit_damage_value$field);
			}
			if (hasSpeed) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, speed$field);
			}
			if (hasComboValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, combo_value$field);
			}
			if (hasControlValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, control_value$field);
			}
			if (hasBodyPenetrateValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, body_penetrate_value$field);
			}
			if (hasNinjaPenetrateValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_penetrate_value$field);
			}
			if (hasDamageReduceValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, damage_reduce_value$field);
			}
			if (hasHpRestore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, hp_restore$field);
			}
			if (hasFireResist) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, fire_resist$field);
			}
			if (hasWindResist) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, wind_resist$field);
			}
			if (hasThunderResist) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, thunder_resist$field);
			}
			if (hasEarthResist) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 18);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, earth_resist$field);
			}
			if (hasWaterResist) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
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
			var hp_ulimit$count:uint = 0;
			var body_attack$count:uint = 0;
			var body_defense$count:uint = 0;
			var ninja_attack$count:uint = 0;
			var ninja_defense$count:uint = 0;
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
					if (hp_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.hpUlimit cannot be set twice.');
					}
					++hp_ulimit$count;
					this.hpUlimit = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (body_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.bodyAttack cannot be set twice.');
					}
					++body_attack$count;
					this.bodyAttack = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (body_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.bodyDefense cannot be set twice.');
					}
					++body_defense$count;
					this.bodyDefense = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (ninja_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.ninjaAttack cannot be set twice.');
					}
					++ninja_attack$count;
					this.ninjaAttack = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (ninja_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.ninjaDefense cannot be set twice.');
					}
					++ninja_defense$count;
					this.ninjaDefense = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (crit_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.critValue cannot be set twice.');
					}
					++crit_value$count;
					this.critValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					if (crit_damage_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.critDamageValue cannot be set twice.');
					}
					++crit_damage_value$count;
					this.critDamageValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 8:
					if (speed$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.speed cannot be set twice.');
					}
					++speed$count;
					this.speed = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 9:
					if (combo_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.comboValue cannot be set twice.');
					}
					++combo_value$count;
					this.comboValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 10:
					if (control_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.controlValue cannot be set twice.');
					}
					++control_value$count;
					this.controlValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 11:
					if (body_penetrate_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.bodyPenetrateValue cannot be set twice.');
					}
					++body_penetrate_value$count;
					this.bodyPenetrateValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 12:
					if (ninja_penetrate_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.ninjaPenetrateValue cannot be set twice.');
					}
					++ninja_penetrate_value$count;
					this.ninjaPenetrateValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 13:
					if (damage_reduce_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.damageReduceValue cannot be set twice.');
					}
					++damage_reduce_value$count;
					this.damageReduceValue = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 14:
					if (hp_restore$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.hpRestore cannot be set twice.');
					}
					++hp_restore$count;
					this.hpRestore = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 15:
					if (fire_resist$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.fireResist cannot be set twice.');
					}
					++fire_resist$count;
					this.fireResist = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 16:
					if (wind_resist$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.windResist cannot be set twice.');
					}
					++wind_resist$count;
					this.windResist = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 17:
					if (thunder_resist$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.thunderResist cannot be set twice.');
					}
					++thunder_resist$count;
					this.thunderResist = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 18:
					if (earth_resist$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.earthResist cannot be set twice.');
					}
					++earth_resist$count;
					this.earthResist = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 19:
					if (water_resist$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNaurtoAllPropertyInfo.waterResist cannot be set twice.');
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
