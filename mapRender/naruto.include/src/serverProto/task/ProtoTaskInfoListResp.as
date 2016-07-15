package serverProto.task {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.task.ProtoTaskCountInfo;
	import serverProto.task.ProtoTaskInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTaskInfoListResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoTaskInfoListResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const TASKS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoTaskInfoListResp.tasks", "tasks", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.task.ProtoTaskInfo);

		[ArrayElementType("serverProto.task.ProtoTaskInfo")]
		public var tasks:Array = [];

		/**
		 *  @private
		 */
		public static const TASK_COUNT_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoTaskInfoListResp.task_count_info", "taskCountInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.task.ProtoTaskCountInfo);

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
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
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
			var ret$count:uint = 0;
			var task_count_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskInfoListResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.tasks.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.task.ProtoTaskInfo()));
					break;
				case 3:
					if (task_count_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTaskInfoListResp.taskCountInfo cannot be set twice.');
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
