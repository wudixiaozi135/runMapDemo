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
	import serverProto.activity.ProtoNewYearNinjaExchange;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoNewYearNinjaQueryRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewYearNinjaQueryRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewYearNinjaQueryRsp.activity_end_time", "activityEndTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var activity_end_time$field:uint;

		private var hasField$0:uint = 0;

		public function clearActivityEndTime():void {
			hasField$0 &= 0xfffffffe;
			activity_end_time$field = new uint();
		}

		public function get hasActivityEndTime():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set activityEndTime(value:uint):void {
			hasField$0 |= 0x1;
			activity_end_time$field = value;
		}

		public function get activityEndTime():uint {
			return activity_end_time$field;
		}

		/**
		 *  @private
		 */
		public static const EXCHANGE_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewYearNinjaQueryRsp.exchange_end_time", "exchangeEndTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var exchange_end_time$field:uint;

		public function clearExchangeEndTime():void {
			hasField$0 &= 0xfffffffd;
			exchange_end_time$field = new uint();
		}

		public function get hasExchangeEndTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set exchangeEndTime(value:uint):void {
			hasField$0 |= 0x2;
			exchange_end_time$field = value;
		}

		public function get exchangeEndTime():uint {
			return exchange_end_time$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_ITEM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewYearNinjaQueryRsp.total_item", "totalItem", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_item$field:uint;

		public function clearTotalItem():void {
			hasField$0 &= 0xfffffffb;
			total_item$field = new uint();
		}

		public function get hasTotalItem():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set totalItem(value:uint):void {
			hasField$0 |= 0x4;
			total_item$field = value;
		}

		public function get totalItem():uint {
			return total_item$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewYearNinjaQueryRsp.total_score", "totalScore", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_score$field:uint;

		public function clearTotalScore():void {
			hasField$0 &= 0xfffffff7;
			total_score$field = new uint();
		}

		public function get hasTotalScore():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set totalScore(value:uint):void {
			hasField$0 |= 0x8;
			total_score$field = value;
		}

		public function get totalScore():uint {
			return total_score$field;
		}

		/**
		 *  @private
		 */
		public static const EXCHANGES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoNewYearNinjaQueryRsp.exchanges", "exchanges", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoNewYearNinjaExchange);

		[ArrayElementType("serverProto.activity.ProtoNewYearNinjaExchange")]
		public var exchanges:Array = [];

		/**
		 *  @private
		 */
		public static const FREE_REMIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoNewYearNinjaQueryRsp.free_remin_time", "freeReminTime", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var free_remin_time$field:uint;

		public function clearFreeReminTime():void {
			hasField$0 &= 0xffffffef;
			free_remin_time$field = new uint();
		}

		public function get hasFreeReminTime():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set freeReminTime(value:uint):void {
			hasField$0 |= 0x10;
			free_remin_time$field = value;
		}

		public function get freeReminTime():uint {
			return free_remin_time$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, ret$field);
			}
			if (hasActivityEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, activity_end_time$field);
			}
			if (hasExchangeEndTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, exchange_end_time$field);
			}
			if (hasTotalItem) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_item$field);
			}
			if (hasTotalScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, total_score$field);
			}
			for (var exchanges$index:uint = 0; exchanges$index < this.exchanges.length; ++exchanges$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.exchanges[exchanges$index]);
			}
			if (hasFreeReminTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, free_remin_time$field);
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
			var activity_end_time$count:uint = 0;
			var exchange_end_time$count:uint = 0;
			var total_item$count:uint = 0;
			var total_score$count:uint = 0;
			var free_remin_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNewYearNinjaQueryRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (activity_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNewYearNinjaQueryRsp.activityEndTime cannot be set twice.');
					}
					++activity_end_time$count;
					this.activityEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (exchange_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNewYearNinjaQueryRsp.exchangeEndTime cannot be set twice.');
					}
					++exchange_end_time$count;
					this.exchangeEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (total_item$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNewYearNinjaQueryRsp.totalItem cannot be set twice.');
					}
					++total_item$count;
					this.totalItem = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (total_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNewYearNinjaQueryRsp.totalScore cannot be set twice.');
					}
					++total_score$count;
					this.totalScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					this.exchanges.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoNewYearNinjaExchange()));
					break;
				case 7:
					if (free_remin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoNewYearNinjaQueryRsp.freeReminTime cannot be set twice.');
					}
					++free_remin_time$count;
					this.freeReminTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
