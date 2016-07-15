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
	public  final class ProtoCallNpcReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NPD_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.huntlife.ProtoCallNpcReq.npd_id", "npdId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var npd_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearNpdId():void {
			hasField$0 &= 0xfffffffe;
			npd_id$field = new uint();
		}

		public function get hasNpdId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set npdId(value:uint):void {
			hasField$0 |= 0x1;
			npd_id$field = value;
		}

		public function get npdId():uint {
			return npd_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasNpdId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, npd_id$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var npd_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (npd_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoCallNpcReq.npdId cannot be set twice.');
					}
					++npd_id$count;
					this.npdId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
