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
	import serverProto.activity.ProtoAwardPackageBox;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoMysticChestRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMysticChestRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.begin_time", "beginTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.end_time", "endTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const PACKAGE_BOXES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMysticChestRsp.package_boxes", "packageBoxes", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoAwardPackageBox);

		[ArrayElementType("serverProto.activity.ProtoAwardPackageBox")]
		public var packageBoxes:Array = [];

		/**
		 *  @private
		 */
		public static const FINISH_TASK_COUNT:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.finish_task_count", "finishTaskCount", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var finishTaskCount:Array = [];

		/**
		 *  @private
		 */
		public static const KEY_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.key_num", "keyNum", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var key_num$field:uint;

		public function clearKeyNum():void {
			hasField$0 &= 0xfffffffb;
			key_num$field = new uint();
		}

		public function get hasKeyNum():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set keyNum(value:uint):void {
			hasField$0 |= 0x4;
			key_num$field = value;
		}

		public function get keyNum():uint {
			return key_num$field;
		}

		/**
		 *  @private
		 */
		public static const BUY_PRICE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.buy_price", "buyPrice", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buy_price$field:uint;

		public function clearBuyPrice():void {
			hasField$0 &= 0xfffffff7;
			buy_price$field = new uint();
		}

		public function get hasBuyPrice():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set buyPrice(value:uint):void {
			hasField$0 |= 0x8;
			buy_price$field = value;
		}

		public function get buyPrice():uint {
			return buy_price$field;
		}

		/**
		 *  @private
		 */
		public static const CUR_ROUND_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.cur_round_count", "curRoundCount", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var cur_round_count$field:uint;

		public function clearCurRoundCount():void {
			hasField$0 &= 0xffffffef;
			cur_round_count$field = new uint();
		}

		public function get hasCurRoundCount():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set curRoundCount(value:uint):void {
			hasField$0 |= 0x10;
			cur_round_count$field = value;
		}

		public function get curRoundCount():uint {
			return cur_round_count$field;
		}

		/**
		 *  @private
		 */
		public static const ALL_ROUND_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoMysticChestRsp.all_round_count", "allRoundCount", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var all_round_count$field:uint;

		public function clearAllRoundCount():void {
			hasField$0 &= 0xffffffdf;
			all_round_count$field = new uint();
		}

		public function get hasAllRoundCount():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set allRoundCount(value:uint):void {
			hasField$0 |= 0x20;
			all_round_count$field = value;
		}

		public function get allRoundCount():uint {
			return all_round_count$field;
		}

		/**
		 *  @private
		 */
		public static const AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoMysticChestRsp.award", "award", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var award:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasBeginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, begin_time$field);
			}
			if (hasEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, end_time$field);
			}
			for (var packageBoxes$index:uint = 0; packageBoxes$index < this.packageBoxes.length; ++packageBoxes$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.packageBoxes[packageBoxes$index]);
			}
			for (var finishTaskCount$index:uint = 0; finishTaskCount$index < this.finishTaskCount.length; ++finishTaskCount$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.finishTaskCount[finishTaskCount$index]);
			}
			if (hasKeyNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, key_num$field);
			}
			if (hasBuyPrice) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, buy_price$field);
			}
			if (hasCurRoundCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, cur_round_count$field);
			}
			if (hasAllRoundCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, all_round_count$field);
			}
			for (var award$index:uint = 0; award$index < this.award.length; ++award$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.award[award$index]);
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
			var key_num$count:uint = 0;
			var buy_price$count:uint = 0;
			var cur_round_count$count:uint = 0;
			var all_round_count$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMysticChestRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMysticChestRsp.beginTime cannot be set twice.');
					}
					++begin_time$count;
					this.beginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMysticChestRsp.endTime cannot be set twice.');
					}
					++end_time$count;
					this.endTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					this.packageBoxes.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoAwardPackageBox()));
					break;
				case 5:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.finishTaskCount);
						break;
					}
					this.finishTaskCount.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 6:
					if (key_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMysticChestRsp.keyNum cannot be set twice.');
					}
					++key_num$count;
					this.keyNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (buy_price$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMysticChestRsp.buyPrice cannot be set twice.');
					}
					++buy_price$count;
					this.buyPrice = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (cur_round_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMysticChestRsp.curRoundCount cannot be set twice.');
					}
					++cur_round_count$count;
					this.curRoundCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (all_round_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoMysticChestRsp.allRoundCount cannot be set twice.');
					}
					++all_round_count$count;
					this.allRoundCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					this.award.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
