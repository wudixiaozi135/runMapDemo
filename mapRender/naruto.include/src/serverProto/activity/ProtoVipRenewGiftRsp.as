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
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoVipRenewGiftRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoVipRenewGiftRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.activity_begin_time", "activityBeginTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var activity_begin_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearActivityBeginTime():void {
			hasField$0 &= 0xfffffffe;
			activity_begin_time$field = new uint();
		}

		public function get hasActivityBeginTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set activityBeginTime(value:uint):void {
			hasField$0 |= 0x1;
			activity_begin_time$field = value;
		}

		public function get activityBeginTime():uint {
			return activity_begin_time$field;
		}

		/**
		 *  @private
		 */
		public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.activity_end_time", "activityEndTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var activity_end_time$field:uint;

		public function clearActivityEndTime():void {
			hasField$0 &= 0xfffffffd;
			activity_end_time$field = new uint();
		}

		public function get hasActivityEndTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set activityEndTime(value:uint):void {
			hasField$0 |= 0x2;
			activity_end_time$field = value;
		}

		public function get activityEndTime():uint {
			return activity_end_time$field;
		}

		/**
		 *  @private
		 */
		public static const PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.price", "price", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var price$field:uint;

		public function clearPrice():void {
			hasField$0 &= 0xfffffffb;
			price$field = new uint();
		}

		public function get hasPrice():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set price(value:uint):void {
			hasField$0 |= 0x4;
			price$field = value;
		}

		public function get price():uint {
			return price$field;
		}

		/**
		 *  @private
		 */
		public static const DAYS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.days", "days", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var days$field:uint;

		public function clearDays():void {
			hasField$0 &= 0xfffffff7;
			days$field = new uint();
		}

		public function get hasDays():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set days(value:uint):void {
			hasField$0 |= 0x8;
			days$field = value;
		}

		public function get days():uint {
			return days$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_REBATE_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.max_rebate_count", "maxRebateCount", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_rebate_count$field:uint;

		public function clearMaxRebateCount():void {
			hasField$0 &= 0xffffffef;
			max_rebate_count$field = new uint();
		}

		public function get hasMaxRebateCount():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set maxRebateCount(value:uint):void {
			hasField$0 |= 0x10;
			max_rebate_count$field = value;
		}

		public function get maxRebateCount():uint {
			return max_rebate_count$field;
		}

		/**
		 *  @private
		 */
		public static const RATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.rate", "rate", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rate$field:uint;

		public function clearRate():void {
			hasField$0 &= 0xffffffdf;
			rate$field = new uint();
		}

		public function get hasRate():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set rate(value:uint):void {
			hasField$0 |= 0x20;
			rate$field = value;
		}

		public function get rate():uint {
			return rate$field;
		}

		/**
		 *  @private
		 */
		public static const AVAILABLE_REBATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.available_rebate", "availableRebate", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var available_rebate$field:uint;

		public function clearAvailableRebate():void {
			hasField$0 &= 0xffffffbf;
			available_rebate$field = new uint();
		}

		public function get hasAvailableRebate():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set availableRebate(value:uint):void {
			hasField$0 |= 0x40;
			available_rebate$field = value;
		}

		public function get availableRebate():uint {
			return available_rebate$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.activity.ProtoVipRenewGiftRsp.vip_level", "vipLevel", (9 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xffffff7f;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x80;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const REMAINDER_DAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.remainder_day", "remainderDay", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remainder_day$field:uint;

		public function clearRemainderDay():void {
			hasField$0 &= 0xfffffeff;
			remainder_day$field = new uint();
		}

		public function get hasRemainderDay():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set remainderDay(value:uint):void {
			hasField$0 |= 0x100;
			remainder_day$field = value;
		}

		public function get remainderDay():uint {
			return remainder_day$field;
		}

		/**
		 *  @private
		 */
		public static const VIP3_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.vip3_count", "vip3Count", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var vip3_count$field:uint;

		public function clearVip3Count():void {
			hasField$0 &= 0xfffffdff;
			vip3_count$field = new uint();
		}

		public function get hasVip3Count():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set vip3Count(value:uint):void {
			hasField$0 |= 0x200;
			vip3_count$field = value;
		}

		public function get vip3Count():uint {
			return vip3_count$field;
		}

		/**
		 *  @private
		 */
		public static const NEXT_REBATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoVipRenewGiftRsp.next_rebate", "nextRebate", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_rebate$field:uint;

		public function clearNextRebate():void {
			hasField$0 &= 0xfffffbff;
			next_rebate$field = new uint();
		}

		public function get hasNextRebate():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set nextRebate(value:uint):void {
			hasField$0 |= 0x400;
			next_rebate$field = value;
		}

		public function get nextRebate():uint {
			return next_rebate$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasActivityBeginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, activity_begin_time$field);
			}
			if (hasActivityEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, activity_end_time$field);
			}
			if (hasPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, price$field);
			}
			if (hasDays) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, days$field);
			}
			if (hasMaxRebateCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_rebate_count$field);
			}
			if (hasRate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, rate$field);
			}
			if (hasAvailableRebate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, available_rebate$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasRemainderDay) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remainder_day$field);
			}
			if (hasVip3Count) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, vip3_count$field);
			}
			if (hasNextRebate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, next_rebate$field);
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
			var activity_begin_time$count:uint = 0;
			var activity_end_time$count:uint = 0;
			var price$count:uint = 0;
			var days$count:uint = 0;
			var max_rebate_count$count:uint = 0;
			var rate$count:uint = 0;
			var available_rebate$count:uint = 0;
			var vip_level$count:uint = 0;
			var remainder_day$count:uint = 0;
			var vip3_count$count:uint = 0;
			var next_rebate$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVipRenewGiftRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (activity_begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVipRenewGiftRsp.activityBeginTime cannot be set twice.');
					}
					++activity_begin_time$count;
					this.activityBeginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (activity_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVipRenewGiftRsp.activityEndTime cannot be set twice.');
					}
					++activity_end_time$count;
					this.activityEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVipRenewGiftRsp.price cannot be set twice.');
					}
					++price$count;
					this.price = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (days$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVipRenewGiftRsp.days cannot be set twice.');
					}
					++days$count;
					this.days = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (max_rebate_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVipRenewGiftRsp.maxRebateCount cannot be set twice.');
					}
					++max_rebate_count$count;
					this.maxRebateCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (rate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVipRenewGiftRsp.rate cannot be set twice.');
					}
					++rate$count;
					this.rate = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (available_rebate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVipRenewGiftRsp.availableRebate cannot be set twice.');
					}
					++available_rebate$count;
					this.availableRebate = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVipRenewGiftRsp.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 10:
					if (remainder_day$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVipRenewGiftRsp.remainderDay cannot be set twice.');
					}
					++remainder_day$count;
					this.remainderDay = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (vip3_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVipRenewGiftRsp.vip3Count cannot be set twice.');
					}
					++vip3_count$count;
					this.vip3Count = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (next_rebate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoVipRenewGiftRsp.nextRebate cannot be set twice.');
					}
					++next_rebate$count;
					this.nextRebate = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
