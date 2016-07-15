package serverProto.summonMonster {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.summonMonster.ProtoPropertyValue;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPropertyBenefit extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const HP:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoPropertyBenefit.hp", "hp", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.summonMonster.ProtoPropertyValue);

		private var hp$field:serverProto.summonMonster.ProtoPropertyValue;

		public function clearHp():void {
			hp$field = null;
		}

		public function get hasHp():Boolean {
			return hp$field != null;
		}

		public function set hp(value:serverProto.summonMonster.ProtoPropertyValue):void {
			hp$field = value;
		}

		public function get hp():serverProto.summonMonster.ProtoPropertyValue {
			return hp$field;
		}

		/**
		 *  @private
		 */
		public static const BODY_ATTACK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoPropertyBenefit.body_attack", "bodyAttack", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.summonMonster.ProtoPropertyValue);

		private var body_attack$field:serverProto.summonMonster.ProtoPropertyValue;

		public function clearBodyAttack():void {
			body_attack$field = null;
		}

		public function get hasBodyAttack():Boolean {
			return body_attack$field != null;
		}

		public function set bodyAttack(value:serverProto.summonMonster.ProtoPropertyValue):void {
			body_attack$field = value;
		}

		public function get bodyAttack():serverProto.summonMonster.ProtoPropertyValue {
			return body_attack$field;
		}

		/**
		 *  @private
		 */
		public static const BODY_DEFENSE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoPropertyBenefit.body_defense", "bodyDefense", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.summonMonster.ProtoPropertyValue);

		private var body_defense$field:serverProto.summonMonster.ProtoPropertyValue;

		public function clearBodyDefense():void {
			body_defense$field = null;
		}

		public function get hasBodyDefense():Boolean {
			return body_defense$field != null;
		}

		public function set bodyDefense(value:serverProto.summonMonster.ProtoPropertyValue):void {
			body_defense$field = value;
		}

		public function get bodyDefense():serverProto.summonMonster.ProtoPropertyValue {
			return body_defense$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_ATTACK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoPropertyBenefit.ninja_attack", "ninjaAttack", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.summonMonster.ProtoPropertyValue);

		private var ninja_attack$field:serverProto.summonMonster.ProtoPropertyValue;

		public function clearNinjaAttack():void {
			ninja_attack$field = null;
		}

		public function get hasNinjaAttack():Boolean {
			return ninja_attack$field != null;
		}

		public function set ninjaAttack(value:serverProto.summonMonster.ProtoPropertyValue):void {
			ninja_attack$field = value;
		}

		public function get ninjaAttack():serverProto.summonMonster.ProtoPropertyValue {
			return ninja_attack$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_DEFENSE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoPropertyBenefit.ninja_defense", "ninjaDefense", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.summonMonster.ProtoPropertyValue);

		private var ninja_defense$field:serverProto.summonMonster.ProtoPropertyValue;

		public function clearNinjaDefense():void {
			ninja_defense$field = null;
		}

		public function get hasNinjaDefense():Boolean {
			return ninja_defense$field != null;
		}

		public function set ninjaDefense(value:serverProto.summonMonster.ProtoPropertyValue):void {
			ninja_defense$field = value;
		}

		public function get ninjaDefense():serverProto.summonMonster.ProtoPropertyValue {
			return ninja_defense$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT_POWER:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.summonMonster.ProtoPropertyBenefit.combat_power", "combatPower", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat_power$field:int;

		private var hasField$0:uint = 0;

		public function clearCombatPower():void {
			hasField$0 &= 0xfffffffe;
			combat_power$field = new int();
		}

		public function get hasCombatPower():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set combatPower(value:int):void {
			hasField$0 |= 0x1;
			combat_power$field = value;
		}

		public function get combatPower():int {
			return combat_power$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, hp$field);
			}
			if (hasBodyAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, body_attack$field);
			}
			if (hasBodyDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, body_defense$field);
			}
			if (hasNinjaAttack) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_attack$field);
			}
			if (hasNinjaDefense) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ninja_defense$field);
			}
			if (hasCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, combat_power$field);
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
			var combat_power$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPropertyBenefit.hp cannot be set twice.');
					}
					++hp$count;
					this.hp = new serverProto.summonMonster.ProtoPropertyValue();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.hp);
					break;
				case 2:
					if (body_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPropertyBenefit.bodyAttack cannot be set twice.');
					}
					++body_attack$count;
					this.bodyAttack = new serverProto.summonMonster.ProtoPropertyValue();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.bodyAttack);
					break;
				case 3:
					if (body_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPropertyBenefit.bodyDefense cannot be set twice.');
					}
					++body_defense$count;
					this.bodyDefense = new serverProto.summonMonster.ProtoPropertyValue();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.bodyDefense);
					break;
				case 4:
					if (ninja_attack$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPropertyBenefit.ninjaAttack cannot be set twice.');
					}
					++ninja_attack$count;
					this.ninjaAttack = new serverProto.summonMonster.ProtoPropertyValue();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaAttack);
					break;
				case 5:
					if (ninja_defense$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPropertyBenefit.ninjaDefense cannot be set twice.');
					}
					++ninja_defense$count;
					this.ninjaDefense = new serverProto.summonMonster.ProtoPropertyValue();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ninjaDefense);
					break;
				case 6:
					if (combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPropertyBenefit.combatPower cannot be set twice.');
					}
					++combat_power$count;
					this.combatPower = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
