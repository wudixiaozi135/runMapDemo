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
	import serverProto.activity.ProtoLuckComeExchangeInfo;
	import serverProto.inc.ProtoItemInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoLuckComeRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuckComeRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.activity_begin_time", "activityBeginTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.activity_end_time", "activityEndTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const EXCHANGE_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.exchange_end_time", "exchangeEndTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var exchange_end_time$field:uint;

		public function clearExchangeEndTime():void {
			hasField$0 &= 0xfffffffb;
			exchange_end_time$field = new uint();
		}

		public function get hasExchangeEndTime():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set exchangeEndTime(value:uint):void {
			hasField$0 |= 0x4;
			exchange_end_time$field = value;
		}

		public function get exchangeEndTime():uint {
			return exchange_end_time$field;
		}

		/**
		 *  @private
		 */
		public static const FREE_OPEN_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.free_open_num", "freeOpenNum", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var free_open_num$field:uint;

		public function clearFreeOpenNum():void {
			hasField$0 &= 0xfffffff7;
			free_open_num$field = new uint();
		}

		public function get hasFreeOpenNum():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set freeOpenNum(value:uint):void {
			hasField$0 |= 0x8;
			free_open_num$field = value;
		}

		public function get freeOpenNum():uint {
			return free_open_num$field;
		}

		/**
		 *  @private
		 */
		public static const STAR:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.star", "star", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var star$field:uint;

		public function clearStar():void {
			hasField$0 &= 0xffffffef;
			star$field = new uint();
		}

		public function get hasStar():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set star(value:uint):void {
			hasField$0 |= 0x10;
			star$field = value;
		}

		public function get star():uint {
			return star$field;
		}

		/**
		 *  @private
		 */
		public static const ROULETTE_ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuckComeRsp.roulette_item", "rouletteItem", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var rouletteItem:Array = [];

		/**
		 *  @private
		 */
		public static const GOT_ITEM:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuckComeRsp.got_item", "gotItem", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var gotItem:Array = [];

		/**
		 *  @private
		 */
		public static const HISTORY_AWARD:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuckComeRsp.history_award", "historyAward", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoItemInfo);

		[ArrayElementType("serverProto.inc.ProtoItemInfo")]
		public var historyAward:Array = [];

		/**
		 *  @private
		 */
		public static const EXCHANGES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoLuckComeRsp.exchanges", "exchanges", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoLuckComeExchangeInfo);

		[ArrayElementType("serverProto.activity.ProtoLuckComeExchangeInfo")]
		public var exchanges:Array = [];

		/**
		 *  @private
		 */
		public static const DAILY_OWN_OPEN_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.daily_own_open_num", "dailyOwnOpenNum", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var daily_own_open_num$field:uint;

		public function clearDailyOwnOpenNum():void {
			hasField$0 &= 0xffffffdf;
			daily_own_open_num$field = new uint();
		}

		public function get hasDailyOwnOpenNum():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set dailyOwnOpenNum(value:uint):void {
			hasField$0 |= 0x20;
			daily_own_open_num$field = value;
		}

		public function get dailyOwnOpenNum():uint {
			return daily_own_open_num$field;
		}

		/**
		 *  @private
		 */
		public static const DAILY_USED_OPEN_NUM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoLuckComeRsp.daily_used_open_num", "dailyUsedOpenNum", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var daily_used_open_num$field:uint;

		public function clearDailyUsedOpenNum():void {
			hasField$0 &= 0xffffffbf;
			daily_used_open_num$field = new uint();
		}

		public function get hasDailyUsedOpenNum():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set dailyUsedOpenNum(value:uint):void {
			hasField$0 |= 0x40;
			daily_used_open_num$field = value;
		}

		public function get dailyUsedOpenNum():uint {
			return daily_used_open_num$field;
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
			if (hasExchangeEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, exchange_end_time$field);
			}
			if (hasFreeOpenNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, free_open_num$field);
			}
			if (hasStar) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, star$field);
			}
			for (var rouletteItem$index:uint = 0; rouletteItem$index < this.rouletteItem.length; ++rouletteItem$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.rouletteItem[rouletteItem$index]);
			}
			for (var gotItem$index:uint = 0; gotItem$index < this.gotItem.length; ++gotItem$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.gotItem[gotItem$index]);
			}
			for (var historyAward$index:uint = 0; historyAward$index < this.historyAward.length; ++historyAward$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.historyAward[historyAward$index]);
			}
			for (var exchanges$index:uint = 0; exchanges$index < this.exchanges.length; ++exchanges$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.exchanges[exchanges$index]);
			}
			if (hasDailyOwnOpenNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, daily_own_open_num$field);
			}
			if (hasDailyUsedOpenNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, daily_used_open_num$field);
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
			var exchange_end_time$count:uint = 0;
			var free_open_num$count:uint = 0;
			var star$count:uint = 0;
			var daily_own_open_num$count:uint = 0;
			var daily_used_open_num$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckComeRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (activity_begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckComeRsp.activityBeginTime cannot be set twice.');
					}
					++activity_begin_time$count;
					this.activityBeginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (activity_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckComeRsp.activityEndTime cannot be set twice.');
					}
					++activity_end_time$count;
					this.activityEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (exchange_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckComeRsp.exchangeEndTime cannot be set twice.');
					}
					++exchange_end_time$count;
					this.exchangeEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (free_open_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckComeRsp.freeOpenNum cannot be set twice.');
					}
					++free_open_num$count;
					this.freeOpenNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (star$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckComeRsp.star cannot be set twice.');
					}
					++star$count;
					this.star = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					this.rouletteItem.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 8:
					this.gotItem.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 9:
					this.historyAward.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoItemInfo()));
					break;
				case 10:
					this.exchanges.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoLuckComeExchangeInfo()));
					break;
				case 11:
					if (daily_own_open_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckComeRsp.dailyOwnOpenNum cannot be set twice.');
					}
					++daily_own_open_num$count;
					this.dailyOwnOpenNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (daily_used_open_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoLuckComeRsp.dailyUsedOpenNum cannot be set twice.');
					}
					++daily_used_open_num$count;
					this.dailyUsedOpenNum = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
