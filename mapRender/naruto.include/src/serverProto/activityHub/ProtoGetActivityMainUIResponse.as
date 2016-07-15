package serverProto.activityHub {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.activityHub.ProtoActivityHubTimingInfo;
	import serverProto.activityHub.ProtoDailyActivityInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetActivityMainUIResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activityHub.ProtoGetActivityMainUIResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const TIMING_ACTIVITY_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activityHub.ProtoGetActivityMainUIResponse.timing_activity_info", "timingActivityInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activityHub.ProtoActivityHubTimingInfo);

		private var timing_activity_info$field:serverProto.activityHub.ProtoActivityHubTimingInfo;

		public function clearTimingActivityInfo():void {
			timing_activity_info$field = null;
		}

		public function get hasTimingActivityInfo():Boolean {
			return timing_activity_info$field != null;
		}

		public function set timingActivityInfo(value:serverProto.activityHub.ProtoActivityHubTimingInfo):void {
			timing_activity_info$field = value;
		}

		public function get timingActivityInfo():serverProto.activityHub.ProtoActivityHubTimingInfo {
			return timing_activity_info$field;
		}

		/**
		 *  @private
		 */
		public static const DAILY_ACTIVITY_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activityHub.ProtoGetActivityMainUIResponse.daily_activity_list", "dailyActivityList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activityHub.ProtoDailyActivityInfo);

		[ArrayElementType("serverProto.activityHub.ProtoDailyActivityInfo")]
		public var dailyActivityList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasTimingActivityInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, timing_activity_info$field);
			}
			for (var dailyActivityList$index:uint = 0; dailyActivityList$index < this.dailyActivityList.length; ++dailyActivityList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.dailyActivityList[dailyActivityList$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var timing_activity_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetActivityMainUIResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (timing_activity_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetActivityMainUIResponse.timingActivityInfo cannot be set twice.');
					}
					++timing_activity_info$count;
					this.timingActivityInfo = new serverProto.activityHub.ProtoActivityHubTimingInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.timingActivityInfo);
					break;
				case 3:
					this.dailyActivityList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activityHub.ProtoDailyActivityInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
