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
	public  final class ProtoBlessTreeAwardReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const IS_ONE_KEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoBlessTreeAwardReq.is_one_key", "isOneKey", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_one_key$field:uint;

		private var hasField$0:uint = 0;

		public function clearIsOneKey():void {
			hasField$0 &= 0xfffffffe;
			is_one_key$field = new uint();
		}

		public function get hasIsOneKey():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set isOneKey(value:uint):void {
			hasField$0 |= 0x1;
			is_one_key$field = value;
		}

		public function get isOneKey():uint {
			return is_one_key$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasIsOneKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, is_one_key$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var is_one_key$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (is_one_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBlessTreeAwardReq.isOneKey cannot be set twice.');
					}
					++is_one_key$count;
					this.isOneKey = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
