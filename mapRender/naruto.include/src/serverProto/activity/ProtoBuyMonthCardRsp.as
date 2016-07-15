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
	public  final class ProtoBuyMonthCardRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoBuyMonthCardRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const AWARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoBuyMonthCardRsp.award_status", "awardStatus", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_status$field:uint;

		private var hasField$0:uint = 0;

		public function clearAwardStatus():void {
			hasField$0 &= 0xfffffffe;
			award_status$field = new uint();
		}

		public function get hasAwardStatus():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set awardStatus(value:uint):void {
			hasField$0 |= 0x1;
			award_status$field = value;
		}

		public function get awardStatus():uint {
			return award_status$field;
		}

		/**
		 *  @private
		 */
		public static const MONTH_CARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoBuyMonthCardRsp.month_card_status", "monthCardStatus", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const MONTH_CARD_DAY_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoBuyMonthCardRsp.month_card_day_count", "monthCardDayCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var month_card_day_count$field:uint;

		public function clearMonthCardDayCount():void {
			hasField$0 &= 0xfffffffb;
			month_card_day_count$field = new uint();
		}

		public function get hasMonthCardDayCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set monthCardDayCount(value:uint):void {
			hasField$0 |= 0x4;
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
			if (hasAwardStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_status$field);
			}
			if (hasMonthCardStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, month_card_status$field);
			}
			if (hasMonthCardDayCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
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
			var award_status$count:uint = 0;
			var month_card_status$count:uint = 0;
			var month_card_day_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuyMonthCardRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (award_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuyMonthCardRsp.awardStatus cannot be set twice.');
					}
					++award_status$count;
					this.awardStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (month_card_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuyMonthCardRsp.monthCardStatus cannot be set twice.');
					}
					++month_card_status$count;
					this.monthCardStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (month_card_day_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBuyMonthCardRsp.monthCardDayCount cannot be set twice.');
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
