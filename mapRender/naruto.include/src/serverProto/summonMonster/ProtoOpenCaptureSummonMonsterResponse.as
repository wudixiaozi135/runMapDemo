package serverProto.summonMonster {
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
	public  final class ProtoOpenCaptureSummonMonsterResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.summonMonster.ProtoOpenCaptureSummonMonsterResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const OPEN_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoOpenCaptureSummonMonsterResponse.open_level", "openLevel", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_level$field:int;

		private var hasField$0:uint = 0;

		public function clearOpenLevel():void {
			hasField$0 &= 0xfffffffe;
			open_level$field = new int();
		}

		public function get hasOpenLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set openLevel(value:int):void {
			hasField$0 |= 0x1;
			open_level$field = value;
		}

		public function get openLevel():int {
			return open_level$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_TODAY_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoOpenCaptureSummonMonsterResponse.total_today_times", "totalTodayTimes", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_today_times$field:int;

		public function clearTotalTodayTimes():void {
			hasField$0 &= 0xfffffffd;
			total_today_times$field = new int();
		}

		public function get hasTotalTodayTimes():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set totalTodayTimes(value:int):void {
			hasField$0 |= 0x2;
			total_today_times$field = value;
		}

		public function get totalTodayTimes():int {
			return total_today_times$field;
		}

		/**
		 *  @private
		 */
		public static const REMAINDER_TODAY_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoOpenCaptureSummonMonsterResponse.remainder_today_times", "remainderTodayTimes", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remainder_today_times$field:int;

		public function clearRemainderTodayTimes():void {
			hasField$0 &= 0xfffffffb;
			remainder_today_times$field = new int();
		}

		public function get hasRemainderTodayTimes():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set remainderTodayTimes(value:int):void {
			hasField$0 |= 0x4;
			remainder_today_times$field = value;
		}

		public function get remainderTodayTimes():int {
			return remainder_today_times$field;
		}

		/**
		 *  @private
		 */
		public static const TOTAL_CAPTURE_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoOpenCaptureSummonMonsterResponse.total_capture_times", "totalCaptureTimes", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var total_capture_times$field:int;

		public function clearTotalCaptureTimes():void {
			hasField$0 &= 0xfffffff7;
			total_capture_times$field = new int();
		}

		public function get hasTotalCaptureTimes():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set totalCaptureTimes(value:int):void {
			hasField$0 |= 0x8;
			total_capture_times$field = value;
		}

		public function get totalCaptureTimes():int {
			return total_capture_times$field;
		}

		/**
		 *  @private
		 */
		public static const REMAINDER_CAPTURE_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.summonMonster.ProtoOpenCaptureSummonMonsterResponse.remainder_capture_times", "remainderCaptureTimes", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remainder_capture_times$field:int;

		public function clearRemainderCaptureTimes():void {
			hasField$0 &= 0xffffffef;
			remainder_capture_times$field = new int();
		}

		public function get hasRemainderCaptureTimes():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set remainderCaptureTimes(value:int):void {
			hasField$0 |= 0x10;
			remainder_capture_times$field = value;
		}

		public function get remainderCaptureTimes():int {
			return remainder_capture_times$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, open_level$field);
			}
			if (hasTotalTodayTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, total_today_times$field);
			}
			if (hasRemainderTodayTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, remainder_today_times$field);
			}
			if (hasTotalCaptureTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, total_capture_times$field);
			}
			if (hasRemainderCaptureTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, remainder_capture_times$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var open_level$count:uint = 0;
			var total_today_times$count:uint = 0;
			var remainder_today_times$count:uint = 0;
			var total_capture_times$count:uint = 0;
			var remainder_capture_times$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenCaptureSummonMonsterResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenCaptureSummonMonsterResponse.openLevel cannot be set twice.');
					}
					++open_level$count;
					this.openLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (total_today_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenCaptureSummonMonsterResponse.totalTodayTimes cannot be set twice.');
					}
					++total_today_times$count;
					this.totalTodayTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (remainder_today_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenCaptureSummonMonsterResponse.remainderTodayTimes cannot be set twice.');
					}
					++remainder_today_times$count;
					this.remainderTodayTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (total_capture_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenCaptureSummonMonsterResponse.totalCaptureTimes cannot be set twice.');
					}
					++total_capture_times$count;
					this.totalCaptureTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (remainder_capture_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoOpenCaptureSummonMonsterResponse.remainderCaptureTimes cannot be set twice.');
					}
					++remainder_capture_times$count;
					this.remainderCaptureTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
