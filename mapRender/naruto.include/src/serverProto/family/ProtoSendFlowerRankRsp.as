package serverProto.family {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.family.ProtoSendFlowerRank;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoSendFlowerRankRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerRankRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const DAILY_RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerRankRsp.daily_rank", "dailyRank", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.family.ProtoSendFlowerRank);

		[ArrayElementType("serverProto.family.ProtoSendFlowerRank")]
		public var dailyRank:Array = [];

		/**
		 *  @private
		 */
		public static const HISTORY_RANK:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerRankRsp.history_rank", "historyRank", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.family.ProtoSendFlowerRank);

		[ArrayElementType("serverProto.family.ProtoSendFlowerRank")]
		public var historyRank:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			for (var dailyRank$index:uint = 0; dailyRank$index < this.dailyRank.length; ++dailyRank$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.dailyRank[dailyRank$index]);
			}
			for (var historyRank$index:uint = 0; historyRank$index < this.historyRank.length; ++historyRank$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.historyRank[historyRank$index]);
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
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerRankRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.dailyRank.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.family.ProtoSendFlowerRank()));
					break;
				case 3:
					this.historyRank.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.family.ProtoSendFlowerRank()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
