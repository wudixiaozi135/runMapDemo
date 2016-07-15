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
	import serverProto.activity.ProtoZongziExchange;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoZongziRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoZongziRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

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
		public static const ACTIVITY_BEGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.activity_begin_time", "activityBeginTime", (2 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const ACTIVITY_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.activity_end_time", "activityEndTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const EXCHANGE_END_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.exchange_end_time", "exchangeEndTime", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const CONSUME_GOLD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.consume_gold", "consumeGold", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var consume_gold$field:uint;

		public function clearConsumeGold():void {
			hasField$0 &= 0xfffffff7;
			consume_gold$field = new uint();
		}

		public function get hasConsumeGold():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set consumeGold(value:uint):void {
			hasField$0 |= 0x8;
			consume_gold$field = value;
		}

		public function get consumeGold():uint {
			return consume_gold$field;
		}

		/**
		 *  @private
		 */
		public static const RICE_ZONGZI_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.rice_zongzi_count", "riceZongziCount", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rice_zongzi_count$field:uint;

		public function clearRiceZongziCount():void {
			hasField$0 &= 0xffffffef;
			rice_zongzi_count$field = new uint();
		}

		public function get hasRiceZongziCount():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set riceZongziCount(value:uint):void {
			hasField$0 |= 0x10;
			rice_zongzi_count$field = value;
		}

		public function get riceZongziCount():uint {
			return rice_zongzi_count$field;
		}

		/**
		 *  @private
		 */
		public static const MEAT_ZONGZI_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.meat_zongzi_count", "meatZongziCount", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var meat_zongzi_count$field:uint;

		public function clearMeatZongziCount():void {
			hasField$0 &= 0xffffffdf;
			meat_zongzi_count$field = new uint();
		}

		public function get hasMeatZongziCount():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set meatZongziCount(value:uint):void {
			hasField$0 |= 0x20;
			meat_zongzi_count$field = value;
		}

		public function get meatZongziCount():uint {
			return meat_zongzi_count$field;
		}

		/**
		 *  @private
		 */
		public static const FREE_REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.free_remain_time", "freeRemainTime", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var free_remain_time$field:uint;

		public function clearFreeRemainTime():void {
			hasField$0 &= 0xffffffbf;
			free_remain_time$field = new uint();
		}

		public function get hasFreeRemainTime():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set freeRemainTime(value:uint):void {
			hasField$0 |= 0x40;
			free_remain_time$field = value;
		}

		public function get freeRemainTime():uint {
			return free_remain_time$field;
		}

		/**
		 *  @private
		 */
		public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.activity.ProtoZongziRsp.score", "score", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var score$field:uint;

		public function clearScore():void {
			hasField$0 &= 0xffffff7f;
			score$field = new uint();
		}

		public function get hasScore():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set score(value:uint):void {
			hasField$0 |= 0x80;
			score$field = value;
		}

		public function get score():uint {
			return score$field;
		}

		/**
		 *  @private
		 */
		public static const EXCHANGES:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.activity.ProtoZongziRsp.exchanges", "exchanges", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.activity.ProtoZongziExchange);

		[ArrayElementType("serverProto.activity.ProtoZongziExchange")]
		public var exchanges:Array = [];

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
			if (hasConsumeGold) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, consume_gold$field);
			}
			if (hasRiceZongziCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, rice_zongzi_count$field);
			}
			if (hasMeatZongziCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, meat_zongzi_count$field);
			}
			if (hasFreeRemainTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, free_remain_time$field);
			}
			if (hasScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, score$field);
			}
			for (var exchanges$index:uint = 0; exchanges$index < this.exchanges.length; ++exchanges$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.exchanges[exchanges$index]);
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
			var consume_gold$count:uint = 0;
			var rice_zongzi_count$count:uint = 0;
			var meat_zongzi_count$count:uint = 0;
			var free_remain_time$count:uint = 0;
			var score$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZongziRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (activity_begin_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZongziRsp.activityBeginTime cannot be set twice.');
					}
					++activity_begin_time$count;
					this.activityBeginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (activity_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZongziRsp.activityEndTime cannot be set twice.');
					}
					++activity_end_time$count;
					this.activityEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (exchange_end_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZongziRsp.exchangeEndTime cannot be set twice.');
					}
					++exchange_end_time$count;
					this.exchangeEndTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (consume_gold$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZongziRsp.consumeGold cannot be set twice.');
					}
					++consume_gold$count;
					this.consumeGold = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (rice_zongzi_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZongziRsp.riceZongziCount cannot be set twice.');
					}
					++rice_zongzi_count$count;
					this.riceZongziCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (meat_zongzi_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZongziRsp.meatZongziCount cannot be set twice.');
					}
					++meat_zongzi_count$count;
					this.meatZongziCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (free_remain_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZongziRsp.freeRemainTime cannot be set twice.');
					}
					++free_remain_time$count;
					this.freeRemainTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoZongziRsp.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					this.exchanges.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.activity.ProtoZongziExchange()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
