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
	public  final class ProtoSignInRedoReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const REDO_MONTH_SIGN_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoSignInRedoReq.redo_month_sign_idx", "redoMonthSignIdx", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var redo_month_sign_idx$field:uint;

		private var hasField$0:uint = 0;

		public function clearRedoMonthSignIdx():void {
			hasField$0 &= 0xfffffffe;
			redo_month_sign_idx$field = new uint();
		}

		public function get hasRedoMonthSignIdx():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set redoMonthSignIdx(value:uint):void {
			hasField$0 |= 0x1;
			redo_month_sign_idx$field = value;
		}

		public function get redoMonthSignIdx():uint {
			return redo_month_sign_idx$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRedoMonthSignIdx) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, redo_month_sign_idx$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var redo_month_sign_idx$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (redo_month_sign_idx$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSignInRedoReq.redoMonthSignIdx cannot be set twice.');
					}
					++redo_month_sign_idx$count;
					this.redoMonthSignIdx = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
