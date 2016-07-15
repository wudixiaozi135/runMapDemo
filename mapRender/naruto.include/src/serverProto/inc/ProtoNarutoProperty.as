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
	public  final class ProtoNarutoProperty extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MAX_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoNarutoProperty.max_hp", "maxHp", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_hp$field:int;

		private var hasField$0:uint = 0;

		public function clearMaxHp():void {
			hasField$0 &= 0xfffffffe;
			max_hp$field = new int();
		}

		public function get hasMaxHp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set maxHp(value:int):void {
			hasField$0 |= 0x1;
			max_hp$field = value;
		}

		public function get maxHp():int {
			return max_hp$field;
		}

		/**
		 *  @private
		 */
		public static const BODY_ATTACK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoNarutoProperty.body_attack", "bodyAttack", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const BODY_DEFENSE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoNarutoProperty.body_defense", "bodyDefense", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const NINJA_ATTACK:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoNarutoProperty.ninja_attack", "ninjaAttack", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const NINJA_DEFENSE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoNarutoProperty.ninja_defense", "ninjaDefense", (5 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const COMBAT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.inc.ProtoNarutoProperty.combat", "combat", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat$field:int;

		public function clearCombat():void {
			hasField$0 &= 0xffffffdf;
			combat$field = new int();
		}

		public function get hasCombat():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set combat(value:int):void {
			hasField$0 |= 0x20;
			combat$field = value;
		}

		public function get combat():int {
			return combat$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasMaxHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, max_hp$field);
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
			if (hasCombat) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, combat$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var max_hp$count:uint = 0;
			var body_attack$count:uint = 0;
			var body_defense$count:uint = 0;
			var ninja_attack$count:uint = 0;
			var ninja_defense$count:uint = 0;
			var combat$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (max_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNarutoProperty.maxHp cannot be set twice.');
					}
					++max_hp$count;
					this.maxHp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (body_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNarutoProperty.bodyAttack cannot be set twice.');
					}
					++body_attack$count;
					this.bodyAttack = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (body_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNarutoProperty.bodyDefense cannot be set twice.');
					}
					++body_defense$count;
					this.bodyDefense = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (ninja_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNarutoProperty.ninjaAttack cannot be set twice.');
					}
					++ninja_attack$count;
					this.ninjaAttack = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (ninja_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNarutoProperty.ninjaDefense cannot be set twice.');
					}
					++ninja_defense$count;
					this.ninjaDefense = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (combat$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNarutoProperty.combat cannot be set twice.');
					}
					++combat$count;
					this.combat = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
