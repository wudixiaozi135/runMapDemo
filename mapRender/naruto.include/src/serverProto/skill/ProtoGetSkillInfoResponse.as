package serverProto.skill {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.skill.ProtoSkillAttributeLevel;
	import serverProto.skill.ProtoNinjaSkillInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetSkillInfoResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.skill.ProtoGetSkillInfoResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const SKILL_ATRR_LEVEL:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.skill.ProtoGetSkillInfoResponse.skill_atrr_level", "skillAtrrLevel", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.skill.ProtoSkillAttributeLevel);

		private var skill_atrr_level$field:serverProto.skill.ProtoSkillAttributeLevel;

		public function clearSkillAtrrLevel():void {
			skill_atrr_level$field = null;
		}

		public function get hasSkillAtrrLevel():Boolean {
			return skill_atrr_level$field != null;
		}

		public function set skillAtrrLevel(value:serverProto.skill.ProtoSkillAttributeLevel):void {
			skill_atrr_level$field = value;
		}

		public function get skillAtrrLevel():serverProto.skill.ProtoSkillAttributeLevel {
			return skill_atrr_level$field;
		}

		/**
		 *  @private
		 */
		public static const LEARNED_SKILL_ID:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.skill.ProtoGetSkillInfoResponse.learned_skill_id", "learnedSkillId", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		[ArrayElementType("uint")]
		public var learnedSkillId:Array = [];

		/**
		 *  @private
		 */
		public static const NINJA_SKILL_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.skill.ProtoGetSkillInfoResponse.ninja_skill_info", "ninjaSkillInfo", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.skill.ProtoNinjaSkillInfo);

		[ArrayElementType("serverProto.skill.ProtoNinjaSkillInfo")]
		public var ninjaSkillInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasSkillAtrrLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, skill_atrr_level$field);
			}
			if (this.learnedSkillId != null && this.learnedSkillId.length > 0) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.writePackedRepeated(output, com.netease.protobuf.WriteUtils.write$TYPE_UINT32, this.learnedSkillId);
			}
			for (var ninjaSkillInfo$index:uint = 0; ninjaSkillInfo$index < this.ninjaSkillInfo.length; ++ninjaSkillInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaSkillInfo[ninjaSkillInfo$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret$count:uint = 0;
			var skill_atrr_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSkillInfoResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (skill_atrr_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetSkillInfoResponse.skillAtrrLevel cannot be set twice.');
					}
					++skill_atrr_level$count;
					this.skillAtrrLevel = new serverProto.skill.ProtoSkillAttributeLevel();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.skillAtrrLevel);
					break;
				case 3:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.learnedSkillId);
						break;
					}
					this.learnedSkillId.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 4:
					this.ninjaSkillInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.skill.ProtoNinjaSkillInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
