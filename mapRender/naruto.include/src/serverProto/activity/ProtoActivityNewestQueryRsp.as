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
	import serverProto.activity.ProtoActivityNewestStatus;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoActivityNewestQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoActivityNewestQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const TAB_IDX:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoActivityNewestQueryRsp.tab_idx", "tabIdx", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var tab_idx$field:uint;

		private var hasField$0:uint = 0;

		public function clearTabIdx():void {
			hasField$0 &= 0xfffffffe;
			tab_idx$field = new uint();
		}

		public function get hasTabIdx():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set tabIdx(value:uint):void {
			hasField$0 |= 0x1;
			tab_idx$field = value;
		}

		public function get tabIdx():uint {
			return tab_idx$field;
		}

		/**
		 *  @private
		 */
		public static const ACTIVITY_NEWEST_STATUS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoActivityNewestQueryRsp.activity_newest_status", "activityNewestStatus", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoActivityNewestStatus);

		[ArrayElementType("serverProto.activity.ProtoActivityNewestStatus")]
		public var activityNewestStatus:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasTabIdx) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, tab_idx$field);
			}
			for (var activityNewestStatus$index:uint = 0; activityNewestStatus$index < this.activityNewestStatus.length; ++activityNewestStatus$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.activityNewestStatus[activityNewestStatus$index]);
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
			var tab_idx$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityNewestQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (tab_idx$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoActivityNewestQueryRsp.tabIdx cannot be set twice.');
					}
					++tab_idx$count;
					this.tabIdx = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					this.activityNewestStatus.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoActivityNewestStatus()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
