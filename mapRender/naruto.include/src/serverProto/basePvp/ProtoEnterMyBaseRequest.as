package serverProto.basePvp {
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
	public  final class ProtoEnterMyBaseRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RETURN_TO_MY_BASE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoEnterMyBaseRequest.return_to_my_base", "returnToMyBase", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var return_to_my_base$field:int;

		private var hasField$0:uint = 0;

		public function clearReturnToMyBase():void {
			hasField$0 &= 0xfffffffe;
			return_to_my_base$field = new int();
		}

		public function get hasReturnToMyBase():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set returnToMyBase(value:int):void {
			hasField$0 |= 0x1;
			return_to_my_base$field = value;
		}

		public function get returnToMyBase():int {
			return return_to_my_base$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasReturnToMyBase) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, return_to_my_base$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var return_to_my_base$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (return_to_my_base$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEnterMyBaseRequest.returnToMyBase cannot be set twice.');
					}
					++return_to_my_base$count;
					this.returnToMyBase = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
