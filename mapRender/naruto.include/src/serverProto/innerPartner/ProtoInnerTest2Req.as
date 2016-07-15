package serverProto.innerPartner {
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
	public  final class ProtoInnerTest2Req extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE1:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.ProtoInnerTest2Req.type1", "type1", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var type1$field:uint;

		private var hasField$0:uint = 0;

		public function clearType1():void {
			hasField$0 &= 0xfffffffe;
			type1$field = new uint();
		}

		public function get hasType1():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set type1(value:uint):void {
			hasField$0 |= 0x1;
			type1$field = value;
		}

		public function get type1():uint {
			return type1$field;
		}

		/**
		 *  @private
		 */
		public static const TYPE2:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.ProtoInnerTest2Req.type2", "type2", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var type2$field:uint;

		public function clearType2():void {
			hasField$0 &= 0xfffffffd;
			type2$field = new uint();
		}

		public function get hasType2():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set type2(value:uint):void {
			hasField$0 |= 0x2;
			type2$field = value;
		}

		public function get type2():uint {
			return type2$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasType1) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, type1$field);
			}
			if (hasType2) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, type2$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type1$count:uint = 0;
			var type2$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type1$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerTest2Req.type1 cannot be set twice.');
					}
					++type1$count;
					this.type1 = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (type2$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerTest2Req.type2 cannot be set twice.');
					}
					++type2$count;
					this.type2 = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
