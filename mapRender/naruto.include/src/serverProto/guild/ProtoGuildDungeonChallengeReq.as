package serverProto.guild {
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
	public  final class ProtoGuildDungeonChallengeReq extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const CHAPTER_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonChallengeReq.chapter_id", "chapterId", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var chapter_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearChapterId():void {
			hasField$0 &= 0xfffffffe;
			chapter_id$field = new uint();
		}

		public function get hasChapterId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set chapterId(value:uint):void {
			hasField$0 |= 0x1;
			chapter_id$field = value;
		}

		public function get chapterId():uint {
			return chapter_id$field;
		}

		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonChallengeReq.type", "type", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var type$field:uint;

		public function clearType():void {
			hasField$0 &= 0xfffffffd;
			type$field = new uint();
		}

		public function get hasType():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set type(value:uint):void {
			hasField$0 |= 0x2;
			type$field = value;
		}

		public function get type():uint {
			return type$field;
		}

		/**
		 *  @private
		 */
		public static const DIFFICULTY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildDungeonChallengeReq.difficulty", "difficulty", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var difficulty$field:uint;

		public function clearDifficulty():void {
			hasField$0 &= 0xfffffffb;
			difficulty$field = new uint();
		}

		public function get hasDifficulty():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set difficulty(value:uint):void {
			hasField$0 |= 0x4;
			difficulty$field = value;
		}

		public function get difficulty():uint {
			return difficulty$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasChapterId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, chapter_id$field);
			}
			if (hasType) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, type$field);
			}
			if (hasDifficulty) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, difficulty$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var chapter_id$count:uint = 0;
			var type$count:uint = 0;
			var difficulty$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (chapter_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonChallengeReq.chapterId cannot be set twice.');
					}
					++chapter_id$count;
					this.chapterId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonChallengeReq.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (difficulty$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildDungeonChallengeReq.difficulty cannot be set twice.');
					}
					++difficulty$count;
					this.difficulty = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
