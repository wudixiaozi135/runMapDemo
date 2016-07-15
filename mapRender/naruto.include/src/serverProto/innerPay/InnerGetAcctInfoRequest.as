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
	public  final class InnerGetAcctInfoRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const NEED_RET:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerPay.InnerGetAcctInfoRequest.need_ret", "needRet", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_ret$field:int;

		private var hasField$0:uint = 0;

		public function clearNeedRet():void {
			hasField$0 &= 0xfffffffe;
			need_ret$field = new int();
		}

		public function get hasNeedRet():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set needRet(value:int):void {
			hasField$0 |= 0x1;
			need_ret$field = value;
		}

		public function get needRet():int {
			return need_ret$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasNeedRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, need_ret$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var need_ret$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (need_ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: InnerGetAcctInfoRequest.needRet cannot be set twice.');
					}
					++need_ret$count;
					this.needRet = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
