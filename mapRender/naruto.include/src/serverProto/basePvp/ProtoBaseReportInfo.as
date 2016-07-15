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
	public  final class ProtoBaseReportInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BASE_NEW_REPORT_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.basePvp.ProtoBaseReportInfo.base_new_report_count", "baseNewReportCount", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var base_new_report_count$field:int;

		private var hasField$0:uint = 0;

		public function clearBaseNewReportCount():void {
			hasField$0 &= 0xfffffffe;
			base_new_report_count$field = new int();
		}

		public function get hasBaseNewReportCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set baseNewReportCount(value:int):void {
			hasField$0 |= 0x1;
			base_new_report_count$field = value;
		}

		public function get baseNewReportCount():int {
			return base_new_report_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBaseNewReportCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, base_new_report_count$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var base_new_report_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (base_new_report_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBaseReportInfo.baseNewReportCount cannot be set twice.');
					}
					++base_new_report_count$count;
					this.baseNewReportCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
