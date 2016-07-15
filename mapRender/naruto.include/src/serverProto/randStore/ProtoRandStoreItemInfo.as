package serverProto.randStore {
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
	public  final class ProtoRandStoreItemInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.index", "index", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var index:uint;

		/**
		 *  @private
		 */
		public static const ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.item_id", "itemId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var itemId:uint;

		/**
		 *  @private
		 */
		public static const COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.count", "count", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var count:uint;

		/**
		 *  @private
		 */
		public static const PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.price", "price", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var price:uint;

		/**
		 *  @private
		 */
		public static const FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.flag", "flag", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var flag:uint;

		/**
		 *  @private
		 */
		public static const CURR_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.curr_count", "currCount", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var curr_count$field:uint;

		private var hasField$0:uint = 0;

		public function clearCurrCount():void {
			hasField$0 &= 0xfffffffe;
			curr_count$field = new uint();
		}

		public function get hasCurrCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set currCount(value:uint):void {
			hasField$0 |= 0x1;
			curr_count$field = value;
		}

		public function get currCount():uint {
			return curr_count$field;
		}

		/**
		 *  @private
		 */
		public static const PAY_ITEM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreItemInfo.pay_item", "payItem", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pay_item$field:uint;

		public function clearPayItem():void {
			hasField$0 &= 0xfffffffd;
			pay_item$field = new uint();
		}

		public function get hasPayItem():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set payItem(value:uint):void {
			hasField$0 |= 0x2;
			pay_item$field = value;
		}

		public function get payItem():uint {
			return pay_item$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.index);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.itemId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.count);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.price);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.flag);
			if (hasCurrCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, curr_count$field);
			}
			if (hasPayItem) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, pay_item$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var index$count:uint = 0;
			var item_id$count:uint = 0;
			var count$count:uint = 0;
			var price$count:uint = 0;
			var flag$count:uint = 0;
			var curr_count$count:uint = 0;
			var pay_item$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreItemInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (item_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreItemInfo.itemId cannot be set twice.');
					}
					++item_id$count;
					this.itemId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreItemInfo.count cannot be set twice.');
					}
					++count$count;
					this.count = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreItemInfo.price cannot be set twice.');
					}
					++price$count;
					this.price = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreItemInfo.flag cannot be set twice.');
					}
					++flag$count;
					this.flag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (curr_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreItemInfo.currCount cannot be set twice.');
					}
					++curr_count$count;
					this.currCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (pay_item$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreItemInfo.payItem cannot be set twice.');
					}
					++pay_item$count;
					this.payItem = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
