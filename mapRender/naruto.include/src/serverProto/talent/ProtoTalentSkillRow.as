package serverProto.talent {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.talent.ProtoTalentSkillInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTalentSkillRow extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SKILL_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.talent.ProtoTalentSkillRow.skill_info", "skillInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.talent.ProtoTalentSkillInfo);

		[ArrayElementType("serverProto.talent.ProtoTalentSkillInfo")]
		public var skillInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var skillInfo$index:uint = 0; skillInfo$index < this.skillInfo.length; ++skillInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.skillInfo[skillInfo$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					this.skillInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.talent.ProtoTalentSkillInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
