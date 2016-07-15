package serverProto.tabard {
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
	public  final class ProtoTabardPropertyInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardPropertyInfo.hp", "hp", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hp$field:int;

		private var hasField$0:uint = 0;

		public function clearHp():void {
			hasField$0 &= 0xfffffffe;
			hp$field = new int();
		}

		public function get hasHp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set hp(value:int):void {
			hasField$0 |= 0x1;
			hp$field = value;
		}

		public function get hp():int {
			return hp$field;
		}

		/**
		 *  @private
		 */
		public static const BODY_ATTACK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardPropertyInfo.body_attack", "bodyAttack", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const BODY_DEFENSE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardPropertyInfo.body_defense", "bodyDefense", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const NINJA_ATTACK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardPropertyInfo.ninja_attack", "ninjaAttack", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const NINJA_DEFENSE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardPropertyInfo.ninja_defense", "ninjaDefense", (5 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const SPEED:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardPropertyInfo.speed", "speed", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var speed$field:int;

		public function clearSpeed():void {
			hasField$0 &= 0xffffffdf;
			speed$field = new int();
		}

		public function get hasSpeed():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set speed(value:int):void {
			hasField$0 |= 0x20;
			speed$field = value;
		}

		public function get speed():int {
			return speed$field;
		}

		/**
		 *  @private
		 */
		public static const CRIT_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardPropertyInfo.crit_value", "critValue", (7 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const CRIT_DAMAGE_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardPropertyInfo.crit_damage_value", "critDamageValue", (8 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const COMBO_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardPropertyInfo.combo_value", "comboValue", (9 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const CONTROL_VALUE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.tabard.ProtoTabardPropertyInfo.control_value", "controlValue", (10 << 3) | com.netease.protobuf.WireType.VARINT);

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
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, hp$field);
			}
			if (hasBodyAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, body_attack$field);
			}
			if (hasBodyDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, body_defense$field);
			}
			if (hasNinjaAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ninja_attack$field);
			}
			if (hasNinjaDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, ninja_defense$field);
			}
			if (hasSpeed) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, speed$field);
			}
			if (hasCritValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, crit_value$field);
			}
			if (hasCritDamageValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, crit_damage_value$field);
			}
			if (hasComboValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, combo_value$field);
			}
			if (hasControlValue) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, control_value$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var hp$count:uint = 0;
			var body_attack$count:uint = 0;
			var body_defense$count:uint = 0;
			var ninja_attack$count:uint = 0;
			var ninja_defense$count:uint = 0;
			var speed$count:uint = 0;
			var crit_value$count:uint = 0;
			var crit_damage_value$count:uint = 0;
			var combo_value$count:uint = 0;
			var control_value$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardPropertyInfo.hp cannot be set twice.');
					}
					++hp$count;
					this.hp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (body_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardPropertyInfo.bodyAttack cannot be set twice.');
					}
					++body_attack$count;
					this.bodyAttack = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (body_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardPropertyInfo.bodyDefense cannot be set twice.');
					}
					++body_defense$count;
					this.bodyDefense = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (ninja_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardPropertyInfo.ninjaAttack cannot be set twice.');
					}
					++ninja_attack$count;
					this.ninjaAttack = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (ninja_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardPropertyInfo.ninjaDefense cannot be set twice.');
					}
					++ninja_defense$count;
					this.ninjaDefense = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (speed$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardPropertyInfo.speed cannot be set twice.');
					}
					++speed$count;
					this.speed = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (crit_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardPropertyInfo.critValue cannot be set twice.');
					}
					++crit_value$count;
					this.critValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (crit_damage_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardPropertyInfo.critDamageValue cannot be set twice.');
					}
					++crit_damage_value$count;
					this.critDamageValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (combo_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardPropertyInfo.comboValue cannot be set twice.');
					}
					++combo_value$count;
					this.comboValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (control_value$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTabardPropertyInfo.controlValue cannot be set twice.');
					}
					++control_value$count;
					this.controlValue = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
