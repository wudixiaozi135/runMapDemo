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
	public  final class ProtoValentineTask extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TASK_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineTask.task_idx", "taskIdx", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var task_idx$field:uint;

		private var hasField$0:uint = 0;

		public function clearTaskIdx():void {
			hasField$0 &= 0xfffffffe;
			task_idx$field = new uint();
		}

		public function get hasTaskIdx():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set taskIdx(value:uint):void {
			hasField$0 |= 0x1;
			task_idx$field = value;
		}

		public function get taskIdx():uint {
			return task_idx$field;
		}

		/**
		 *  @private
		 */
		public static const TASK_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoValentineTask.task_name", "taskName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var task_name$field:String;

		public function clearTaskName():void {
			task_name$field = null;
		}

		public function get hasTaskName():Boolean {
			return task_name$field != null;
		}

		public function set taskName(value:String):void {
			task_name$field = value;
		}

		public function get taskName():String {
			return task_name$field;
		}

		/**
		 *  @private
		 */
		public static const TASK_DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activity.ProtoValentineTask.task_desc", "taskDesc", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var task_desc$field:String;

		public function clearTaskDesc():void {
			task_desc$field = null;
		}

		public function get hasTaskDesc():Boolean {
			return task_desc$field != null;
		}

		public function set taskDesc(value:String):void {
			task_desc$field = value;
		}

		public function get taskDesc():String {
			return task_desc$field;
		}

		/**
		 *  @private
		 */
		public static const ITME_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineTask.itme_num", "itmeNum", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var itme_num$field:uint;

		public function clearItmeNum():void {
			hasField$0 &= 0xfffffffd;
			itme_num$field = new uint();
		}

		public function get hasItmeNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set itmeNum(value:uint):void {
			hasField$0 |= 0x2;
			itme_num$field = value;
		}

		public function get itmeNum():uint {
			return itme_num$field;
		}

		/**
		 *  @private
		 */
		public static const LIMIT_COND_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineTask.limit_cond_count", "limitCondCount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var limit_cond_count$field:uint;

		public function clearLimitCondCount():void {
			hasField$0 &= 0xfffffffb;
			limit_cond_count$field = new uint();
		}

		public function get hasLimitCondCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set limitCondCount(value:uint):void {
			hasField$0 |= 0x4;
			limit_cond_count$field = value;
		}

		public function get limitCondCount():uint {
			return limit_cond_count$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_COND_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineTask.current_cond_count", "currentCondCount", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_cond_count$field:uint;

		public function clearCurrentCondCount():void {
			hasField$0 &= 0xfffffff7;
			current_cond_count$field = new uint();
		}

		public function get hasCurrentCondCount():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set currentCondCount(value:uint):void {
			hasField$0 |= 0x8;
			current_cond_count$field = value;
		}

		public function get currentCondCount():uint {
			return current_cond_count$field;
		}

		/**
		 *  @private
		 */
		public static const TASK_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineTask.task_status", "taskStatus", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var task_status$field:uint;

		public function clearTaskStatus():void {
			hasField$0 &= 0xffffffef;
			task_status$field = new uint();
		}

		public function get hasTaskStatus():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set taskStatus(value:uint):void {
			hasField$0 |= 0x10;
			task_status$field = value;
		}

		public function get taskStatus():uint {
			return task_status$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasTaskIdx) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, task_idx$field);
			}
			if (hasTaskName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, task_name$field);
			}
			if (hasTaskDesc) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, task_desc$field);
			}
			if (hasItmeNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, itme_num$field);
			}
			if (hasLimitCondCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, limit_cond_count$field);
			}
			if (hasCurrentCondCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, current_cond_count$field);
			}
			if (hasTaskStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, task_status$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var task_idx$count:uint = 0;
			var task_name$count:uint = 0;
			var task_desc$count:uint = 0;
			var itme_num$count:uint = 0;
			var limit_cond_count$count:uint = 0;
			var current_cond_count$count:uint = 0;
			var task_status$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (task_idx$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoValentineTask.taskIdx cannot be set twice.');
					}
					++task_idx$count;
					this.taskIdx = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (task_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoValentineTask.taskName cannot be set twice.');
					}
					++task_name$count;
					this.taskName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (task_desc$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoValentineTask.taskDesc cannot be set twice.');
					}
					++task_desc$count;
					this.taskDesc = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (itme_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoValentineTask.itmeNum cannot be set twice.');
					}
					++itme_num$count;
					this.itmeNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (limit_cond_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoValentineTask.limitCondCount cannot be set twice.');
					}
					++limit_cond_count$count;
					this.limitCondCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (current_cond_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoValentineTask.currentCondCount cannot be set twice.');
					}
					++current_cond_count$count;
					this.currentCondCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (task_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoValentineTask.taskStatus cannot be set twice.');
					}
					++task_status$count;
					this.taskStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
