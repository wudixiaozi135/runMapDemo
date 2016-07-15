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
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNormalLuckyWheelRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNormalLuckyWheelRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const AWARD_IN_POOL:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNormalLuckyWheelRsp.award_in_pool", "awardInPool", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var awardInPool:Array = [];

		/**
		 *  @private
		 */
		public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNormalLuckyWheelRsp.begin_time", "beginTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var begin_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearBeginTime():void {
			hasField$0 &= 0xfffffffe;
			begin_time$field = new uint();
		}

		public function get hasBeginTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set beginTime(value:uint):void {
			hasField$0 |= 0x1;
			begin_time$field = value;
		}

		public function get beginTime():uint {
			return begin_time$field;
		}

		/**
		 *  @private
		 */
		public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNormalLuckyWheelRsp.end_time", "endTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var end_time$field:uint;

		public function clearEndTime():void {
			hasField$0 &= 0xfffffffd;
			end_time$field = new uint();
		}

		public function get hasEndTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set endTime(value:uint):void {
			hasField$0 |= 0x2;
			end_time$field = value;
		}

		public function get endTime():uint {
			return end_time$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_CONSUME_YB:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNormalLuckyWheelRsp.total_consume_yb", "totalConsumeYb", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_consume_yb$field:uint;

		public function clearTotalConsumeYb():void {
			hasField$0 &= 0xfffffffb;
			total_consume_yb$field = new uint();
		}

		public function get hasTotalConsumeYb():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set totalConsumeYb(value:uint):void {
			hasField$0 |= 0x4;
			total_consume_yb$field = value;
		}

		public function get totalConsumeYb():uint {
			return total_consume_yb$field;
		}

		/**
		 *  @private
		 */
		public static const REMAINING_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNormalLuckyWheelRsp.remaining_score", "remainingScore", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remaining_score$field:uint;

		public function clearRemainingScore():void {
			hasField$0 &= 0xfffffff7;
			remaining_score$field = new uint();
		}

		public function get hasRemainingScore():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set remainingScore(value:uint):void {
			hasField$0 |= 0x8;
			remaining_score$field = value;
		}

		public function get remainingScore():uint {
			return remaining_score$field;
		}

		/**
		 *  @private
		 */
		public static const DRAW_CONSUME_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNormalLuckyWheelRsp.draw_consume_score", "drawConsumeScore", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var draw_consume_score$field:uint;

		public function clearDrawConsumeScore():void {
			hasField$0 &= 0xffffffef;
			draw_consume_score$field = new uint();
		}

		public function get hasDrawConsumeScore():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set drawConsumeScore(value:uint):void {
			hasField$0 |= 0x10;
			draw_consume_score$field = value;
		}

		public function get drawConsumeScore():uint {
			return draw_consume_score$field;
		}

		/**
		 *  @private
		 */
		public static const CONSUME_GET_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNormalLuckyWheelRsp.consume_get_score", "consumeGetScore", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var consume_get_score$field:uint;

		public function clearConsumeGetScore():void {
			hasField$0 &= 0xffffffdf;
			consume_get_score$field = new uint();
		}

		public function get hasConsumeGetScore():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set consumeGetScore(value:uint):void {
			hasField$0 |= 0x20;
			consume_get_score$field = value;
		}

		public function get consumeGetScore():uint {
			return consume_get_score$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNormalLuckyWheelRsp.award", "award", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		private var award$field:serverProto.inc.ProtoItemInfo;

		public function clearAward():void {
			award$field = null;
		}

		public function get hasAward():Boolean {
			return award$field != null;
		}

		public function set award(value:serverProto.inc.ProtoItemInfo):void {
			award$field = value;
		}

		public function get award():serverProto.inc.ProtoItemInfo {
			return award$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_AWARD_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNormalLuckyWheelRsp.total_award_num", "totalAwardNum", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_award_num$field:uint;

		public function clearTotalAwardNum():void {
			hasField$0 &= 0xffffffbf;
			total_award_num$field = new uint();
		}

		public function get hasTotalAwardNum():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set totalAwardNum(value:uint):void {
			hasField$0 |= 0x40;
			total_award_num$field = value;
		}

		public function get totalAwardNum():uint {
			return total_award_num$field;
		}

		/**
		 *  @private
		 */
		public static const CURR_AWARD_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNormalLuckyWheelRsp.curr_award_num", "currAwardNum", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var curr_award_num$field:uint;

		public function clearCurrAwardNum():void {
			hasField$0 &= 0xffffff7f;
			curr_award_num$field = new uint();
		}

		public function get hasCurrAwardNum():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set currAwardNum(value:uint):void {
			hasField$0 |= 0x80;
			curr_award_num$field = value;
		}

		public function get currAwardNum():uint {
			return curr_award_num$field;
		}

		/**
		 *  @private
		 */
		public static const CONSUME_LOWER_LIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNormalLuckyWheelRsp.consume_lower_limit", "consumeLowerLimit", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var consume_lower_limit$field:uint;

		public function clearConsumeLowerLimit():void {
			hasField$0 &= 0xfffffeff;
			consume_lower_limit$field = new uint();
		}

		public function get hasConsumeLowerLimit():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set consumeLowerLimit(value:uint):void {
			hasField$0 |= 0x100;
			consume_lower_limit$field = value;
		}

		public function get consumeLowerLimit():uint {
			return consume_lower_limit$field;
		}

		/**
		 *  @private
		 */
		public static const CONSUME_TRANSFER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNormalLuckyWheelRsp.consume_transfer_num", "consumeTransferNum", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var consume_transfer_num$field:uint;

		public function clearConsumeTransferNum():void {
			hasField$0 &= 0xfffffdff;
			consume_transfer_num$field = new uint();
		}

		public function get hasConsumeTransferNum():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set consumeTransferNum(value:uint):void {
			hasField$0 |= 0x200;
			consume_transfer_num$field = value;
		}

		public function get consumeTransferNum():uint {
			return consume_transfer_num$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			for (var awardInPool$index:uint = 0; awardInPool$index < this.awardInPool.length; ++awardInPool$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.awardInPool[awardInPool$index]);
			}
			if (hasBeginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, begin_time$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, end_time$field);
			}
			if (hasTotalConsumeYb) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_consume_yb$field);
			}
			if (hasRemainingScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remaining_score$field);
			}
			if (hasDrawConsumeScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, draw_consume_score$field);
			}
			if (hasConsumeGetScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, consume_get_score$field);
			}
			if (hasAward) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, award$field);
			}
			if (hasTotalAwardNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_award_num$field);
			}
			if (hasCurrAwardNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, curr_award_num$field);
			}
			if (hasConsumeLowerLimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, consume_lower_limit$field);
			}
			if (hasConsumeTransferNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, consume_transfer_num$field);
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
			var begin_time$count:uint = 0;
			var end_time$count:uint = 0;
			var total_consume_yb$count:uint = 0;
			var remaining_score$count:uint = 0;
			var draw_consume_score$count:uint = 0;
			var consume_get_score$count:uint = 0;
			var award$count:uint = 0;
			var total_award_num$count:uint = 0;
			var curr_award_num$count:uint = 0;
			var consume_lower_limit$count:uint = 0;
			var consume_transfer_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalLuckyWheelRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					this.awardInPool.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 3:
					if (begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalLuckyWheelRsp.beginTime cannot be set twice.');
					}
					++begin_time$count;
					this.beginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalLuckyWheelRsp.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (total_consume_yb$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalLuckyWheelRsp.totalConsumeYb cannot be set twice.');
					}
					++total_consume_yb$count;
					this.totalConsumeYb = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (remaining_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalLuckyWheelRsp.remainingScore cannot be set twice.');
					}
					++remaining_score$count;
					this.remainingScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (draw_consume_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalLuckyWheelRsp.drawConsumeScore cannot be set twice.');
					}
					++draw_consume_score$count;
					this.drawConsumeScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (consume_get_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalLuckyWheelRsp.consumeGetScore cannot be set twice.');
					}
					++consume_get_score$count;
					this.consumeGetScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (award$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalLuckyWheelRsp.award cannot be set twice.');
					}
					++award$count;
					this.award = new serverProto.inc.ProtoItemInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.award);
					break;
				case 10:
					if (total_award_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalLuckyWheelRsp.totalAwardNum cannot be set twice.');
					}
					++total_award_num$count;
					this.totalAwardNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (curr_award_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalLuckyWheelRsp.currAwardNum cannot be set twice.');
					}
					++curr_award_num$count;
					this.currAwardNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (consume_lower_limit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalLuckyWheelRsp.consumeLowerLimit cannot be set twice.');
					}
					++consume_lower_limit$count;
					this.consumeLowerLimit = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 13:
					if (consume_transfer_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNormalLuckyWheelRsp.consumeTransferNum cannot be set twice.');
					}
					++consume_transfer_num$count;
					this.consumeTransferNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
