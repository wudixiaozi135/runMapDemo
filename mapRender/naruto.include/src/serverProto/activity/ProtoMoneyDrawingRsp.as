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
	import serverProto.activity.ProtoMoneyDrawingAwardInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoMoneyDrawingRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMoneyDrawingRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.activity_begin_time", "activityBeginTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.activity_end_time", "activityEndTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const AWARD_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.award_end_time", "awardEndTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var award_end_time$field:uint;

		public function clearAwardEndTime():void {
			hasField$0 &= 0xfffffffb;
			award_end_time$field = new uint();
		}

		public function get hasAwardEndTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set awardEndTime(value:uint):void {
			hasField$0 |= 0x4;
			award_end_time$field = value;
		}

		public function get awardEndTime():uint {
			return award_end_time$field;
		}

		/**
		 *  @private
		 */
		public static const CRITICAL_STRIKE_NUM:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.critical_strike_num", "criticalStrikeNum", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var criticalStrikeNum:Array = [];

		/**
		 *  @private
		 */
		public static const USED_MONEY_GOLD_INGOT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.used_money_gold_ingot", "usedMoneyGoldIngot", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var used_money_gold_ingot$field:uint;

		public function clearUsedMoneyGoldIngot():void {
			hasField$0 &= 0xfffffff7;
			used_money_gold_ingot$field = new uint();
		}

		public function get hasUsedMoneyGoldIngot():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set usedMoneyGoldIngot(value:uint):void {
			hasField$0 |= 0x8;
			used_money_gold_ingot$field = value;
		}

		public function get usedMoneyGoldIngot():uint {
			return used_money_gold_ingot$field;
		}

		/**
		 *  @private
		 */
		public static const GOT_MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.got_money", "gotMoney", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var got_money$field:uint;

		public function clearGotMoney():void {
			hasField$0 &= 0xffffffef;
			got_money$field = new uint();
		}

		public function get hasGotMoney():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set gotMoney(value:uint):void {
			hasField$0 |= 0x10;
			got_money$field = value;
		}

		public function get gotMoney():uint {
			return got_money$field;
		}

		/**
		 *  @private
		 */
		public static const MONEY_DRAWING_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMoneyDrawingRsp.money_drawing_times", "moneyDrawingTimes", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money_drawing_times$field:uint;

		public function clearMoneyDrawingTimes():void {
			hasField$0 &= 0xffffffdf;
			money_drawing_times$field = new uint();
		}

		public function get hasMoneyDrawingTimes():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set moneyDrawingTimes(value:uint):void {
			hasField$0 |= 0x20;
			money_drawing_times$field = value;
		}

		public function get moneyDrawingTimes():uint {
			return money_drawing_times$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMoneyDrawingRsp.award_info", "awardInfo", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoMoneyDrawingAwardInfo);

		[ArrayElementType("serverProto.activity.ProtoMoneyDrawingAwardInfo")]
		public var awardInfo:Array = [];

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
			if (hasAwardEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, award_end_time$field);
			}
			for (var criticalStrikeNum$index:uint = 0; criticalStrikeNum$index < this.criticalStrikeNum.length; ++criticalStrikeNum$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.criticalStrikeNum[criticalStrikeNum$index]);
			}
			if (hasUsedMoneyGoldIngot) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, used_money_gold_ingot$field);
			}
			if (hasGotMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, got_money$field);
			}
			if (hasMoneyDrawingTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, money_drawing_times$field);
			}
			for (var awardInfo$index:uint = 0; awardInfo$index < this.awardInfo.length; ++awardInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.awardInfo[awardInfo$index]);
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
			var award_end_time$count:uint = 0;
			var used_money_gold_ingot$count:uint = 0;
			var got_money$count:uint = 0;
			var money_drawing_times$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMoneyDrawingRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (activity_begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMoneyDrawingRsp.activityBeginTime cannot be set twice.');
					}
					++activity_begin_time$count;
					this.activityBeginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (activity_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMoneyDrawingRsp.activityEndTime cannot be set twice.');
					}
					++activity_end_time$count;
					this.activityEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (award_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMoneyDrawingRsp.awardEndTime cannot be set twice.');
					}
					++award_end_time$count;
					this.awardEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.criticalStrikeNum);
						break;
					}
					this.criticalStrikeNum.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 6:
					if (used_money_gold_ingot$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMoneyDrawingRsp.usedMoneyGoldIngot cannot be set twice.');
					}
					++used_money_gold_ingot$count;
					this.usedMoneyGoldIngot = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (got_money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMoneyDrawingRsp.gotMoney cannot be set twice.');
					}
					++got_money$count;
					this.gotMoney = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (money_drawing_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMoneyDrawingRsp.moneyDrawingTimes cannot be set twice.');
					}
					++money_drawing_times$count;
					this.moneyDrawingTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					this.awardInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoMoneyDrawingAwardInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
