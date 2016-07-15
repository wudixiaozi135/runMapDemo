package serverProto.dungeon {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoDungeonRaidsInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const DUNGEON_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonRaidsInfo.dungeon_id", "dungeonId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var dungeonId:uint;

		/**
		 *  @private
		 */
		public static const REMAIN_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonRaidsInfo.remain_count", "remainCount", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_count$field:uint;

		private var hasField$0:uint = 0;

		public function clearRemainCount():void {
			hasField$0 &= 0xfffffffe;
			remain_count$field = new uint();
		}

		public function get hasRemainCount():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set remainCount(value:uint):void {
			hasField$0 |= 0x1;
			remain_count$field = value;
		}

		public function get remainCount():uint {
			return remain_count$field;
		}

		/**
		 *  @private
		 */
		public static const REMAIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonRaidsInfo.remain_time", "remainTime", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remain_time$field:uint;

		public function clearRemainTime():void {
			hasField$0 &= 0xfffffffd;
			remain_time$field = new uint();
		}

		public function get hasRemainTime():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set remainTime(value:uint):void {
			hasField$0 |= 0x2;
			remain_time$field = value;
		}

		public function get remainTime():uint {
			return remain_time$field;
		}

		/**
		 *  @private
		 */
		public static const CURR_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonRaidsInfo.curr_count", "currCount", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var curr_count$field:uint;

		public function clearCurrCount():void {
			hasField$0 &= 0xfffffffb;
			curr_count$field = new uint();
		}

		public function get hasCurrCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set currCount(value:uint):void {
			hasField$0 |= 0x4;
			curr_count$field = value;
		}

		public function get currCount():uint {
			return curr_count$field;
		}

		/**
		 *  @private
		 */
		public static const CURR_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonRaidsInfo.curr_time", "currTime", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var curr_time$field:uint;

		public function clearCurrTime():void {
			hasField$0 &= 0xfffffff7;
			curr_time$field = new uint();
		}

		public function get hasCurrTime():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set currTime(value:uint):void {
			hasField$0 |= 0x8;
			curr_time$field = value;
		}

		public function get currTime():uint {
			return curr_time$field;
		}

		/**
		 *  @private
		 */
		public static const ELITE_DUNGEON_REMAIN_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonRaidsInfo.elite_dungeon_remain_times", "eliteDungeonRemainTimes", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var elite_dungeon_remain_times$field:uint;

		public function clearEliteDungeonRemainTimes():void {
			hasField$0 &= 0xffffffef;
			elite_dungeon_remain_times$field = new uint();
		}

		public function get hasEliteDungeonRemainTimes():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set eliteDungeonRemainTimes(value:uint):void {
			hasField$0 |= 0x10;
			elite_dungeon_remain_times$field = value;
		}

		public function get eliteDungeonRemainTimes():uint {
			return elite_dungeon_remain_times$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.dungeonId);
			if (hasRemainCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_count$field);
			}
			if (hasRemainTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, remain_time$field);
			}
			if (hasCurrCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, curr_count$field);
			}
			if (hasCurrTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, curr_time$field);
			}
			if (hasEliteDungeonRemainTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, elite_dungeon_remain_times$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var dungeon_id$count:uint = 0;
			var remain_count$count:uint = 0;
			var remain_time$count:uint = 0;
			var curr_count$count:uint = 0;
			var curr_time$count:uint = 0;
			var elite_dungeon_remain_times$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (dungeon_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonRaidsInfo.dungeonId cannot be set twice.');
					}
					++dungeon_id$count;
					this.dungeonId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (remain_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonRaidsInfo.remainCount cannot be set twice.');
					}
					++remain_count$count;
					this.remainCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (remain_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonRaidsInfo.remainTime cannot be set twice.');
					}
					++remain_time$count;
					this.remainTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (curr_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonRaidsInfo.currCount cannot be set twice.');
					}
					++curr_count$count;
					this.currCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (curr_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonRaidsInfo.currTime cannot be set twice.');
					}
					++curr_time$count;
					this.currTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (elite_dungeon_remain_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonRaidsInfo.eliteDungeonRemainTimes cannot be set twice.');
					}
					++elite_dungeon_remain_times$count;
					this.eliteDungeonRemainTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
