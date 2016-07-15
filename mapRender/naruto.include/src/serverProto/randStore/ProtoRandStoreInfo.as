package serverProto.randStore {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.randStore.ProtoRandStoreItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoRandStoreInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var type:uint;

		/**
		 *  @private
		 */
		public static const STORE_MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.store_money", "storeMoney", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		public var storeMoney:uint;

		/**
		 *  @private
		 */
		public static const FRESH_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.fresh_time", "freshTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		public var freshTime:uint;

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.vip_level", "vipLevel", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		public var vipLevel:uint;

		/**
		 *  @private
		 */
		public static const FRESH_GOLD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.fresh_gold", "freshGold", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		public var freshGold:uint;

		/**
		 *  @private
		 */
		public static const FRESH_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.fresh_times", "freshTimes", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		public var freshTimes:uint;

		/**
		 *  @private
		 */
		public static const DAY_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.day_flag", "dayFlag", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		public var dayFlag:uint;

		/**
		 *  @private
		 */
		public static const NEXT_FRESH_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.randStore.ProtoRandStoreInfo.next_fresh_time", "nextFreshTime", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		public var nextFreshTime:uint;

		/**
		 *  @private
		 */
		public static const ITEM_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.randStore.ProtoRandStoreInfo.item_info", "itemInfo", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.randStore.ProtoRandStoreItemInfo);

		[ArrayElementType("serverProto.randStore.ProtoRandStoreItemInfo")]
		public var itemInfo:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.type);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.storeMoney);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.freshTime);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.vipLevel);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.freshGold);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.freshTimes);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.dayFlag);
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.nextFreshTime);
			for (var itemInfo$index:uint = 0; itemInfo$index < this.itemInfo.length; ++itemInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.itemInfo[itemInfo$index]);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			var store_money$count:uint = 0;
			var fresh_time$count:uint = 0;
			var vip_level$count:uint = 0;
			var fresh_gold$count:uint = 0;
			var fresh_times$count:uint = 0;
			var day_flag$count:uint = 0;
			var next_fresh_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreInfo.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (store_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreInfo.storeMoney cannot be set twice.');
					}
					++store_money$count;
					this.storeMoney = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (fresh_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreInfo.freshTime cannot be set twice.');
					}
					++fresh_time$count;
					this.freshTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreInfo.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (fresh_gold$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreInfo.freshGold cannot be set twice.');
					}
					++fresh_gold$count;
					this.freshGold = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (fresh_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreInfo.freshTimes cannot be set twice.');
					}
					++fresh_times$count;
					this.freshTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (day_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreInfo.dayFlag cannot be set twice.');
					}
					++day_flag$count;
					this.dayFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (next_fresh_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoRandStoreInfo.nextFreshTime cannot be set twice.');
					}
					++next_fresh_time$count;
					this.nextFreshTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					this.itemInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.randStore.ProtoRandStoreItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
