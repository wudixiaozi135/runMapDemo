package serverProto.user {
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
	public  final class ProtoTransfigurationInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const IS_TRANSFIGURATION:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.user.ProtoTransfigurationInfo.is_transfiguration", "isTransfiguration", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_transfiguration$field:Boolean;

		private var hasField$0:uint = 0;

		public function clearIsTransfiguration():void {
			hasField$0 &= 0xfffffffe;
			is_transfiguration$field = new Boolean();
		}

		public function get hasIsTransfiguration():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isTransfiguration(value:Boolean):void {
			hasField$0 |= 0x1;
			is_transfiguration$field = value;
		}

		public function get isTransfiguration():Boolean {
			return is_transfiguration$field;
		}

		/**
		 *  @private
		 */
		public static const REMAINDER_NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoTransfigurationInfo.remainder_ninja_id", "remainderNinjaId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remainder_ninja_id$field:int;

		public function clearRemainderNinjaId():void {
			hasField$0 &= 0xfffffffd;
			remainder_ninja_id$field = new int();
		}

		public function get hasRemainderNinjaId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set remainderNinjaId(value:int):void {
			hasField$0 |= 0x2;
			remainder_ninja_id$field = value;
		}

		public function get remainderNinjaId():int {
			return remainder_ninja_id$field;
		}

		/**
		 *  @private
		 */
		public static const REMAINDER_TIME:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoTransfigurationInfo.remainder_time", "remainderTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remainder_time$field:int;

		public function clearRemainderTime():void {
			hasField$0 &= 0xfffffffb;
			remainder_time$field = new int();
		}

		public function get hasRemainderTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set remainderTime(value:int):void {
			hasField$0 |= 0x4;
			remainder_time$field = value;
		}

		public function get remainderTime():int {
			return remainder_time$field;
		}

		/**
		 *  @private
		 */
		public static const TRANSFIGURATION_ITEM_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoTransfigurationInfo.transfiguration_item_num", "transfigurationItemNum", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var transfiguration_item_num$field:int;

		public function clearTransfigurationItemNum():void {
			hasField$0 &= 0xfffffff7;
			transfiguration_item_num$field = new int();
		}

		public function get hasTransfigurationItemNum():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set transfigurationItemNum(value:int):void {
			hasField$0 |= 0x8;
			transfiguration_item_num$field = value;
		}

		public function get transfigurationItemNum():int {
			return transfiguration_item_num$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasIsTransfiguration) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, is_transfiguration$field);
			}
			if (hasRemainderNinjaId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, remainder_ninja_id$field);
			}
			if (hasRemainderTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, remainder_time$field);
			}
			if (hasTransfigurationItemNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, transfiguration_item_num$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var is_transfiguration$count:uint = 0;
			var remainder_ninja_id$count:uint = 0;
			var remainder_time$count:uint = 0;
			var transfiguration_item_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (is_transfiguration$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTransfigurationInfo.isTransfiguration cannot be set twice.');
					}
					++is_transfiguration$count;
					this.isTransfiguration = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				case 2:
					if (remainder_ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTransfigurationInfo.remainderNinjaId cannot be set twice.');
					}
					++remainder_ninja_id$count;
					this.remainderNinjaId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (remainder_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTransfigurationInfo.remainderTime cannot be set twice.');
					}
					++remainder_time$count;
					this.remainderTime = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (transfiguration_item_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTransfigurationInfo.transfigurationItemNum cannot be set twice.');
					}
					++transfiguration_item_num$count;
					this.transfigurationItemNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
