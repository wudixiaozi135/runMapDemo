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
	public  final class ProtoDungeonInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const DUNGEON_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonInfo.dungeon_id", "dungeonId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var dungeonId:uint;

		/**
		 *  @private
		 */
		public static const NEED_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonInfo.need_power", "needPower", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var need_power$field:uint;

		private var hasField$0:uint = 0;

		public function clearNeedPower():void {
			hasField$0 &= 0xfffffffe;
			need_power$field = new uint();
		}

		public function get hasNeedPower():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set needPower(value:uint):void {
			hasField$0 |= 0x1;
			need_power$field = value;
		}

		public function get needPower():uint {
			return need_power$field;
		}

		/**
		 *  @private
		 */
		public static const OPEN_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonInfo.open_level", "openLevel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var open_level$field:uint;

		public function clearOpenLevel():void {
			hasField$0 &= 0xfffffffd;
			open_level$field = new uint();
		}

		public function get hasOpenLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set openLevel(value:uint):void {
			hasField$0 |= 0x2;
			open_level$field = value;
		}

		public function get openLevel():uint {
			return open_level$field;
		}

		/**
		 *  @private
		 */
		public static const PASS_TIMES:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonInfo.pass_times", "passTimes", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pass_times$field:uint;

		public function clearPassTimes():void {
			hasField$0 &= 0xfffffffb;
			pass_times$field = new uint();
		}

		public function get hasPassTimes():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set passTimes(value:uint):void {
			hasField$0 |= 0x4;
			pass_times$field = value;
		}

		public function get passTimes():uint {
			return pass_times$field;
		}

		/**
		 *  @private
		 */
		public static const PASS_ULIMIT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonInfo.pass_ulimit", "passUlimit", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var pass_ulimit$field:uint;

		public function clearPassUlimit():void {
			hasField$0 &= 0xfffffff7;
			pass_ulimit$field = new uint();
		}

		public function get hasPassUlimit():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set passUlimit(value:uint):void {
			hasField$0 |= 0x8;
			pass_ulimit$field = value;
		}

		public function get passUlimit():uint {
			return pass_ulimit$field;
		}

		/**
		 *  @private
		 */
		public static const BEST_EVALUATE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoDungeonInfo.best_evaluate", "bestEvaluate", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var best_evaluate$field:uint;

		public function clearBestEvaluate():void {
			hasField$0 &= 0xffffffef;
			best_evaluate$field = new uint();
		}

		public function get hasBestEvaluate():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set bestEvaluate(value:uint):void {
			hasField$0 |= 0x10;
			best_evaluate$field = value;
		}

		public function get bestEvaluate():uint {
			return best_evaluate$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.dungeonId);
			if (hasNeedPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, need_power$field);
			}
			if (hasOpenLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, open_level$field);
			}
			if (hasPassTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, pass_times$field);
			}
			if (hasPassUlimit) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, pass_ulimit$field);
			}
			if (hasBestEvaluate) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, best_evaluate$field);
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
			var need_power$count:uint = 0;
			var open_level$count:uint = 0;
			var pass_times$count:uint = 0;
			var pass_ulimit$count:uint = 0;
			var best_evaluate$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (dungeon_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonInfo.dungeonId cannot be set twice.');
					}
					++dungeon_id$count;
					this.dungeonId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (need_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonInfo.needPower cannot be set twice.');
					}
					++need_power$count;
					this.needPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (open_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonInfo.openLevel cannot be set twice.');
					}
					++open_level$count;
					this.openLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (pass_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonInfo.passTimes cannot be set twice.');
					}
					++pass_times$count;
					this.passTimes = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (pass_ulimit$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonInfo.passUlimit cannot be set twice.');
					}
					++pass_ulimit$count;
					this.passUlimit = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (best_evaluate$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonInfo.bestEvaluate cannot be set twice.');
					}
					++best_evaluate$count;
					this.bestEvaluate = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
