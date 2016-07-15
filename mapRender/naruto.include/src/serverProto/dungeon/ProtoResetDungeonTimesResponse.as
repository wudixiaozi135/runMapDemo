package serverProto.dungeon {
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
	public  final class ProtoResetDungeonTimesResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoResetDungeonTimesResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const NEXT_TIME_NEED_GOLD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoResetDungeonTimesResponse.next_time_need_gold", "nextTimeNeedGold", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var next_time_need_gold$field:int;

		private var hasField$0:uint = 0;

		public function clearNextTimeNeedGold():void {
			hasField$0 &= 0xfffffffe;
			next_time_need_gold$field = new int();
		}

		public function get hasNextTimeNeedGold():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set nextTimeNeedGold(value:int):void {
			hasField$0 |= 0x1;
			next_time_need_gold$field = value;
		}

		public function get nextTimeNeedGold():int {
			return next_time_need_gold$field;
		}

		/**
		 *  @private
		 */
		public static const TODAY_RESET_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoResetDungeonTimesResponse.today_reset_num", "todayResetNum", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var today_reset_num$field:int;

		public function clearTodayResetNum():void {
			hasField$0 &= 0xfffffffd;
			today_reset_num$field = new int();
		}

		public function get hasTodayResetNum():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set todayResetNum(value:int):void {
			hasField$0 |= 0x2;
			today_reset_num$field = value;
		}

		public function get todayResetNum():int {
			return today_reset_num$field;
		}

		/**
		 *  @private
		 */
		public static const TODAY_RESET_ULTIMATE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoResetDungeonTimesResponse.today_reset_ultimate", "todayResetUltimate", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var today_reset_ultimate$field:int;

		public function clearTodayResetUltimate():void {
			hasField$0 &= 0xfffffffb;
			today_reset_ultimate$field = new int();
		}

		public function get hasTodayResetUltimate():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set todayResetUltimate(value:int):void {
			hasField$0 |= 0x4;
			today_reset_ultimate$field = value;
		}

		public function get todayResetUltimate():int {
			return today_reset_ultimate$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasNextTimeNeedGold) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, next_time_need_gold$field);
			}
			if (hasTodayResetNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, today_reset_num$field);
			}
			if (hasTodayResetUltimate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, today_reset_ultimate$field);
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
			var next_time_need_gold$count:uint = 0;
			var today_reset_num$count:uint = 0;
			var today_reset_ultimate$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoResetDungeonTimesResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (next_time_need_gold$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoResetDungeonTimesResponse.nextTimeNeedGold cannot be set twice.');
					}
					++next_time_need_gold$count;
					this.nextTimeNeedGold = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (today_reset_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoResetDungeonTimesResponse.todayResetNum cannot be set twice.');
					}
					++today_reset_num$count;
					this.todayResetNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 4:
					if (today_reset_ultimate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoResetDungeonTimesResponse.todayResetUltimate cannot be set twice.');
					}
					++today_reset_ultimate$count;
					this.todayResetUltimate = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
