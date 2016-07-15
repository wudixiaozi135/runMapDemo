package serverProto.skill {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.skill.SkillCommands;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOperateSkillRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CMD_ID:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.skill.ProtoOperateSkillRequest.cmd_id", "cmdId", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.skill.SkillCommands);

		public var cmdId:int;

		/**
		 *  @private
		 */
		public static const NINJA_SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.skill.ProtoOperateSkillRequest.ninja_seq", "ninjaSeq", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaSeq:uint;

		/**
		 *  @private
		 */
		public static const SKILL_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.skill.ProtoOperateSkillRequest.skill_id", "skillId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var skillId:uint;

		/**
		 *  @private
		 */
		public static const POSITION:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.skill.ProtoOperateSkillRequest.position", "position", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var position:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.cmdId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaSeq);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.skillId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.position);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cmd_id$count:uint = 0;
			var ninja_seq$count:uint = 0;
			var skill_id$count:uint = 0;
			var position$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cmd_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateSkillRequest.cmdId cannot be set twice.');
					}
					++cmd_id$count;
					this.cmdId = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (ninja_seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateSkillRequest.ninjaSeq cannot be set twice.');
					}
					++ninja_seq$count;
					this.ninjaSeq = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (skill_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateSkillRequest.skillId cannot be set twice.');
					}
					++skill_id$count;
					this.skillId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (position$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOperateSkillRequest.position cannot be set twice.');
					}
					++position$count;
					this.position = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
