package serverProto.activityHub {
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
	public  final class ProtoActivityHubTimingInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TIMING_ACTIVITY_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.activityHub.ProtoActivityHubTimingInfo.timing_activity_id", "timingActivityId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var timing_activity_id$field:int;

		private var hasField$0:uint = 0;

		public function clearTimingActivityId():void {
			hasField$0 &= 0xfffffffe;
			timing_activity_id$field = new int();
		}

		public function get hasTimingActivityId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set timingActivityId(value:int):void {
			hasField$0 |= 0x1;
			timing_activity_id$field = value;
		}

		public function get timingActivityId():int {
			return timing_activity_id$field;
		}

		/**
		 *  @private
		 */
		public static const TIMING_ACTIVITY_DESC:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.activityHub.ProtoActivityHubTimingInfo.timing_activity_desc", "timingActivityDesc", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var timing_activity_desc$field:String;

		public function clearTimingActivityDesc():void {
			timing_activity_desc$field = null;
		}

		public function get hasTimingActivityDesc():Boolean {
			return timing_activity_desc$field != null;
		}

		public function set timingActivityDesc(value:String):void {
			timing_activity_desc$field = value;
		}

		public function get timingActivityDesc():String {
			return timing_activity_desc$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_ENTER:FieldDescriptor$TYPE_BOOL = new FieldDescriptor$TYPE_BOOL("serverProto.activityHub.ProtoActivityHubTimingInfo.can_enter", "canEnter", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_enter$field:Boolean;

		public function clearCanEnter():void {
			hasField$0 &= 0xfffffffd;
			can_enter$field = new Boolean();
		}

		public function get hasCanEnter():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set canEnter(value:Boolean):void {
			hasField$0 |= 0x2;
			can_enter$field = value;
		}

		public function get canEnter():Boolean {
			return can_enter$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasTimingActivityId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, timing_activity_id$field);
			}
			if (hasTimingActivityDesc) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, timing_activity_desc$field);
			}
			if (hasCanEnter) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_BOOL(output, can_enter$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var timing_activity_id$count:uint = 0;
			var timing_activity_desc$count:uint = 0;
			var can_enter$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (timing_activity_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityHubTimingInfo.timingActivityId cannot be set twice.');
					}
					++timing_activity_id$count;
					this.timingActivityId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (timing_activity_desc$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityHubTimingInfo.timingActivityDesc cannot be set twice.');
					}
					++timing_activity_desc$count;
					this.timingActivityDesc = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (can_enter$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityHubTimingInfo.canEnter cannot be set twice.');
					}
					++can_enter$count;
					this.canEnter = com.netease.protobuf.ReadUtils.read$TYPE_BOOL(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
