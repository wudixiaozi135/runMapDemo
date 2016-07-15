package serverProto.activity {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.activity.ProtoAwardList;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class MonthCardInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MONTH_CARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.MonthCardInfo.month_card_status", "monthCardStatus", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var month_card_status$field:uint;

		private var hasField$0:uint = 0;

		public function clearMonthCardStatus():void {
			hasField$0 &= 0xfffffffe;
			month_card_status$field = new uint();
		}

		public function get hasMonthCardStatus():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set monthCardStatus(value:uint):void {
			hasField$0 |= 0x1;
			month_card_status$field = value;
		}

		public function get monthCardStatus():uint {
			return month_card_status$field;
		}

		/**
		 *  @private
		 */
		public static const DAILY_AWARD_STATUS:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.MonthCardInfo.daily_award_status", "dailyAwardStatus", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var daily_award_status$field:uint;

		public function clearDailyAwardStatus():void {
			hasField$0 &= 0xfffffffd;
			daily_award_status$field = new uint();
		}

		public function get hasDailyAwardStatus():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set dailyAwardStatus(value:uint):void {
			hasField$0 |= 0x2;
			daily_award_status$field = value;
		}

		public function get dailyAwardStatus():uint {
			return daily_award_status$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_LIST:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.MonthCardInfo.award_list", "awardList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardList);

		private var award_list$field:serverProto.activity.ProtoAwardList;

		public function clearAwardList():void {
			award_list$field = null;
		}

		public function get hasAwardList():Boolean {
			return award_list$field != null;
		}

		public function set awardList(value:serverProto.activity.ProtoAwardList):void {
			award_list$field = value;
		}

		public function get awardList():serverProto.activity.ProtoAwardList {
			return award_list$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasMonthCardStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, month_card_status$field);
			}
			if (hasDailyAwardStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, daily_award_status$field);
			}
			if (hasAwardList) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, award_list$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var month_card_status$count:uint = 0;
			var daily_award_status$count:uint = 0;
			var award_list$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (month_card_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: MonthCardInfo.monthCardStatus cannot be set twice.');
					}
					++month_card_status$count;
					this.monthCardStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (daily_award_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: MonthCardInfo.dailyAwardStatus cannot be set twice.');
					}
					++daily_award_status$count;
					this.dailyAwardStatus = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (award_list$count != 0) {
						throw new flash.errors.IOError('Bad data format: MonthCardInfo.awardList cannot be set twice.');
					}
					++award_list$count;
					this.awardList = new serverProto.activity.ProtoAwardList();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.awardList);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
