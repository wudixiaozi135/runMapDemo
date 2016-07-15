package serverProto.basePvp {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.basePvp.ProtoBaseAttackReport;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFinishBaseAttackNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const REPORT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.basePvp.ProtoFinishBaseAttackNotify.report", "report", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.basePvp.ProtoBaseAttackReport);

		private var report$field:serverProto.basePvp.ProtoBaseAttackReport;

		public function clearReport():void {
			report$field = null;
		}

		public function get hasReport():Boolean {
			return report$field != null;
		}

		public function set report(value:serverProto.basePvp.ProtoBaseAttackReport):void {
			report$field = value;
		}

		public function get report():serverProto.basePvp.ProtoBaseAttackReport {
			return report$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasReport) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, report$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var report$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (report$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFinishBaseAttackNotify.report cannot be set twice.');
					}
					++report$count;
					this.report = new serverProto.basePvp.ProtoBaseAttackReport();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.report);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
