package serverProto.arena {
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
	public  final class ProtoToolModifyArenaInfoRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CMD:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.arena.ProtoToolModifyArenaInfoRequest.cmd", "cmd", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var cmd:uint;

		/**
		 *  @private
		 */
		public static const ARENA_TYPE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoToolModifyArenaInfoRequest.arena_type", "arenaType", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var arena_type$field:int;

		private var hasField$0:uint = 0;

		public function clearArenaType():void {
			hasField$0 &= 0xfffffffe;
			arena_type$field = new int();
		}

		public function get hasArenaType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set arenaType(value:int):void {
			hasField$0 |= 0x1;
			arena_type$field = value;
		}

		public function get arenaType():int {
			return arena_type$field;
		}

		/**
		 *  @private
		 */
		public static const SCORE:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoToolModifyArenaInfoRequest.score", "score", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var score$field:int;

		public function clearScore():void {
			hasField$0 &= 0xfffffffd;
			score$field = new int();
		}

		public function get hasScore():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set score(value:int):void {
			hasField$0 |= 0x2;
			score$field = value;
		}

		public function get score():int {
			return score$field;
		}

		/**
		 *  @private
		 */
		public static const CONTINUOUS_RECORD:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.arena.ProtoToolModifyArenaInfoRequest.continuous_record", "continuousRecord", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var continuous_record$field:int;

		public function clearContinuousRecord():void {
			hasField$0 &= 0xfffffffb;
			continuous_record$field = new int();
		}

		public function get hasContinuousRecord():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set continuousRecord(value:int):void {
			hasField$0 |= 0x4;
			continuous_record$field = value;
		}

		public function get continuousRecord():int {
			return continuous_record$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.cmd);
			if (hasArenaType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, arena_type$field);
			}
			if (hasScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, score$field);
			}
			if (hasContinuousRecord) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, continuous_record$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var cmd$count:uint = 0;
			var arena_type$count:uint = 0;
			var score$count:uint = 0;
			var continuous_record$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (cmd$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoToolModifyArenaInfoRequest.cmd cannot be set twice.');
					}
					++cmd$count;
					this.cmd = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (arena_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoToolModifyArenaInfoRequest.arenaType cannot be set twice.');
					}
					++arena_type$count;
					this.arenaType = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 3:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoToolModifyArenaInfoRequest.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (continuous_record$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoToolModifyArenaInfoRequest.continuousRecord cannot be set twice.');
					}
					++continuous_record$count;
					this.continuousRecord = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
