package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.ProtoActiveSkillInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoActiveNinjaInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ACTIVE_NINJA_POS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoActiveNinjaInfo.active_ninja_pos", "activeNinjaPos", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var activeNinjaPos:uint;

		/**
		 *  @private
		 */
		public static const SKILL_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoActiveNinjaInfo.skill_info", "skillInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.fight.ProtoActiveSkillInfo);

		private var skill_info$field:serverProto.fight.ProtoActiveSkillInfo;

		public function clearSkillInfo():void {
			skill_info$field = null;
		}

		public function get hasSkillInfo():Boolean {
			return skill_info$field != null;
		}

		public function set skillInfo(value:serverProto.fight.ProtoActiveSkillInfo):void {
			skill_info$field = value;
		}

		public function get skillInfo():serverProto.fight.ProtoActiveSkillInfo {
			return skill_info$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_ATTACK_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoActiveNinjaInfo.total_attack_times", "totalAttackTimes", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_attack_times$field:uint;

		private var hasField$0:uint = 0;

		public function clearTotalAttackTimes():void {
			hasField$0 &= 0xfffffffe;
			total_attack_times$field = new uint();
		}

		public function get hasTotalAttackTimes():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set totalAttackTimes(value:uint):void {
			hasField$0 |= 0x1;
			total_attack_times$field = value;
		}

		public function get totalAttackTimes():uint {
			return total_attack_times$field;
		}

		/**
		 *  @private
		 */
		public static const HIT_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoActiveNinjaInfo.hit_num", "hitNum", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hit_num$field:uint;

		public function clearHitNum():void {
			hasField$0 &= 0xfffffffd;
			hit_num$field = new uint();
		}

		public function get hasHitNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set hitNum(value:uint):void {
			hasField$0 |= 0x2;
			hit_num$field = value;
		}

		public function get hitNum():uint {
			return hit_num$field;
		}

		/**
		 *  @private
		 */
		public static const SKILL_CONGEST:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoActiveNinjaInfo.skill_congest", "skillCongest", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var skill_congest$field:int;

		public function clearSkillCongest():void {
			hasField$0 &= 0xfffffffb;
			skill_congest$field = new int();
		}

		public function get hasSkillCongest():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set skillCongest(value:int):void {
			hasField$0 |= 0x4;
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
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.activeNinjaPos);
			if (hasSkillInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, skill_info$field);
			}
			if (hasTotalAttackTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_attack_times$field);
			}
			if (hasHitNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, hit_num$field);
			}
			if (hasSkillCongest) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
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
			var active_ninja_pos$count:uint = 0;
			var skill_info$count:uint = 0;
			var total_attack_times$count:uint = 0;
			var hit_num$count:uint = 0;
			var skill_congest$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (active_ninja_pos$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActiveNinjaInfo.activeNinjaPos cannot be set twice.');
					}
					++active_ninja_pos$count;
					this.activeNinjaPos = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (skill_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActiveNinjaInfo.skillInfo cannot be set twice.');
					}
					++skill_info$count;
					this.skillInfo = new serverProto.fight.ProtoActiveSkillInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.skillInfo);
					break;
				case 4:
					if (total_attack_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActiveNinjaInfo.totalAttackTimes cannot be set twice.');
					}
					++total_attack_times$count;
					this.totalAttackTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (hit_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActiveNinjaInfo.hitNum cannot be set twice.');
					}
					++hit_num$count;
					this.hitNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (skill_congest$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActiveNinjaInfo.skillCongest cannot be set twice.');
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
