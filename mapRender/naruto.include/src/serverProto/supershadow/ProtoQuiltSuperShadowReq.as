package serverProto.supershadow {
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
	public  final class ProtoQuiltSuperShadowReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PAY_FLAG:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.supershadow.ProtoQuiltSuperShadowReq.pay_flag", "payFlag", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pay_flag$field:int;

		private var hasField$0:uint = 0;

		public function clearPayFlag():void {
			hasField$0 &= 0xfffffffe;
			pay_flag$field = new int();
		}

		public function get hasPayFlag():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set payFlag(value:int):void {
			hasField$0 |= 0x1;
			pay_flag$field = value;
		}

		public function get payFlag():int {
			return pay_flag$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPayFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, pay_flag$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var pay_flag$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (pay_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQuiltSuperShadowReq.payFlag cannot be set twice.');
					}
					++pay_flag$count;
					this.payFlag = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
