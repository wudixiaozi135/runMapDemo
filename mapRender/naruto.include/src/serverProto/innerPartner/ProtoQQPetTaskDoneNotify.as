package serverProto.innerPartner {
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
	public  final class ProtoQQPetTaskDoneNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TASK_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerPartner.ProtoQQPetTaskDoneNotify.task_id", "taskId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var task_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearTaskId():void {
			hasField$0 &= 0xfffffffe;
			task_id$field = new uint();
		}

		public function get hasTaskId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set taskId(value:uint):void {
			hasField$0 |= 0x1;
			task_id$field = value;
		}

		public function get taskId():uint {
			return task_id$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasTaskId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, task_id$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var task_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (task_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoQQPetTaskDoneNotify.taskId cannot be set twice.');
					}
					++task_id$count;
					this.taskId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
