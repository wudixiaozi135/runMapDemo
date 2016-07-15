package serverProto.practice {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.practice.ProtoSparringReward;
	import serverProto.practice.ProtoPracticePosInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPracticeInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PRACTICE_POS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoPracticeInfo.practice_pos", "practicePos", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.practice.ProtoPracticePosInfo);

		[ArrayElementType("serverProto.practice.ProtoPracticePosInfo")]
		public var practicePos:Array = [];

		/**
		 *  @private
		 */
		public static const SPARRING_REWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.practice.ProtoPracticeInfo.sparring_reward", "sparringReward", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.practice.ProtoSparringReward);

		[ArrayElementType("serverProto.practice.ProtoSparringReward")]
		public var sparringReward:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			for (var practicePos$index:uint = 0; practicePos$index < this.practicePos.length; ++practicePos$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.practicePos[practicePos$index]);
			}
			for (var sparringReward$index:uint = 0; sparringReward$index < this.sparringReward.length; ++sparringReward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.sparringReward[sparringReward$index]);
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
					this.practicePos.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.practice.ProtoPracticePosInfo()));
					break;
				case 3:
					this.sparringReward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.practice.ProtoSparringReward()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
