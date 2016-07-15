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
	import serverProto.activityHub.ProtoActivityHubNodeInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOpenActivityHubResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activityHub.ProtoOpenActivityHubResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const TODAY_ACTIVITY_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activityHub.ProtoOpenActivityHubResponse.today_activity_list", "todayActivityList", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activityHub.ProtoActivityHubNodeInfo);

		[ArrayElementType("serverProto.activityHub.ProtoActivityHubNodeInfo")]
		public var todayActivityList:Array = [];

		/**
		 *  @private
		 */
		public static const OTHER_ACTIVITY_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activityHub.ProtoOpenActivityHubResponse.other_activity_list", "otherActivityList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activityHub.ProtoActivityHubNodeInfo);

		[ArrayElementType("serverProto.activityHub.ProtoActivityHubNodeInfo")]
		public var otherActivityList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			for (var todayActivityList$index:uint = 0; todayActivityList$index < this.todayActivityList.length; ++todayActivityList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.todayActivityList[todayActivityList$index]);
			}
			for (var otherActivityList$index:uint = 0; otherActivityList$index < this.otherActivityList.length; ++otherActivityList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.otherActivityList[otherActivityList$index]);
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
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenActivityHubResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					this.todayActivityList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activityHub.ProtoActivityHubNodeInfo()));
					break;
				case 3:
					this.otherActivityList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activityHub.ProtoActivityHubNodeInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
