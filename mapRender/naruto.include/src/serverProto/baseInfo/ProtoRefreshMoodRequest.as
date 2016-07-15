package serverProto.baseInfo {
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
	public  final class ProtoRefreshMoodRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NINJA_SEQUENCE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoRefreshMoodRequest.ninja_sequence", "ninjaSequence", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ninjaSequence:uint;

		/**
		 *  @private
		 */
		public static const REFRESH_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoRefreshMoodRequest.refresh_type", "refreshType", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var refreshType:uint;

		/**
		 *  @private
		 */
		public static const REFRESH_TARGET:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoRefreshMoodRequest.refresh_target", "refreshTarget", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var refreshTarget:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ninjaSequence);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.refreshType);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.refreshTarget);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ninja_sequence$count:uint = 0;
			var refresh_type$count:uint = 0;
			var refresh_target$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ninja_sequence$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRefreshMoodRequest.ninjaSequence cannot be set twice.');
					}
					++ninja_sequence$count;
					this.ninjaSequence = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (refresh_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRefreshMoodRequest.refreshType cannot be set twice.');
					}
					++refresh_type$count;
					this.refreshType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (refresh_target$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRefreshMoodRequest.refreshTarget cannot be set twice.');
					}
					++refresh_target$count;
					this.refreshTarget = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
