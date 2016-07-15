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
	import serverProto.inc.ProtoPoint;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBeginDungeonResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBeginDungeonResponse.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var ret:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const DUNGEON_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoBeginDungeonResponse.dungeon_id", "dungeonId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dungeon_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearDungeonId():void {
			hasField$0 &= 0xfffffffe;
			dungeon_id$field = new uint();
		}

		public function get hasDungeonId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set dungeonId(value:uint):void {
			hasField$0 |= 0x1;
			dungeon_id$field = value;
		}

		public function get dungeonId():uint {
			return dungeon_id$field;
		}

		/**
		 *  @private
		 */
		public static const DUNGEON_SECTION_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.dungeon.ProtoBeginDungeonResponse.dungeon_section_id", "dungeonSectionId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dungeon_section_id$field:uint;

		public function clearDungeonSectionId():void {
			hasField$0 &= 0xfffffffd;
			dungeon_section_id$field = new uint();
		}

		public function get hasDungeonSectionId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set dungeonSectionId(value:uint):void {
			hasField$0 |= 0x2;
			dungeon_section_id$field = value;
		}

		public function get dungeonSectionId():uint {
			return dungeon_section_id$field;
		}

		/**
		 *  @private
		 */
		public static const BIRTHPLACE:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.dungeon.ProtoBeginDungeonResponse.birthplace", "birthplace", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		private var birthplace$field:serverProto.inc.ProtoPoint;

		public function clearBirthplace():void {
			birthplace$field = null;
		}

		public function get hasBirthplace():Boolean {
			return birthplace$field != null;
		}

		public function set birthplace(value:serverProto.inc.ProtoPoint):void {
			birthplace$field = value;
		}

		public function get birthplace():serverProto.inc.ProtoPoint {
			return birthplace$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ret);
			if (hasDungeonId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, dungeon_id$field);
			}
			if (hasDungeonSectionId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, dungeon_section_id$field);
			}
			if (hasBirthplace) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, birthplace$field);
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
			var dungeon_id$count:uint = 0;
			var dungeon_section_id$count:uint = 0;
			var birthplace$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBeginDungeonResponse.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.ret);
					break;
				case 2:
					if (dungeon_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBeginDungeonResponse.dungeonId cannot be set twice.');
					}
					++dungeon_id$count;
					this.dungeonId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (dungeon_section_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBeginDungeonResponse.dungeonSectionId cannot be set twice.');
					}
					++dungeon_section_id$count;
					this.dungeonSectionId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (birthplace$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBeginDungeonResponse.birthplace cannot be set twice.');
					}
					++birthplace$count;
					this.birthplace = new serverProto.inc.ProtoPoint();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.birthplace);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
