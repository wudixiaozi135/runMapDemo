package serverProto.store {
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
	public  final class ProtoStoreItemInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.id", "id", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var id:uint;

		/**
		 *  @private
		 */
		public static const CASH_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.cash_price", "cashPrice", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cash_price$field:uint;

		private var hasField$0:uint = 0;

		public function clearCashPrice():void {
			hasField$0 &= 0xfffffffe;
			cash_price$field = new uint();
		}

		public function get hasCashPrice():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set cashPrice(value:uint):void {
			hasField$0 |= 0x1;
			cash_price$field = value;
		}

		public function get cashPrice():uint {
			return cash_price$field;
		}

		/**
		 *  @private
		 */
		public static const GOLD_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.gold_price", "goldPrice", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var gold_price$field:uint;

		public function clearGoldPrice():void {
			hasField$0 &= 0xfffffffd;
			gold_price$field = new uint();
		}

		public function get hasGoldPrice():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set goldPrice(value:uint):void {
			hasField$0 |= 0x2;
			gold_price$field = value;
		}

		public function get goldPrice():uint {
			return gold_price$field;
		}

		/**
		 *  @private
		 */
		public static const MEMBER_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.member_price", "memberPrice", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var member_price$field:uint;

		public function clearMemberPrice():void {
			hasField$0 &= 0xfffffffb;
			member_price$field = new uint();
		}

		public function get hasMemberPrice():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set memberPrice(value:uint):void {
			hasField$0 |= 0x4;
			member_price$field = value;
		}

		public function get memberPrice():uint {
			return member_price$field;
		}

		/**
		 *  @private
		 */
		public static const PAGE_SIGN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.page_sign", "pageSign", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var page_sign$field:uint;

		public function clearPageSign():void {
			hasField$0 &= 0xfffffff7;
			page_sign$field = new uint();
		}

		public function get hasPageSign():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set pageSign(value:uint):void {
			hasField$0 |= 0x8;
			page_sign$field = value;
		}

		public function get pageSign():uint {
			return page_sign$field;
		}

		/**
		 *  @private
		 */
		public static const SEQ:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.seq", "seq", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var seq$field:uint;

		public function clearSeq():void {
			hasField$0 &= 0xffffffef;
			seq$field = new uint();
		}

		public function get hasSeq():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set seq(value:uint):void {
			hasField$0 |= 0x10;
			seq$field = value;
		}

		public function get seq():uint {
			return seq$field;
		}

		/**
		 *  @private
		 */
		public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.begin_time", "beginTime", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var begin_time$field:uint;

		public function clearBeginTime():void {
			hasField$0 &= 0xffffffdf;
			begin_time$field = new uint();
		}

		public function get hasBeginTime():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set beginTime(value:uint):void {
			hasField$0 |= 0x20;
			begin_time$field = value;
		}

		public function get beginTime():uint {
			return begin_time$field;
		}

		/**
		 *  @private
		 */
		public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.end_time", "endTime", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var end_time$field:uint;

		public function clearEndTime():void {
			hasField$0 &= 0xffffffbf;
			end_time$field = new uint();
		}

		public function get hasEndTime():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set endTime(value:uint):void {
			hasField$0 |= 0x40;
			end_time$field = value;
		}

		public function get endTime():uint {
			return end_time$field;
		}

		/**
		 *  @private
		 */
		public static const DAY_BUY_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.day_buy_num", "dayBuyNum", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var day_buy_num$field:uint;

		public function clearDayBuyNum():void {
			hasField$0 &= 0xffffff7f;
			day_buy_num$field = new uint();
		}

		public function get hasDayBuyNum():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set dayBuyNum(value:uint):void {
			hasField$0 |= 0x80;
			day_buy_num$field = value;
		}

		public function get dayBuyNum():uint {
			return day_buy_num$field;
		}

		/**
		 *  @private
		 */
		public static const LIMIT_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.limit_level", "limitLevel", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var limit_level$field:uint;

		public function clearLimitLevel():void {
			hasField$0 &= 0xfffffeff;
			limit_level$field = new uint();
		}

		public function get hasLimitLevel():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set limitLevel(value:uint):void {
			hasField$0 |= 0x100;
			limit_level$field = value;
		}

		public function get limitLevel():uint {
			return limit_level$field;
		}

		/**
		 *  @private
		 */
		public static const DAY_RECHARGE_AMOUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.day_recharge_amount", "dayRechargeAmount", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var day_recharge_amount$field:uint;

		public function clearDayRechargeAmount():void {
			hasField$0 &= 0xfffffdff;
			day_recharge_amount$field = new uint();
		}

		public function get hasDayRechargeAmount():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set dayRechargeAmount(value:uint):void {
			hasField$0 |= 0x200;
			day_recharge_amount$field = value;
		}

		public function get dayRechargeAmount():uint {
			return day_recharge_amount$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_BUY_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.max_buy_num", "maxBuyNum", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_buy_num$field:uint;

		public function clearMaxBuyNum():void {
			hasField$0 &= 0xfffffbff;
			max_buy_num$field = new uint();
		}

		public function get hasMaxBuyNum():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set maxBuyNum(value:uint):void {
			hasField$0 |= 0x400;
			max_buy_num$field = value;
		}

		public function get maxBuyNum():uint {
			return max_buy_num$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.store.ProtoStoreItemInfo.remain_time", "remainTime", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_time$field:uint;

		public function clearRemainTime():void {
			hasField$0 &= 0xfffff7ff;
			remain_time$field = new uint();
		}

		public function get hasRemainTime():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set remainTime(value:uint):void {
			hasField$0 |= 0x800;
			remain_time$field = value;
		}

		public function get remainTime():uint {
			return remain_time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.id);
			if (hasCashPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, cash_price$field);
			}
			if (hasGoldPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, gold_price$field);
			}
			if (hasMemberPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, member_price$field);
			}
			if (hasPageSign) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, page_sign$field);
			}
			if (hasSeq) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, seq$field);
			}
			if (hasBeginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, begin_time$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, end_time$field);
			}
			if (hasDayBuyNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, day_buy_num$field);
			}
			if (hasLimitLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, limit_level$field);
			}
			if (hasDayRechargeAmount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, day_recharge_amount$field);
			}
			if (hasMaxBuyNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_buy_num$field);
			}
			if (hasRemainTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_time$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var id$count:uint = 0;
			var cash_price$count:uint = 0;
			var gold_price$count:uint = 0;
			var member_price$count:uint = 0;
			var page_sign$count:uint = 0;
			var seq$count:uint = 0;
			var begin_time$count:uint = 0;
			var end_time$count:uint = 0;
			var day_buy_num$count:uint = 0;
			var limit_level$count:uint = 0;
			var day_recharge_amount$count:uint = 0;
			var max_buy_num$count:uint = 0;
			var remain_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreItemInfo.id cannot be set twice.');
					}
					++id$count;
					this.id = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (cash_price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreItemInfo.cashPrice cannot be set twice.');
					}
					++cash_price$count;
					this.cashPrice = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (gold_price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreItemInfo.goldPrice cannot be set twice.');
					}
					++gold_price$count;
					this.goldPrice = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (member_price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreItemInfo.memberPrice cannot be set twice.');
					}
					++member_price$count;
					this.memberPrice = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (page_sign$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreItemInfo.pageSign cannot be set twice.');
					}
					++page_sign$count;
					this.pageSign = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (seq$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreItemInfo.seq cannot be set twice.');
					}
					++seq$count;
					this.seq = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreItemInfo.beginTime cannot be set twice.');
					}
					++begin_time$count;
					this.beginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreItemInfo.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (day_buy_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreItemInfo.dayBuyNum cannot be set twice.');
					}
					++day_buy_num$count;
					this.dayBuyNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (limit_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreItemInfo.limitLevel cannot be set twice.');
					}
					++limit_level$count;
					this.limitLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (day_recharge_amount$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreItemInfo.dayRechargeAmount cannot be set twice.');
					}
					++day_recharge_amount$count;
					this.dayRechargeAmount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (max_buy_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreItemInfo.maxBuyNum cannot be set twice.');
					}
					++max_buy_num$count;
					this.maxBuyNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 13:
					if (remain_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoStoreItemInfo.remainTime cannot be set twice.');
					}
					++remain_time$count;
					this.remainTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
