package serverProto.family {
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
	public  final class ProtoWishItem extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ITEM_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishItem.item_id", "itemId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var item_id$field:int;

		private var hasField$0:uint = 0;

		public function clearItemId():void {
			hasField$0 &= 0xfffffffe;
			item_id$field = new int();
		}

		public function get hasItemId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set itemId(value:int):void {
			hasField$0 |= 0x1;
			item_id$field = value;
		}

		public function get itemId():int {
			return item_id$field;
		}

		/**
		 *  @private
		 */
		public static const ITEM_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoWishItem.item_num", "itemNum", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var item_num$field:int;

		public function clearItemNum():void {
			hasField$0 &= 0xfffffffd;
			item_num$field = new int();
		}

		public function get hasItemNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set itemNum(value:int):void {
			hasField$0 |= 0x2;
			item_num$field = value;
		}

		public function get itemNum():int {
			return item_num$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasItemId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, item_id$field);
			}
			if (hasItemNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, item_num$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var item_id$count:uint = 0;
			var item_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (item_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishItem.itemId cannot be set twice.');
					}
					++item_id$count;
					this.itemId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (item_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoWishItem.itemNum cannot be set twice.');
					}
					++item_num$count;
					this.itemNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
