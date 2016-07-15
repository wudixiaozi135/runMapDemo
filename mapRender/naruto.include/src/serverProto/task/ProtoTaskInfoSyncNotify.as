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
	import serverProto.task.ProtoTaskInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTaskInfoSyncNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TASK_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoTaskInfoSyncNotify.task_type", "taskType", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var taskType:uint;

		/**
		 *  @private
		 */
		public static const TASKS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoTaskInfoSyncNotify.tasks", "tasks", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.task.ProtoTaskInfo);

		[ArrayElementType("serverProto.task.ProtoTaskInfo")]
		public var tasks:Array = [];

		/**
		 *  @private
		 */
		public static const TASK_COUNT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoTaskInfoSyncNotify.task_count_info", "taskCountInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.task.ProtoTaskCountInfo);

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
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.taskType);
			for (var tasks$index:uint = 0; tasks$index < this.tasks.length; ++tasks$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.tasks[tasks$index]);
			}
			if (hasTaskCountInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
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
			var task_type$count:uint = 0;
			var task_count_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (task_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskInfoSyncNotify.taskType cannot be set twice.');
					}
					++task_type$count;
					this.taskType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					this.tasks.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.task.ProtoTaskInfo()));
					break;
				case 3:
					if (task_count_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskInfoSyncNotify.taskCountInfo cannot be set twice.');
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
