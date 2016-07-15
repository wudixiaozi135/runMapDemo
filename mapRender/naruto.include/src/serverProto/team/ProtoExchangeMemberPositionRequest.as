package serverProto.team {
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
	public  final class ProtoExchangeMemberPositionRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_1:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoExchangeMemberPositionRequest.player_1", "player_1", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var player_1:int;

		/**
		 *  @private
		 */
		public static const PLAYER_2:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoExchangeMemberPositionRequest.player_2", "player_2", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var player_2:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.player_1);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.player_2);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player_1$count:uint = 0;
			var player_2$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_1$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExchangeMemberPositionRequest.player_1 cannot be set twice.');
					}
					++player_1$count;
					this.player_1 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (player_2$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoExchangeMemberPositionRequest.player_2 cannot be set twice.');
					}
					++player_2$count;
					this.player_2 = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
