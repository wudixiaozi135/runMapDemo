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
	import serverProto.inc.ProtoLuckyDog;
	import serverProto.activity.ProtoConsumeRank;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoOpenServiceLuckyWheelRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const AWARD_IN_POOL:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.award_in_pool", "awardInPool", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var awardInPool:Array = [];

		/**
		 *  @private
		 */
		public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.begin_time", "beginTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.end_time", "endTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const TOTAL_CONSUME_YB:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.total_consume_yb", "totalConsumeYb", (5 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.award", "award", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var award:Array = [];

		/**
		 *  @private
		 */
		public static const TOTAL_AWARD_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.total_award_num", "totalAwardNum", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_award_num$field:uint;

		public function clearTotalAwardNum():void {
			hasField$0 &= 0xfffffff7;
			total_award_num$field = new uint();
		}

		public function get hasTotalAwardNum():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set totalAwardNum(value:uint):void {
			hasField$0 |= 0x8;
			total_award_num$field = value;
		}

		public function get totalAwardNum():uint {
			return total_award_num$field;
		}

		/**
		 *  @private
		 */
		public static const CURR_AWARD_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.curr_award_num", "currAwardNum", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var curr_award_num$field:uint;

		public function clearCurrAwardNum():void {
			hasField$0 &= 0xffffffef;
			curr_award_num$field = new uint();
		}

		public function get hasCurrAwardNum():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set currAwardNum(value:uint):void {
			hasField$0 |= 0x10;
			curr_award_num$field = value;
		}

		public function get currAwardNum():uint {
			return curr_award_num$field;
		}

		/**
		 *  @private
		 */
		public static const CONSUME_RANKS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.consume_ranks", "consumeRanks", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoConsumeRank);

		[ArrayElementType("serverProto.activity.ProtoConsumeRank")]
		public var consumeRanks:Array = [];

		/**
		 *  @private
		 */
		public static const CONSUME_LOWER_LIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.consume_lower_limit", "consumeLowerLimit", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var consume_lower_limit$field:uint;

		public function clearConsumeLowerLimit():void {
			hasField$0 &= 0xffffffdf;
			consume_lower_limit$field = new uint();
		}

		public function get hasConsumeLowerLimit():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set consumeLowerLimit(value:uint):void {
			hasField$0 |= 0x20;
			consume_lower_limit$field = value;
		}

		public function get consumeLowerLimit():uint {
			return consume_lower_limit$field;
		}

		/**
		 *  @private
		 */
		public static const CONSUME_TRANSFER_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.consume_transfer_num", "consumeTransferNum", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var consume_transfer_num$field:uint;

		public function clearConsumeTransferNum():void {
			hasField$0 &= 0xffffffbf;
			consume_transfer_num$field = new uint();
		}

		public function get hasConsumeTransferNum():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set consumeTransferNum(value:uint):void {
			hasField$0 |= 0x40;
			consume_transfer_num$field = value;
		}

		public function get consumeTransferNum():uint {
			return consume_transfer_num$field;
		}

		/**
		 *  @private
		 */
		public static const LUCKY_DOG:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.lucky_dog", "luckyDog", (12 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoLuckyDog);

		[ArrayElementType("serverProto.inc.ProtoLuckyDog")]
		public var luckyDog:Array = [];

		/**
		 *  @private
		 */
		public static const DRAW_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.draw_num", "drawNum", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var draw_num$field:uint;

		public function clearDrawNum():void {
			hasField$0 &= 0xffffff7f;
			draw_num$field = new uint();
		}

		public function get hasDrawNum():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set drawNum(value:uint):void {
			hasField$0 |= 0x80;
			draw_num$field = value;
		}

		public function get drawNum():uint {
			return draw_num$field;
		}

		/**
		 *  @private
		 */
		public static const NEED_YB:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.need_yb", "needYb", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_yb$field:uint;

		public function clearNeedYb():void {
			hasField$0 &= 0xfffffeff;
			need_yb$field = new uint();
		}

		public function get hasNeedYb():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set needYb(value:uint):void {
			hasField$0 |= 0x100;
			need_yb$field = value;
		}

		public function get needYb():uint {
			return need_yb$field;
		}

		/**
		 *  @private
		 */
		public static const MY_RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.my_rank", "myRank", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var my_rank$field:uint;

		public function clearMyRank():void {
			hasField$0 &= 0xfffffdff;
			my_rank$field = new uint();
		}

		public function get hasMyRank():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set myRank(value:uint):void {
			hasField$0 |= 0x200;
			my_rank$field = value;
		}

		public function get myRank():uint {
			return my_rank$field;
		}

		/**
		 *  @private
		 */
		public static const QUALITY:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoOpenServiceLuckyWheelRsp.quality", "quality", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var quality:Array = [];

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
			for (var award$index:uint = 0; award$index < this.award.length; ++award$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.award[award$index]);
			}
			if (hasTotalAwardNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_award_num$field);
			}
			if (hasCurrAwardNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, curr_award_num$field);
			}
			for (var consumeRanks$index:uint = 0; consumeRanks$index < this.consumeRanks.length; ++consumeRanks$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.consumeRanks[consumeRanks$index]);
			}
			if (hasConsumeLowerLimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, consume_lower_limit$field);
			}
			if (hasConsumeTransferNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, consume_transfer_num$field);
			}
			for (var luckyDog$index:uint = 0; luckyDog$index < this.luckyDog.length; ++luckyDog$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.luckyDog[luckyDog$index]);
			}
			if (hasDrawNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, draw_num$field);
			}
			if (hasNeedYb) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, need_yb$field);
			}
			if (hasMyRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, my_rank$field);
			}
			for (var quality$index:uint = 0; quality$index < this.quality.length; ++quality$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.quality[quality$index]);
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
			var total_award_num$count:uint = 0;
			var curr_award_num$count:uint = 0;
			var consume_lower_limit$count:uint = 0;
			var consume_transfer_num$count:uint = 0;
			var draw_num$count:uint = 0;
			var need_yb$count:uint = 0;
			var my_rank$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceLuckyWheelRsp.ret cannot be set twice.');
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
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceLuckyWheelRsp.beginTime cannot be set twice.');
					}
					++begin_time$count;
					this.beginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceLuckyWheelRsp.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (total_consume_yb$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceLuckyWheelRsp.totalConsumeYb cannot be set twice.');
					}
					++total_consume_yb$count;
					this.totalConsumeYb = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					this.award.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 7:
					if (total_award_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceLuckyWheelRsp.totalAwardNum cannot be set twice.');
					}
					++total_award_num$count;
					this.totalAwardNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (curr_award_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceLuckyWheelRsp.currAwardNum cannot be set twice.');
					}
					++curr_award_num$count;
					this.currAwardNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					this.consumeRanks.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoConsumeRank()));
					break;
				case 10:
					if (consume_lower_limit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceLuckyWheelRsp.consumeLowerLimit cannot be set twice.');
					}
					++consume_lower_limit$count;
					this.consumeLowerLimit = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (consume_transfer_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceLuckyWheelRsp.consumeTransferNum cannot be set twice.');
					}
					++consume_transfer_num$count;
					this.consumeTransferNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					this.luckyDog.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoLuckyDog()));
					break;
				case 13:
					if (draw_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceLuckyWheelRsp.drawNum cannot be set twice.');
					}
					++draw_num$count;
					this.drawNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 14:
					if (need_yb$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceLuckyWheelRsp.needYb cannot be set twice.');
					}
					++need_yb$count;
					this.needYb = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 15:
					if (my_rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenServiceLuckyWheelRsp.myRank cannot be set twice.');
					}
					++my_rank$count;
					this.myRank = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 16:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.quality);
						break;
					}
					this.quality.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
