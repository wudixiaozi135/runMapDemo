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
	import serverProto.activity.ProtoJizipaiExchange;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoJizipaiRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoJizipaiRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoJizipaiRsp.activity_end_time", "activityEndTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const EXCHANGE_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoJizipaiRsp.exchange_end_time", "exchangeEndTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const TOTAL_ITEM:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoJizipaiRsp.total_item", "totalItem", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const JIZIPAI_SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoJizipaiRsp.jizipai_score", "jizipaiScore", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var jizipai_score$field:uint;

		public function clearJizipaiScore():void {
			hasField$0 &= 0xfffffff7;
			jizipai_score$field = new uint();
		}

		public function get hasJizipaiScore():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set jizipaiScore(value:uint):void {
			hasField$0 |= 0x8;
			jizipai_score$field = value;
		}

		public function get jizipaiScore():uint {
			return jizipai_score$field;
		}

		/**
		 *  @private
		 */
		public static const JIZIPAI_NUM:RepeatedFieldDescriptor$TYPE_UINT32 = new RepeatedFieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoJizipaiRsp.jizipai_num", "jizipaiNum", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("uint")]
		public var jizipaiNum:Array = [];

		/**
		 *  @private
		 */
		public static const EXCHANGES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoJizipaiRsp.exchanges", "exchanges", (7 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoJizipaiExchange);

		[ArrayElementType("serverProto.activity.ProtoJizipaiExchange")]
		public var exchanges:Array = [];

		/**
		 *  @private
		 */
		public static const FREE_REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoJizipaiRsp.free_remain_time", "freeRemainTime", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var free_remain_time$field:uint;

		public function clearFreeRemainTime():void {
			hasField$0 &= 0xffffffef;
			free_remain_time$field = new uint();
		}

		public function get hasFreeRemainTime():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set freeRemainTime(value:uint):void {
			hasField$0 |= 0x10;
			free_remain_time$field = value;
		}

		public function get freeRemainTime():uint {
			return free_remain_time$field;
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
			if (hasJizipaiScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, jizipai_score$field);
			}
			for (var jizipaiNum$index:uint = 0; jizipaiNum$index < this.jizipaiNum.length; ++jizipaiNum$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.jizipaiNum[jizipaiNum$index]);
			}
			for (var exchanges$index:uint = 0; exchanges$index < this.exchanges.length; ++exchanges$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.exchanges[exchanges$index]);
			}
			if (hasFreeRemainTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, free_remain_time$field);
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
			var jizipai_score$count:uint = 0;
			var free_remain_time$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoJizipaiRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (activity_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoJizipaiRsp.activityEndTime cannot be set twice.');
					}
					++activity_end_time$count;
					this.activityEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (exchange_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoJizipaiRsp.exchangeEndTime cannot be set twice.');
					}
					++exchange_end_time$count;
					this.exchangeEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (total_item$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoJizipaiRsp.totalItem cannot be set twice.');
					}
					++total_item$count;
					this.totalItem = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (jizipai_score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoJizipaiRsp.jizipaiScore cannot be set twice.');
					}
					++jizipai_score$count;
					this.jizipaiScore = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_UINT32, this.jizipaiNum);
						break;
					}
					this.jizipaiNum.push(com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input));
					break;
				case 7:
					this.exchanges.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoJizipaiExchange()));
					break;
				case 8:
					if (free_remain_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoJizipaiRsp.freeRemainTime cannot be set twice.');
					}
					++free_remain_time$count;
					this.freeRemainTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
