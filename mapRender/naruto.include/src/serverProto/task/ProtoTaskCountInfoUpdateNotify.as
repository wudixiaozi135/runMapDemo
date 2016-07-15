package serverProto.task {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.task.ProtoTaskCountInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTaskCountInfoUpdateNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TASK_COUNT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoTaskCountInfoUpdateNotify.task_count_info", "taskCountInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.task.ProtoTaskCountInfo);

		private var task_count_info$field:serverProto.task.ProtoTaskCountInfo;

		public function clearTaskCountInfo():void {
			task_count_info$field = null;
		}

		public function get hasTaskCountInfo():Boolean {
			return task_count_info$field != null;
		}

		public function set taskCountInfo(value:serverProto.task.ProtoTaskCountInfo):void {
			task_count_info$field = value;
		}

		public function get taskCountInfo():serverProto.task.ProtoTaskCountInfo {
			return task_count_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasTaskCountInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, task_count_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var task_count_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (task_count_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskCountInfoUpdateNotify.taskCountInfo cannot be set twice.');
					}
					++task_count_info$count;
					this.taskCountInfo = new serverProto.task.ProtoTaskCountInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.taskCountInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
