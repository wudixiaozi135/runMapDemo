package serverProto.team {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.team.ProtoDungeonTeamMatchNotify.ProtoDungeonTeamMatchStatus;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoDungeonTeamMatchNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const MATCH_STATUS:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoDungeonTeamMatchNotify.match_status", "matchStatus", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.team.ProtoDungeonTeamMatchNotify.ProtoDungeonTeamMatchStatus);

		private var match_status$field:int;

		private var hasField$0:uint = 0;

		public function clearMatchStatus():void {
			hasField$0 &= 0xfffffffe;
			match_status$field = new int();
		}

		public function get hasMatchStatus():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set matchStatus(value:int):void {
			hasField$0 |= 0x1;
			match_status$field = value;
		}

		public function get matchStatus():int {
			return match_status$field;
		}

		/**
		 *  @private
		 */
		public static const DUNGEON_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoDungeonTeamMatchNotify.dungeon_id", "dungeonId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dungeon_id$field:int;

		public function clearDungeonId():void {
			hasField$0 &= 0xfffffffd;
			dungeon_id$field = new int();
		}

		public function get hasDungeonId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set dungeonId(value:int):void {
			hasField$0 |= 0x2;
			dungeon_id$field = value;
		}

		public function get dungeonId():int {
			return dungeon_id$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.team.ProtoDungeonTeamMatchNotify.name", "name", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var name$field:String;

		public function clearName():void {
			name$field = null;
		}

		public function get hasName():Boolean {
			return name$field != null;
		}

		public function set name(value:String):void {
			name$field = value;
		}

		public function get name():String {
			return name$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasMatchStatus) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, match_status$field);
			}
			if (hasDungeonId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, dungeon_id$field);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var match_status$count:uint = 0;
			var dungeon_id$count:uint = 0;
			var name$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (match_status$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonTeamMatchNotify.matchStatus cannot be set twice.');
					}
					++match_status$count;
					this.matchStatus = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (dungeon_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonTeamMatchNotify.dungeonId cannot be set twice.');
					}
					++dungeon_id$count;
					this.dungeonId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoDungeonTeamMatchNotify.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
