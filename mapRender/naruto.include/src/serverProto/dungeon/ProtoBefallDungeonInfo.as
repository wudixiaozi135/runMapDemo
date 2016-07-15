package serverProto.dungeon {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.dungeon.ProtoBefallDifficultyInfo;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBefallDungeonInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const DUNGEON_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBefallDungeonInfo.dungeon_id", "dungeonId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dungeon_id$field:int;

		private var hasField$0:uint = 0;

		public function clearDungeonId():void {
			hasField$0 &= 0xfffffffe;
			dungeon_id$field = new int();
		}

		public function get hasDungeonId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set dungeonId(value:int):void {
			hasField$0 |= 0x1;
			dungeon_id$field = value;
		}

		public function get dungeonId():int {
			return dungeon_id$field;
		}

		/**
		 *  @private
		 */
		public static const REMAINDER_TIMES:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.dungeon.ProtoBefallDungeonInfo.remainder_times", "remainderTimes", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var remainder_times$field:int;

		public function clearRemainderTimes():void {
			hasField$0 &= 0xfffffffd;
			remainder_times$field = new int();
		}

		public function get hasRemainderTimes():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set remainderTimes(value:int):void {
			hasField$0 |= 0x2;
			remainder_times$field = value;
		}

		public function get remainderTimes():int {
			return remainder_times$field;
		}

		/**
		 *  @private
		 */
		public static const DIFFICULTY_LIST:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBefallDungeonInfo.difficulty_list", "difficultyList", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.dungeon.ProtoBefallDifficultyInfo);

		[ArrayElementType("serverProto.dungeon.ProtoBefallDifficultyInfo")]
		public var difficultyList:Array = [];

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasDungeonId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, dungeon_id$field);
			}
			if (hasRemainderTimes) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, remainder_times$field);
			}
			for (var difficultyList$index:uint = 0; difficultyList$index < this.difficultyList.length; ++difficultyList$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.difficultyList[difficultyList$index]);
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
			var remainder_times$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (dungeon_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonInfo.dungeonId cannot be set twice.');
					}
					++dungeon_id$count;
					this.dungeonId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 2:
					if (remainder_times$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonInfo.remainderTimes cannot be set twice.');
					}
					++remainder_times$count;
					this.remainderTimes = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					this.difficultyList.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.dungeon.ProtoBefallDifficultyInfo()));
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
