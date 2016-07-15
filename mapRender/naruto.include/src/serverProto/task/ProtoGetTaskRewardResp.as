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
	import serverProto.task.ProtoTaskInfo;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetTaskRewardResp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoGetTaskRewardResp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NEXT_TASK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoGetTaskRewardResp.next_task", "nextTask", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.task.ProtoTaskInfo);

		private var next_task$field:serverProto.task.ProtoTaskInfo;

		public function clearNextTask():void {
			next_task$field = null;
		}

		public function get hasNextTask():Boolean {
			return next_task$field != null;
		}

		public function set nextTask(value:serverProto.task.ProtoTaskInfo):void {
			next_task$field = value;
		}

		public function get nextTask():serverProto.task.ProtoTaskInfo {
			return next_task$field;
		}

		/**
		 *  @private
		 */
		public static const NEW_TASK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoGetTaskRewardResp.new_task", "newTask", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.task.ProtoTaskInfo);

		[ArrayElementType("serverProto.task.ProtoTaskInfo")]
		public var newTask:Array = [];

		/**
		 *  @private
		 */
		public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoGetTaskRewardResp.award", "award", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var award:Array = [];

		/**
		 *  @private
		 */
		public static const TASK:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.task.ProtoGetTaskRewardResp.task", "task", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.task.ProtoTaskInfo);

		private var task$field:serverProto.task.ProtoTaskInfo;

		public function clearTask():void {
			task$field = null;
		}

		public function get hasTask():Boolean {
			return task$field != null;
		}

		public function set task(value:serverProto.task.ProtoTaskInfo):void {
			task$field = value;
		}

		public function get task():serverProto.task.ProtoTaskInfo {
			return task$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasNextTask) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, next_task$field);
			}
			for (var newTask$index:uint = 0; newTask$index < this.newTask.length; ++newTask$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.newTask[newTask$index]);
			}
			for (var award$index:uint = 0; award$index < this.award.length; ++award$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.award[award$index]);
			}
			if (hasTask) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, task$field);
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
			var next_task$count:uint = 0;
			var task$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTaskRewardResp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (next_task$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTaskRewardResp.nextTask cannot be set twice.');
					}
					++next_task$count;
					this.nextTask = new serverProto.task.ProtoTaskInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.nextTask);
					break;
				case 3:
					this.newTask.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.task.ProtoTaskInfo()));
					break;
				case 4:
					this.award.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 5:
					if (task$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetTaskRewardResp.task cannot be set twice.');
					}
					++task$count;
					this.task = new serverProto.task.ProtoTaskInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.task);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
