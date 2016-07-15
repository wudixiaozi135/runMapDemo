package serverProto.talent {
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
	public  final class ProtoSetTalentGroup extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const GROUP_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoSetTalentGroup.group_index", "groupIndex", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var groupIndex:uint;

		/**
		 *  @private
		 */
		public static const SKILL_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.talent.ProtoSetTalentGroup.skill_index", "skillIndex", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var skillIndex:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.groupIndex);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.skillIndex);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var group_index$count:uint = 0;
			var skill_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (group_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSetTalentGroup.groupIndex cannot be set twice.');
					}
					++group_index$count;
					this.groupIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (skill_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSetTalentGroup.skillIndex cannot be set twice.');
					}
					++skill_index$count;
					this.skillIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
