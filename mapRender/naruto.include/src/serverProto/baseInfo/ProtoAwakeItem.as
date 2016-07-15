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
	public  final class ProtoAwakeItem extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const AWAKE_NEED_ITEM_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoAwakeItem.awake_need_item_id", "awakeNeedItemId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var awake_need_item_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearAwakeNeedItemId():void {
			hasField$0 &= 0xfffffffe;
			awake_need_item_id$field = new uint();
		}

		public function get hasAwakeNeedItemId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set awakeNeedItemId(value:uint):void {
			hasField$0 |= 0x1;
			awake_need_item_id$field = value;
		}

		public function get awakeNeedItemId():uint {
			return awake_need_item_id$field;
		}

		/**
		 *  @private
		 */
		public static const AWAKE_NEED_ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoAwakeItem.awake_need_item_num", "awakeNeedItemNum", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var awake_need_item_num$field:uint;

		public function clearAwakeNeedItemNum():void {
			hasField$0 &= 0xfffffffd;
			awake_need_item_num$field = new uint();
		}

		public function get hasAwakeNeedItemNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set awakeNeedItemNum(value:uint):void {
			hasField$0 |= 0x2;
			awake_need_item_num$field = value;
		}

		public function get awakeNeedItemNum():uint {
			return awake_need_item_num$field;
		}

		/**
		 *  @private
		 */
		public static const AWAKE_HAVE_ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoAwakeItem.awake_have_item_num", "awakeHaveItemNum", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var awake_have_item_num$field:uint;

		public function clearAwakeHaveItemNum():void {
			hasField$0 &= 0xfffffffb;
			awake_have_item_num$field = new uint();
		}

		public function get hasAwakeHaveItemNum():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set awakeHaveItemNum(value:uint):void {
			hasField$0 |= 0x4;
			awake_have_item_num$field = value;
		}

		public function get awakeHaveItemNum():uint {
			return awake_have_item_num$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasAwakeNeedItemId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, awake_need_item_id$field);
			}
			if (hasAwakeNeedItemNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, awake_need_item_num$field);
			}
			if (hasAwakeHaveItemNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, awake_have_item_num$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var awake_need_item_id$count:uint = 0;
			var awake_need_item_num$count:uint = 0;
			var awake_have_item_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (awake_need_item_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAwakeItem.awakeNeedItemId cannot be set twice.');
					}
					++awake_need_item_id$count;
					this.awakeNeedItemId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (awake_need_item_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAwakeItem.awakeNeedItemNum cannot be set twice.');
					}
					++awake_need_item_num$count;
					this.awakeNeedItemNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (awake_have_item_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoAwakeItem.awakeHaveItemNum cannot be set twice.');
					}
					++awake_have_item_num$count;
					this.awakeHaveItemNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
