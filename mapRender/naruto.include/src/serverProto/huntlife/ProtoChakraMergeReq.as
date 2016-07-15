package serverProto.huntlife {
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
	public  final class ProtoChakraMergeReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const SRC_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraMergeReq.src_type", "srcType", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var src_type$field:uint;

		private var hasField$0:uint = 0;

		public function clearSrcType():void {
			hasField$0 &= 0xfffffffe;
			src_type$field = new uint();
		}

		public function get hasSrcType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set srcType(value:uint):void {
			hasField$0 |= 0x1;
			src_type$field = value;
		}

		public function get srcType():uint {
			return src_type$field;
		}

		/**
		 *  @private
		 */
		public static const SRC_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraMergeReq.src_index", "srcIndex", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var src_index$field:uint;

		public function clearSrcIndex():void {
			hasField$0 &= 0xfffffffd;
			src_index$field = new uint();
		}

		public function get hasSrcIndex():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set srcIndex(value:uint):void {
			hasField$0 |= 0x2;
			src_index$field = value;
		}

		public function get srcIndex():uint {
			return src_index$field;
		}

		/**
		 *  @private
		 */
		public static const DST_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraMergeReq.dst_type", "dstType", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dst_type$field:uint;

		public function clearDstType():void {
			hasField$0 &= 0xfffffffb;
			dst_type$field = new uint();
		}

		public function get hasDstType():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set dstType(value:uint):void {
			hasField$0 |= 0x4;
			dst_type$field = value;
		}

		public function get dstType():uint {
			return dst_type$field;
		}

		/**
		 *  @private
		 */
		public static const DST_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraMergeReq.dst_index", "dstIndex", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dst_index$field:uint;

		public function clearDstIndex():void {
			hasField$0 &= 0xfffffff7;
			dst_index$field = new uint();
		}

		public function get hasDstIndex():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set dstIndex(value:uint):void {
			hasField$0 |= 0x8;
			dst_index$field = value;
		}

		public function get dstIndex():uint {
			return dst_index$field;
		}

		/**
		 *  @private
		 */
		public static const HUNTLIFE_INDEX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoChakraMergeReq.huntlife_index", "huntlifeIndex", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var huntlife_index$field:uint;

		public function clearHuntlifeIndex():void {
			hasField$0 &= 0xffffffef;
			huntlife_index$field = new uint();
		}

		public function get hasHuntlifeIndex():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set huntlifeIndex(value:uint):void {
			hasField$0 |= 0x10;
			huntlife_index$field = value;
		}

		public function get huntlifeIndex():uint {
			return huntlife_index$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasSrcType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, src_type$field);
			}
			if (hasSrcIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, src_index$field);
			}
			if (hasDstType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, dst_type$field);
			}
			if (hasDstIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, dst_index$field);
			}
			if (hasHuntlifeIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, huntlife_index$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var src_type$count:uint = 0;
			var src_index$count:uint = 0;
			var dst_type$count:uint = 0;
			var dst_index$count:uint = 0;
			var huntlife_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (src_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChakraMergeReq.srcType cannot be set twice.');
					}
					++src_type$count;
					this.srcType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (src_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChakraMergeReq.srcIndex cannot be set twice.');
					}
					++src_index$count;
					this.srcIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (dst_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChakraMergeReq.dstType cannot be set twice.');
					}
					++dst_type$count;
					this.dstType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (dst_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChakraMergeReq.dstIndex cannot be set twice.');
					}
					++dst_index$count;
					this.dstIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (huntlife_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoChakraMergeReq.huntlifeIndex cannot be set twice.');
					}
					++huntlife_index$count;
					this.huntlifeIndex = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
