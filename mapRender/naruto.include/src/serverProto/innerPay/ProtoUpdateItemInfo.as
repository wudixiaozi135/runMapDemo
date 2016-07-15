package serverProto.innerPay {
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
	public  final class ProtoUpdateItemInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const UPDATE_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.ProtoUpdateItemInfo.update_flag", "updateFlag", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var update_flag$field:int;

		private var hasField$0:uint = 0;

		public function clearUpdateFlag():void {
			hasField$0 &= 0xfffffffe;
			update_flag$field = new int();
		}

		public function get hasUpdateFlag():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set updateFlag(value:int):void {
			hasField$0 |= 0x1;
			update_flag$field = value;
		}

		public function get updateFlag():int {
			return update_flag$field;
		}

		/**
		 *  @private
		 */
		public static const INDEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.ProtoUpdateItemInfo.index", "index", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var index$field:int;

		public function clearIndex():void {
			hasField$0 &= 0xfffffffd;
			index$field = new int();
		}

		public function get hasIndex():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set index(value:int):void {
			hasField$0 |= 0x2;
			index$field = value;
		}

		public function get index():int {
			return index$field;
		}

		/**
		 *  @private
		 */
		public static const ITEM_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.ProtoUpdateItemInfo.item_id", "itemId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var itemId:int;

		/**
		 *  @private
		 */
		public static const NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.ProtoUpdateItemInfo.num", "num", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var num:int;

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasUpdateFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, update_flag$field);
			}
			if (hasIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, index$field);
			}
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.itemId);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.num);
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var update_flag$count:uint = 0;
			var index$count:uint = 0;
			var item_id$count:uint = 0;
			var num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (update_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoUpdateItemInfo.updateFlag cannot be set twice.');
					}
					++update_flag$count;
					this.updateFlag = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoUpdateItemInfo.index cannot be set twice.');
					}
					++index$count;
					this.index = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (item_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoUpdateItemInfo.itemId cannot be set twice.');
					}
					++item_id$count;
					this.itemId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoUpdateItemInfo.num cannot be set twice.');
					}
					++num$count;
					this.num = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
