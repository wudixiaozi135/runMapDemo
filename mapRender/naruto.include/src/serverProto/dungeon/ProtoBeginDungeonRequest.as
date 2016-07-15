package serverProto.dungeon {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.dungeon.ProtoDungeonDifficultyType;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBeginDungeonRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const DUNGEON_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoBeginDungeonRequest.dungeon_id", "dungeonId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		public var dungeonId:uint;

		/**
		 *  @private
		 */
		public static const DIFFICULTY_TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.dungeon.ProtoBeginDungeonRequest.difficulty_type", "difficultyType", (2 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.dungeon.ProtoDungeonDifficultyType);

		private var difficulty_type$field:int;

		private var hasField$0:uint = 0;

		public function clearDifficultyType():void {
			hasField$0 &= 0xfffffffe;
			difficulty_type$field = new int();
		}

		public function get hasDifficultyType():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set difficultyType(value:int):void {
			hasField$0 |= 0x1;
			difficulty_type$field = value;
		}

		public function get difficultyType():int {
			return difficulty_type$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, this.dungeonId);
			if (hasDifficultyType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, difficulty_type$field);
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
			var difficulty_type$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (dungeon_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBeginDungeonRequest.dungeonId cannot be set twice.');
					}
					++dungeon_id$count;
					this.dungeonId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (difficulty_type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBeginDungeonRequest.difficultyType cannot be set twice.');
					}
					++difficulty_type$count;
					this.difficultyType = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
