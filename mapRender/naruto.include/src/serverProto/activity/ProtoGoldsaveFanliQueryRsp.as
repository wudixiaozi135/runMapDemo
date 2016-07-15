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
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGoldsaveFanliQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoGoldsaveFanliQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliQueryRsp.end_time", "endTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var end_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearEndTime():void {
			hasField$0 &= 0xfffffffe;
			end_time$field = new uint();
		}

		public function get hasEndTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set endTime(value:uint):void {
			hasField$0 |= 0x1;
			end_time$field = value;
		}

		public function get endTime():uint {
			return end_time$field;
		}

		/**
		 *  @private
		 */
		public static const LIMIT_TOTAL_COUPON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliQueryRsp.limit_total_coupon", "limitTotalCoupon", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var limit_total_coupon$field:uint;

		public function clearLimitTotalCoupon():void {
			hasField$0 &= 0xfffffffd;
			limit_total_coupon$field = new uint();
		}

		public function get hasLimitTotalCoupon():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set limitTotalCoupon(value:uint):void {
			hasField$0 |= 0x2;
			limit_total_coupon$field = value;
		}

		public function get limitTotalCoupon():uint {
			return limit_total_coupon$field;
		}

		/**
		 *  @private
		 */
		public static const RATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliQueryRsp.rate", "rate", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rate$field:uint;

		public function clearRate():void {
			hasField$0 &= 0xfffffffb;
			rate$field = new uint();
		}

		public function get hasRate():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set rate(value:uint):void {
			hasField$0 |= 0x4;
			rate$field = value;
		}

		public function get rate():uint {
			return rate$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_COUPON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliQueryRsp.award_coupon", "awardCoupon", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_coupon$field:uint;

		public function clearAwardCoupon():void {
			hasField$0 &= 0xfffffff7;
			award_coupon$field = new uint();
		}

		public function get hasAwardCoupon():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set awardCoupon(value:uint):void {
			hasField$0 |= 0x8;
			award_coupon$field = value;
		}

		public function get awardCoupon():uint {
			return award_coupon$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIN_COUPON:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoGoldsaveFanliQueryRsp.remain_coupon", "remainCoupon", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_coupon$field:uint;

		public function clearRemainCoupon():void {
			hasField$0 &= 0xffffffef;
			remain_coupon$field = new uint();
		}

		public function get hasRemainCoupon():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set remainCoupon(value:uint):void {
			hasField$0 |= 0x10;
			remain_coupon$field = value;
		}

		public function get remainCoupon():uint {
			return remain_coupon$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, end_time$field);
			}
			if (hasLimitTotalCoupon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, limit_total_coupon$field);
			}
			if (hasRate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, rate$field);
			}
			if (hasAwardCoupon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_coupon$field);
			}
			if (hasRemainCoupon) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_coupon$field);
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
			var end_time$count:uint = 0;
			var limit_total_coupon$count:uint = 0;
			var rate$count:uint = 0;
			var award_coupon$count:uint = 0;
			var remain_coupon$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGoldsaveFanliQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGoldsaveFanliQueryRsp.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (limit_total_coupon$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGoldsaveFanliQueryRsp.limitTotalCoupon cannot be set twice.');
					}
					++limit_total_coupon$count;
					this.limitTotalCoupon = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (rate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGoldsaveFanliQueryRsp.rate cannot be set twice.');
					}
					++rate$count;
					this.rate = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (award_coupon$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGoldsaveFanliQueryRsp.awardCoupon cannot be set twice.');
					}
					++award_coupon$count;
					this.awardCoupon = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (remain_coupon$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGoldsaveFanliQueryRsp.remainCoupon cannot be set twice.');
					}
					++remain_coupon$count;
					this.remainCoupon = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
