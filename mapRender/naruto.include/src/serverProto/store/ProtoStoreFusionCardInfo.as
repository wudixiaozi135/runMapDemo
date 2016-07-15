package serverProto.store {
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
	public  final class ProtoStoreFusionCardInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CARD_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreFusionCardInfo.card_id", "cardId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var cardId:uint;

		/**
		 *  @private
		 */
		public static const FUSION_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreFusionCardInfo.fusion_price", "fusionPrice", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var fusionPrice:uint;

		/**
		 *  @private
		 */
		public static const IS_OPEN:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.store.ProtoStoreFusionCardInfo.is_open", "isOpen", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_open$field:int;

		private var hasField$0:uint = 0;

		public function clearIsOpen():void {
			hasField$0 &= 0xfffffffe;
			is_open$field = new int();
		}

		public function get hasIsOpen():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isOpen(value:int):void {
			hasField$0 |= 0x1;
			is_open$field = value;
		}

		public function get isOpen():int {
			return is_open$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.cardId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.fusionPrice);
			if (hasIsOpen) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, is_open$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var card_id$count:uint = 0;
			var fusion_price$count:uint = 0;
			var is_open$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (card_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreFusionCardInfo.cardId cannot be set twice.');
					}
					++card_id$count;
					this.cardId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (fusion_price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreFusionCardInfo.fusionPrice cannot be set twice.');
					}
					++fusion_price$count;
					this.fusionPrice = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (is_open$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreFusionCardInfo.isOpen cannot be set twice.');
					}
					++is_open$count;
					this.isOpen = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
