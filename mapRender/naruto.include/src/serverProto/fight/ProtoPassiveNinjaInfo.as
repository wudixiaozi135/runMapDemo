package serverProto.fight {
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
	public  final class ProtoPassiveNinjaInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PASSIVE_NINJA_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.passive_ninja_pos", "passiveNinjaPos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var passiveNinjaPos:uint;

		/**
		 *  @private
		 */
		public static const ATTACK_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.attack_status", "attackStatus", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var attack_status$field:uint;

		private var hasField$0:uint = 0;

		public function clearAttackStatus():void {
			hasField$0 &= 0xfffffffe;
			attack_status$field = new uint();
		}

		public function get hasAttackStatus():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set attackStatus(value:uint):void {
			hasField$0 |= 0x1;
			attack_status$field = value;
		}

		public function get attackStatus():uint {
			return attack_status$field;
		}

		/**
		 *  @private
		 */
		public static const ATTACK_EFFECT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.attack_effect", "attackEffect", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var attack_effect$field:uint;

		public function clearAttackEffect():void {
			hasField$0 &= 0xfffffffd;
			attack_effect$field = new uint();
		}

		public function get hasAttackEffect():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set attackEffect(value:uint):void {
			hasField$0 |= 0x2;
			attack_effect$field = value;
		}

		public function get attackEffect():uint {
			return attack_effect$field;
		}

		/**
		 *  @private
		 */
		public static const ATTACK_RESULT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.attack_result", "attackResult", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var attack_result$field:uint;

		public function clearAttackResult():void {
			hasField$0 &= 0xfffffffb;
			attack_result$field = new uint();
		}

		public function get hasAttackResult():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set attackResult(value:uint):void {
			hasField$0 |= 0x4;
			attack_result$field = value;
		}

		public function get attackResult():uint {
			return attack_result$field;
		}

		/**
		 *  @private
		 */
		public static const ATTACK_SUB_EFFECT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.attack_sub_effect", "attackSubEffect", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var attack_sub_effect$field:uint;

		public function clearAttackSubEffect():void {
			hasField$0 &= 0xfffffff7;
			attack_sub_effect$field = new uint();
		}

		public function get hasAttackSubEffect():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set attackSubEffect(value:uint):void {
			hasField$0 |= 0x8;
			attack_sub_effect$field = value;
		}

		public function get attackSubEffect():uint {
			return attack_sub_effect$field;
		}

		/**
		 *  @private
		 */
		public static const IS_CRITICAL:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.fight.ProtoPassiveNinjaInfo.is_critical", "isCritical", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_critical$field:Boolean;

		public function clearIsCritical():void {
			hasField$0 &= 0xffffffef;
			is_critical$field = new Boolean();
		}

		public function get hasIsCritical():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set isCritical(value:Boolean):void {
			hasField$0 |= 0x10;
			is_critical$field = value;
		}

		public function get isCritical():Boolean {
			return is_critical$field;
		}

		/**
		 *  @private
		 */
		public static const IS_DODGE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.is_dodge", "isDodge", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_dodge$field:uint;

		public function clearIsDodge():void {
			hasField$0 &= 0xffffffdf;
			is_dodge$field = new uint();
		}

		public function get hasIsDodge():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set isDodge(value:uint):void {
			hasField$0 |= 0x20;
			is_dodge$field = value;
		}

		public function get isDodge():uint {
			return is_dodge$field;
		}

		/**
		 *  @private
		 */
		public static const DODGE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.dodge_id", "dodgeId", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dodge_id$field:uint;

		public function clearDodgeId():void {
			hasField$0 &= 0xffffffbf;
			dodge_id$field = new uint();
		}

		public function get hasDodgeId():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set dodgeId(value:uint):void {
			hasField$0 |= 0x40;
			dodge_id$field = value;
		}

		public function get dodgeId():uint {
			return dodge_id$field;
		}

		/**
		 *  @private
		 */
		public static const TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.time", "time", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var time$field:uint;

		public function clearTime():void {
			hasField$0 &= 0xffffff7f;
			time$field = new uint();
		}

		public function get hasTime():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set time(value:uint):void {
			hasField$0 |= 0x80;
			time$field = value;
		}

		public function get time():uint {
			return time$field;
		}

		/**
		 *  @private
		 */
		public static const IS_MAJOR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoPassiveNinjaInfo.is_major", "isMajor", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_major$field:uint;

		public function clearIsMajor():void {
			hasField$0 &= 0xfffffeff;
			is_major$field = new uint();
		}

		public function get hasIsMajor():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set isMajor(value:uint):void {
			hasField$0 |= 0x100;
			is_major$field = value;
		}

		public function get isMajor():uint {
			return is_major$field;
		}

		/**
		 *  @private
		 */
		public static const SKILL_CONGEST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoPassiveNinjaInfo.skill_congest", "skillCongest", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var skill_congest$field:int;

		public function clearSkillCongest():void {
			hasField$0 &= 0xfffffdff;
			skill_congest$field = new int();
		}

		public function get hasSkillCongest():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set skillCongest(value:int):void {
			hasField$0 |= 0x200;
			skill_congest$field = value;
		}

		public function get skillCongest():int {
			return skill_congest$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.passiveNinjaPos);
			if (hasAttackStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, attack_status$field);
			}
			if (hasAttackEffect) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, attack_effect$field);
			}
			if (hasAttackResult) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, attack_result$field);
			}
			if (hasAttackSubEffect) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, attack_sub_effect$field);
			}
			if (hasIsCritical) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_critical$field);
			}
			if (hasIsDodge) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, is_dodge$field);
			}
			if (hasDodgeId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, dodge_id$field);
			}
			if (hasTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, time$field);
			}
			if (hasIsMajor) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, is_major$field);
			}
			if (hasSkillCongest) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, skill_congest$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var passive_ninja_pos$count:uint = 0;
			var attack_status$count:uint = 0;
			var attack_effect$count:uint = 0;
			var attack_result$count:uint = 0;
			var attack_sub_effect$count:uint = 0;
			var is_critical$count:uint = 0;
			var is_dodge$count:uint = 0;
			var dodge_id$count:uint = 0;
			var time$count:uint = 0;
			var is_major$count:uint = 0;
			var skill_congest$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (passive_ninja_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaInfo.passiveNinjaPos cannot be set twice.');
					}
					++passive_ninja_pos$count;
					this.passiveNinjaPos = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (attack_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaInfo.attackStatus cannot be set twice.');
					}
					++attack_status$count;
					this.attackStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (attack_effect$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaInfo.attackEffect cannot be set twice.');
					}
					++attack_effect$count;
					this.attackEffect = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (attack_result$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaInfo.attackResult cannot be set twice.');
					}
					++attack_result$count;
					this.attackResult = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (attack_sub_effect$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaInfo.attackSubEffect cannot be set twice.');
					}
					++attack_sub_effect$count;
					this.attackSubEffect = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (is_critical$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaInfo.isCritical cannot be set twice.');
					}
					++is_critical$count;
					this.isCritical = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 8:
					if (is_dodge$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaInfo.isDodge cannot be set twice.');
					}
					++is_dodge$count;
					this.isDodge = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (dodge_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaInfo.dodgeId cannot be set twice.');
					}
					++dodge_id$count;
					this.dodgeId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaInfo.time cannot be set twice.');
					}
					++time$count;
					this.time = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (is_major$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaInfo.isMajor cannot be set twice.');
					}
					++is_major$count;
					this.isMajor = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (skill_congest$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPassiveNinjaInfo.skillCongest cannot be set twice.');
					}
					++skill_congest$count;
					this.skillCongest = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
