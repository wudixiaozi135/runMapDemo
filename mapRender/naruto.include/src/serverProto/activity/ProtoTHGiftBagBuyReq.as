package serverProto.activity {
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
	public  final class ProtoTHGiftBagBuyReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TH_GIFT_BAG_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activity.ProtoTHGiftBagBuyReq.th_gift_bag_id", "thGiftBagId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var thGiftBagId:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.thGiftBagId);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var th_gift_bag_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (th_gift_bag_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTHGiftBagBuyReq.thGiftBagId cannot be set twice.');
					}
					++th_gift_bag_id$count;
					this.thGiftBagId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
