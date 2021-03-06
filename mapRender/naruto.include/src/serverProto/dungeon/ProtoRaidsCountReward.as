package serverProto.dungeon {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoRaidsCountReward extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RAIDS_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoRaidsCountReward.raids_count", "raidsCount", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var raidsCount:uint;

		/**
		 *  @private
		 */
		public static const ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoRaidsCountReward.item_info", "itemInfo", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var itemInfo:Array = [];

		/**
		 *  @private
		 */
		public static const VIP_ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoRaidsCountReward.vip_item_info", "vipItemInfo", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var vipItemInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.raidsCount);
			for (var itemInfo$index:uint = 0; itemInfo$index < this.itemInfo.length; ++itemInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.itemInfo[itemInfo$index]);
			}
			for (var vipItemInfo$index:uint = 0; vipItemInfo$index < this.vipItemInfo.length; ++vipItemInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.vipItemInfo[vipItemInfo$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var raids_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (raids_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRaidsCountReward.raidsCount cannot be set twice.');
					}
					++raids_count$count;
					this.raidsCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					this.itemInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 3:
					this.vipItemInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
