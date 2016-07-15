package serverProto.chest {
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
	public  final class ProtoChestPayInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PAY_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.chest.ProtoChestPayInfo.pay_id", "payId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var payId:uint;

		/**
		 *  @private
		 */
		public static const OWNED_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.chest.ProtoChestPayInfo.owned_num", "ownedNum", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var ownedNum:uint;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.payId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.ownedNum);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var pay_id$count:uint = 0;
			var owned_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (pay_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChestPayInfo.payId cannot be set twice.');
					}
					++pay_id$count;
					this.payId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (owned_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChestPayInfo.ownedNum cannot be set twice.');
					}
					++owned_num$count;
					this.ownedNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
