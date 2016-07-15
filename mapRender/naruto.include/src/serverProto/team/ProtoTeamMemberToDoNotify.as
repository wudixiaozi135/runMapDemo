package serverProto.team {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.team.ProtoTeamSyncType;
	import serverProto.inc.ProtoPoint;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoTeamMemberToDoNotify extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.team.ProtoTeamMemberToDoNotify.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.team.ProtoTeamSyncType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const SCENE:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberToDoNotify.scene", "scene", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var scene$field:int;

		private var hasField$0:uint = 0;

		public function clearScene():void {
			hasField$0 &= 0xfffffffe;
			scene$field = new int();
		}

		public function get hasScene():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set scene(value:int):void {
			hasField$0 |= 0x1;
			scene$field = value;
		}

		public function get scene():int {
			return scene$field;
		}

		/**
		 *  @private
		 */
		public static const POINT:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.team.ProtoTeamMemberToDoNotify.point", "point", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		private var point$field:serverProto.inc.ProtoPoint;

		public function clearPoint():void {
			point$field = null;
		}

		public function get hasPoint():Boolean {
			return point$field != null;
		}

		public function set point(value:serverProto.inc.ProtoPoint):void {
			point$field = value;
		}

		public function get point():serverProto.inc.ProtoPoint {
			return point$field;
		}

		/**
		 *  @private
		 */
		public static const DUNGEON_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberToDoNotify.dungeon_id", "dungeonId", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const NPC_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberToDoNotify.npc_id", "npcId", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var npc_id$field:int;

		public function clearNpcId():void {
			hasField$0 &= 0xfffffffb;
			npc_id$field = new int();
		}

		public function get hasNpcId():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set npcId(value:int):void {
			hasField$0 |= 0x4;
			npc_id$field = value;
		}

		public function get npcId():int {
			return npc_id$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.team.ProtoTeamMemberToDoNotify.guild_level", "guildLevel", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_level$field:int;

		public function clearGuildLevel():void {
			hasField$0 &= 0xfffffff7;
			guild_level$field = new int();
		}

		public function get hasGuildLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set guildLevel(value:int):void {
			hasField$0 |= 0x8;
			guild_level$field = value;
		}

		public function get guildLevel():int {
			return guild_level$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			if (hasScene) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, scene$field);
			}
			if (hasPoint) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, point$field);
			}
			if (hasDungeonId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, dungeon_id$field);
			}
			if (hasNpcId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, npc_id$field);
			}
			if (hasGuildLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, guild_level$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var type$count:uint = 0;
			var scene$count:uint = 0;
			var point$count:uint = 0;
			var dungeon_id$count:uint = 0;
			var npc_id$count:uint = 0;
			var guild_level$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberToDoNotify.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (scene$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberToDoNotify.scene cannot be set twice.');
					}
					++scene$count;
					this.scene = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 3:
					if (point$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberToDoNotify.point cannot be set twice.');
					}
					++point$count;
					this.point = new serverProto.inc.ProtoPoint();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.point);
					break;
				case 4:
					if (dungeon_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberToDoNotify.dungeonId cannot be set twice.');
					}
					++dungeon_id$count;
					this.dungeonId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (npc_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberToDoNotify.npcId cannot be set twice.');
					}
					++npc_id$count;
					this.npcId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (guild_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoTeamMemberToDoNotify.guildLevel cannot be set twice.');
					}
					++guild_level$count;
					this.guildLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
