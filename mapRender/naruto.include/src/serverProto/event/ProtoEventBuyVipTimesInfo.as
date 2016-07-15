package serverProto.event {
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
	public  final class ProtoEventBuyVipTimesInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const BUY_VIP_GENIN_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.event.ProtoEventBuyVipTimesInfo.buy_vip_genin_count", "buyVipGeninCount", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buy_vip_genin_count$field:int;

		private var hasField$0:uint = 0;

		public function clearBuyVipGeninCount():void {
			hasField$0 &= 0xfffffffe;
			buy_vip_genin_count$field = new int();
		}

		public function get hasBuyVipGeninCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set buyVipGeninCount(value:int):void {
			hasField$0 |= 0x1;
			buy_vip_genin_count$field = value;
		}

		public function get buyVipGeninCount():int {
			return buy_vip_genin_count$field;
		}

		/**
		 *  @private
		 */
		public static const BUY_VIP_CHUNIN_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.event.ProtoEventBuyVipTimesInfo.buy_vip_chunin_count", "buyVipChuninCount", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buy_vip_chunin_count$field:int;

		public function clearBuyVipChuninCount():void {
			hasField$0 &= 0xfffffffd;
			buy_vip_chunin_count$field = new int();
		}

		public function get hasBuyVipChuninCount():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set buyVipChuninCount(value:int):void {
			hasField$0 |= 0x2;
			buy_vip_chunin_count$field = value;
		}

		public function get buyVipChuninCount():int {
			return buy_vip_chunin_count$field;
		}

		/**
		 *  @private
		 */
		public static const BUY_VIP_JONIN_COUNT:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.event.ProtoEventBuyVipTimesInfo.buy_vip_jonin_count", "buyVipJoninCount", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buy_vip_jonin_count$field:int;

		public function clearBuyVipJoninCount():void {
			hasField$0 &= 0xfffffffb;
			buy_vip_jonin_count$field = new int();
		}

		public function get hasBuyVipJoninCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set buyVipJoninCount(value:int):void {
			hasField$0 |= 0x4;
			buy_vip_jonin_count$field = value;
		}

		public function get buyVipJoninCount():int {
			return buy_vip_jonin_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasBuyVipGeninCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, buy_vip_genin_count$field);
			}
			if (hasBuyVipChuninCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, buy_vip_chunin_count$field);
			}
			if (hasBuyVipJoninCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, buy_vip_jonin_count$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var buy_vip_genin_count$count:uint = 0;
			var buy_vip_chunin_count$count:uint = 0;
			var buy_vip_jonin_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (buy_vip_genin_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEventBuyVipTimesInfo.buyVipGeninCount cannot be set twice.');
					}
					++buy_vip_genin_count$count;
					this.buyVipGeninCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (buy_vip_chunin_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEventBuyVipTimesInfo.buyVipChuninCount cannot be set twice.');
					}
					++buy_vip_chunin_count$count;
					this.buyVipChuninCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (buy_vip_jonin_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoEventBuyVipTimesInfo.buyVipJoninCount cannot be set twice.');
					}
					++buy_vip_jonin_count$count;
					this.buyVipJoninCount = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
