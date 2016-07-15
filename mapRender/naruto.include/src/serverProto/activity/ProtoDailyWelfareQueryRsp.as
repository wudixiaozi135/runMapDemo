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
	import serverProto.activity.ProtoAwardPackageBox;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoDailyWelfareQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoDailyWelfareQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const VIP_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyWelfareQueryRsp.vip_level", "vipLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var vip_level$field:uint;

		private var hasField$0:uint = 0;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffffffe;
			vip_level$field = new uint();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set vipLevel(value:uint):void {
			hasField$0 |= 0x1;
			vip_level$field = value;
		}

		public function get vipLevel():uint {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoDailyWelfareQueryRsp.package_boxes", "packageBoxes", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var packageBoxes:Array = [];

		/**
		 *  @private
		 */
		public static const MONTH_CARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyWelfareQueryRsp.month_card_status", "monthCardStatus", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var month_card_status$field:uint;

		public function clearMonthCardStatus():void {
			hasField$0 &= 0xfffffffd;
			month_card_status$field = new uint();
		}

		public function get hasMonthCardStatus():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set monthCardStatus(value:uint):void {
			hasField$0 |= 0x2;
			month_card_status$field = value;
		}

		public function get monthCardStatus():uint {
			return month_card_status$field;
		}

		/**
		 *  @private
		 */
		public static const MONTH_CARD_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyWelfareQueryRsp.month_card_price", "monthCardPrice", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var month_card_price$field:uint;

		public function clearMonthCardPrice():void {
			hasField$0 &= 0xfffffffb;
			month_card_price$field = new uint();
		}

		public function get hasMonthCardPrice():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set monthCardPrice(value:uint):void {
			hasField$0 |= 0x4;
			month_card_price$field = value;
		}

		public function get monthCardPrice():uint {
			return month_card_price$field;
		}

		/**
		 *  @private
		 */
		public static const MONTH_CARD_AWARD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyWelfareQueryRsp.month_card_award", "monthCardAward", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var month_card_award$field:uint;

		public function clearMonthCardAward():void {
			hasField$0 &= 0xfffffff7;
			month_card_award$field = new uint();
		}

		public function get hasMonthCardAward():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set monthCardAward(value:uint):void {
			hasField$0 |= 0x8;
			month_card_award$field = value;
		}

		public function get monthCardAward():uint {
			return month_card_award$field;
		}

		/**
		 *  @private
		 */
		public static const MONTH_CARD_DAY_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoDailyWelfareQueryRsp.month_card_day_count", "monthCardDayCount", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var month_card_day_count$field:uint;

		public function clearMonthCardDayCount():void {
			hasField$0 &= 0xffffffef;
			month_card_day_count$field = new uint();
		}

		public function get hasMonthCardDayCount():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set monthCardDayCount(value:uint):void {
			hasField$0 |= 0x10;
			month_card_day_count$field = value;
		}

		public function get monthCardDayCount():uint {
			return month_card_day_count$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, vip_level$field);
			}
			for (var packageBoxes$index:uint = 0; packageBoxes$index < this.packageBoxes.length; ++packageBoxes$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.packageBoxes[packageBoxes$index]);
			}
			if (hasMonthCardStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, month_card_status$field);
			}
			if (hasMonthCardPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, month_card_price$field);
			}
			if (hasMonthCardAward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, month_card_award$field);
			}
			if (hasMonthCardDayCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, month_card_day_count$field);
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
			var vip_level$count:uint = 0;
			var month_card_status$count:uint = 0;
			var month_card_price$count:uint = 0;
			var month_card_award$count:uint = 0;
			var month_card_day_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyWelfareQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyWelfareQueryRsp.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					this.packageBoxes.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				case 4:
					if (month_card_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyWelfareQueryRsp.monthCardStatus cannot be set twice.');
					}
					++month_card_status$count;
					this.monthCardStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (month_card_price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyWelfareQueryRsp.monthCardPrice cannot be set twice.');
					}
					++month_card_price$count;
					this.monthCardPrice = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (month_card_award$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyWelfareQueryRsp.monthCardAward cannot be set twice.');
					}
					++month_card_award$count;
					this.monthCardAward = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (month_card_day_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDailyWelfareQueryRsp.monthCardDayCount cannot be set twice.');
					}
					++month_card_day_count$count;
					this.monthCardDayCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
