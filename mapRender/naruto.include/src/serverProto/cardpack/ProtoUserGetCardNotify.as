package serverProto.cardpack {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.cardpack.ProtoBroadCastInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoUserGetCardNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BROADCASTINFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.cardpack.ProtoUserGetCardNotify.broadcastinfo", "broadcastinfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.cardpack.ProtoBroadCastInfo);

		public var broadcastinfo:serverProto.cardpack.ProtoBroadCastInfo;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.broadcastinfo);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var broadcastinfo$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (broadcastinfo$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoUserGetCardNotify.broadcastinfo cannot be set twice.');
					}
					++broadcastinfo$count;
					this.broadcastinfo = new serverProto.cardpack.ProtoBroadCastInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.broadcastinfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
