package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.SkillProhibitType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSkillState extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SKILL_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoSkillState.skill_index", "skillIndex", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var skillIndex:uint;

		/**
		 *  @private
		 */
		public static const SKILL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoSkillState.skill_id", "skillId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var skillId:uint;

		/**
		 *  @private
		 */
		public static const CAN_USE_SKILL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoSkillState.can_use_skill", "canUseSkill", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var canUseSkill:uint;

		/**
		 *  @private
		 */
		public static const SKILL_PROHIBIT_TYPE:RepeatedFieldDescriptor$TYPE_ENUM = new RepeatedFieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoSkillState.skill_prohibit_type", "skillProhibitType", (4 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.fight.SkillProhibitType);

		[ArrayElementType("int")]
		public var skillProhibitType:Array = [];

		/**
		 *  @private
		 */
		public static const SWITCH_SKILL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoSkillState.switch_skill_id", "switchSkillId", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var switch_skill_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearSwitchSkillId():void {
			hasField$0 &= 0xfffffffe;
			switch_skill_id$field = new uint();
		}

		public function get hasSwitchSkillId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set switchSkillId(value:uint):void {
			hasField$0 |= 0x1;
			switch_skill_id$field = value;
		}

		public function get switchSkillId():uint {
			return switch_skill_id$field;
		}

		/**
		 *  @private
		 */
		public static const CD_ROUND:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.fight.ProtoSkillState.cd_round", "cdRound", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cd_round$field:uint;

		public function clearCdRound():void {
			hasField$0 &= 0xfffffffd;
			cd_round$field = new uint();
		}

		public function get hasCdRound():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set cdRound(value:uint):void {
			hasField$0 |= 0x2;
			cd_round$field = value;
		}

		public function get cdRound():uint {
			return cd_round$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.skillIndex);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.skillId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.canUseSkill);
			for (var skillProhibitType$index:uint = 0; skillProhibitType$index < this.skillProhibitType.length; ++skillProhibitType$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.skillProhibitType[skillProhibitType$index]);
			}
			if (hasSwitchSkillId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, switch_skill_id$field);
			}
			if (hasCdRound) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, cd_round$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var skill_index$count:uint = 0;
			var skill_id$count:uint = 0;
			var can_use_skill$count:uint = 0;
			var switch_skill_id$count:uint = 0;
			var cd_round$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (skill_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSkillState.skillIndex cannot be set twice.');
					}
					++skill_index$count;
					this.skillIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (skill_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSkillState.skillId cannot be set twice.');
					}
					++skill_id$count;
					this.skillId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (can_use_skill$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSkillState.canUseSkill cannot be set twice.');
					}
					++can_use_skill$count;
					this.canUseSkill = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_ENUM, this.skillProhibitType);
						break;
					}
					this.skillProhibitType.push(com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input));
					break;
				case 5:
					if (switch_skill_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSkillState.switchSkillId cannot be set twice.');
					}
					++switch_skill_id$count;
					this.switchSkillId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (cd_round$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSkillState.cdRound cannot be set twice.');
					}
					++cd_round$count;
					this.cdRound = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
