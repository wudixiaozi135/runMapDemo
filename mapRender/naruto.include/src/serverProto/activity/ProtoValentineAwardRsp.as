package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoValentineAwardRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoValentineAwardRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		private var ret$field:serverProto.inc.ProtoRetInfo;

		public function clearRet():void {
			ret$field = null;
		}

		public function get hasRet():Boolean {
			return ret$field != null;
		}

		public function set ret(value:serverProto.inc.ProtoRetInfo):void {
			ret$field = value;
		}

		public function get ret():serverProto.inc.ProtoRetInfo {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const TASK_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineAwardRsp.task_id", "taskId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const TASK_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineAwardRsp.task_status", "taskStatus", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var task_status$field:uint;

		public function clearTaskStatus():void {
			hasField$0 &= 0xfffffffd;
			task_status$field = new uint();
		}

		public function get hasTaskStatus():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set taskStatus(value:uint):void {
			hasField$0 |= 0x2;
			task_status$field = value;
		}

		public function get taskStatus():uint {
			return task_status$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_COND_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineAwardRsp.current_cond_count", "currentCondCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_cond_count$field:uint;

		public function clearCurrentCondCount():void {
			hasField$0 &= 0xfffffffb;
			current_cond_count$field = new uint();
		}

		public function get hasCurrentCondCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set currentCondCount(value:uint):void {
			hasField$0 |= 0x4;
			current_cond_count$field = value;
		}

		public function get currentCondCount():uint {
			return current_cond_count$field;
		}

		/**
		 *  @private
		 */
		public static const ITEM_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoValentineAwardRsp.item_num", "itemNum", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var item_num$field:uint;

		public function clearItemNum():void {
			hasField$0 &= 0xfffffff7;
			item_num$field = new uint();
		}

		public function get hasItemNum():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set itemNum(value:uint):void {
			hasField$0 |= 0x8;
			item_num$field = value;
		}

		public function get itemNum():uint {
			return item_num$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasTaskId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, task_id$field);
			}
			if (hasTaskStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, task_status$field);
			}
			if (hasCurrentCondCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, current_cond_count$field);
			}
			if (hasItemNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, item_num$field);
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
			var task_id$count:uint = 0;
			var task_status$count:uint = 0;
			var current_cond_count$count:uint = 0;
			var item_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoValentineAwardRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (task_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoValentineAwardRsp.taskId cannot be set twice.');
					}
					++task_id$count;
					this.taskId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (task_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoValentineAwardRsp.taskStatus cannot be set twice.');
					}
					++task_status$count;
					this.taskStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (current_cond_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoValentineAwardRsp.currentCondCount cannot be set twice.');
					}
					++current_cond_count$count;
					this.currentCondCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (item_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoValentineAwardRsp.itemNum cannot be set twice.');
					}
					++item_num$count;
					this.itemNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
