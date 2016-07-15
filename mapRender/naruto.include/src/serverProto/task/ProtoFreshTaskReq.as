package serverProto.task {
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
	public  final class ProtoFreshTaskReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PAY_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoFreshTaskReq.pay_flag", "payFlag", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var payFlag:uint;

		/**
		 *  @private
		 */
		public static const TASK_TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.task.ProtoFreshTaskReq.task_type", "taskType", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var task_type$field:uint;

		private var hasField$0:uint = 0;

		public function clearTaskType():void {
			hasField$0 &= 0xfffffffe;
			task_type$field = new uint();
		}

		public function get hasTaskType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set taskType(value:uint):void {
			hasField$0 |= 0x1;
			task_type$field = value;
		}

		public function get taskType():uint {
			return task_type$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.payFlag);
			if (hasTaskType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, task_type$field);
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
			var task_type$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (pay_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFreshTaskReq.payFlag cannot be set twice.');
					}
					++pay_flag$count;
					this.payFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (task_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFreshTaskReq.taskType cannot be set twice.');
					}
					++task_type$count;
					this.taskType = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
