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
	public  final class ProtoActiveSkillInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SKILL_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoActiveSkillInfo.skill_id", "skillId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var skill_id$field:int;

		private var hasField$0:uint = 0;

		public function clearSkillId():void {
			hasField$0 &= 0xfffffffe;
			skill_id$field = new int();
		}

		public function get hasSkillId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set skillId(value:int):void {
			hasField$0 |= 0x1;
			skill_id$field = value;
		}

		public function get skillId():int {
			return skill_id$field;
		}

		/**
		 *  @private
		 */
		public static const SKILL_INDEX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoActiveSkillInfo.skill_index", "skillIndex", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var skill_index$field:int;

		public function clearSkillIndex():void {
			hasField$0 &= 0xfffffffd;
			skill_index$field = new int();
		}

		public function get hasSkillIndex():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set skillIndex(value:int):void {
			hasField$0 |= 0x2;
			skill_index$field = value;
		}

		public function get skillIndex():int {
			return skill_index$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasSkillId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, skill_id$field);
			}
			if (hasSkillIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, skill_index$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var skill_id$count:uint = 0;
			var skill_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (skill_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActiveSkillInfo.skillId cannot be set twice.');
					}
					++skill_id$count;
					this.skillId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 2:
					if (skill_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActiveSkillInfo.skillIndex cannot be set twice.');
					}
					++skill_index$count;
					this.skillIndex = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
