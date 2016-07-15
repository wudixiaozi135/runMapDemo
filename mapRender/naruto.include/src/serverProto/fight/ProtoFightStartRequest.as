package serverProto.fight {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.fight.FightStartType;
	import serverProto.inc.ProtoPlayerKey;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoFightStartRequest extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const TYPE:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.fight.ProtoFightStartRequest.type", "type", (1 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.fight.FightStartType);

		public var type:int;

		/**
		 *  @private
		 */
		public static const PASSIVE_PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.fight.ProtoFightStartRequest.passive_player", "passivePlayer", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var passive_player$field:serverProto.inc.ProtoPlayerKey;

		public function clearPassivePlayer():void {
			passive_player$field = null;
		}

		public function get hasPassivePlayer():Boolean {
			return passive_player$field != null;
		}

		public function set passivePlayer(value:serverProto.inc.ProtoPlayerKey):void {
			passive_player$field = value;
		}

		public function get passivePlayer():serverProto.inc.ProtoPlayerKey {
			return passive_player$field;
		}

		/**
		 *  @private
		 */
		public static const NPC_CLIENT_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.npc_client_id", "npcClientId", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var npc_client_id$field:int;

		private var hasField$0:uint = 0;

		public function clearNpcClientId():void {
			hasField$0 &= 0xfffffffe;
			npc_client_id$field = new int();
		}

		public function get hasNpcClientId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set npcClientId(value:int):void {
			hasField$0 |= 0x1;
			npc_client_id$field = value;
		}

		public function get npcClientId():int {
			return npc_client_id$field;
		}

		/**
		 *  @private
		 */
		public static const CUSTOM_BATTLE_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.custom_battle_id", "customBattleId", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var custom_battle_id$field:int;

		public function clearCustomBattleId():void {
			hasField$0 &= 0xfffffffd;
			custom_battle_id$field = new int();
		}

		public function get hasCustomBattleId():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set customBattleId(value:int):void {
			hasField$0 |= 0x2;
			custom_battle_id$field = value;
		}

		public function get customBattleId():int {
			return custom_battle_id$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_EXAM_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.ninja_exam_id", "ninjaExamId", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninja_exam_id$field:int;

		public function clearNinjaExamId():void {
			hasField$0 &= 0xfffffffb;
			ninja_exam_id$field = new int();
		}

		public function get hasNinjaExamId():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set ninjaExamId(value:int):void {
			hasField$0 |= 0x4;
			ninja_exam_id$field = value;
		}

		public function get ninjaExamId():int {
			return ninja_exam_id$field;
		}

		/**
		 *  @private
		 */
		public static const STORY_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.story_id", "storyId", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var story_id$field:int;

		public function clearStoryId():void {
			hasField$0 &= 0xfffffff7;
			story_id$field = new int();
		}

		public function get hasStoryId():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set storyId(value:int):void {
			hasField$0 |= 0x8;
			story_id$field = value;
		}

		public function get storyId():int {
			return story_id$field;
		}

		/**
		 *  @private
		 */
		public static const DUNGEON_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.dungeon_id", "dungeonId", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dungeon_id$field:int;

		public function clearDungeonId():void {
			hasField$0 &= 0xffffffef;
			dungeon_id$field = new int();
		}

		public function get hasDungeonId():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set dungeonId(value:int):void {
			hasField$0 |= 0x10;
			dungeon_id$field = value;
		}

		public function get dungeonId():int {
			return dungeon_id$field;
		}

		/**
		 *  @private
		 */
		public static const TRANSFER_ROLE_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.transfer_role_id", "transferRoleId", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var transfer_role_id$field:int;

		public function clearTransferRoleId():void {
			hasField$0 &= 0xffffffdf;
			transfer_role_id$field = new int();
		}

		public function get hasTransferRoleId():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set transferRoleId(value:int):void {
			hasField$0 |= 0x20;
			transfer_role_id$field = value;
		}

		public function get transferRoleId():int {
			return transfer_role_id$field;
		}

		/**
		 *  @private
		 */
		public static const DUNGEON_DIFFICULTY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.dungeon_difficulty", "dungeonDifficulty", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dungeon_difficulty$field:int;

		public function clearDungeonDifficulty():void {
			hasField$0 &= 0xffffffbf;
			dungeon_difficulty$field = new int();
		}

		public function get hasDungeonDifficulty():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set dungeonDifficulty(value:int):void {
			hasField$0 |= 0x40;
			dungeon_difficulty$field = value;
		}

		public function get dungeonDifficulty():int {
			return dungeon_difficulty$field;
		}

		/**
		 *  @private
		 */
		public static const TREASURE_MAP_ID:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.treasure_map_id", "treasureMapId", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var treasure_map_id$field:int;

		public function clearTreasureMapId():void {
			hasField$0 &= 0xffffff7f;
			treasure_map_id$field = new int();
		}

		public function get hasTreasureMapId():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set treasureMapId(value:int):void {
			hasField$0 |= 0x80;
			treasure_map_id$field = value;
		}

		public function get treasureMapId():int {
			return treasure_map_id$field;
		}

		/**
		 *  @private
		 */
		public static const TREASURE_MAP_INDEX:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.fight.ProtoFightStartRequest.treasure_map_index", "treasureMapIndex", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var treasure_map_index$field:int;

		public function clearTreasureMapIndex():void {
			hasField$0 &= 0xfffffeff;
			treasure_map_index$field = new int();
		}

		public function get hasTreasureMapIndex():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set treasureMapIndex(value:int):void {
			hasField$0 |= 0x100;
			treasure_map_index$field = value;
		}

		public function get treasureMapIndex():int {
			return treasure_map_index$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, this.type);
			if (hasPassivePlayer) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, passive_player$field);
			}
			if (hasNpcClientId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, npc_client_id$field);
			}
			if (hasCustomBattleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, custom_battle_id$field);
			}
			if (hasNinjaExamId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, ninja_exam_id$field);
			}
			if (hasStoryId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, story_id$field);
			}
			if (hasDungeonId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, dungeon_id$field);
			}
			if (hasTransferRoleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, transfer_role_id$field);
			}
			if (hasDungeonDifficulty) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, dungeon_difficulty$field);
			}
			if (hasTreasureMapId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, treasure_map_id$field);
			}
			if (hasTreasureMapIndex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, treasure_map_index$field);
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
			var passive_player$count:uint = 0;
			var npc_client_id$count:uint = 0;
			var custom_battle_id$count:uint = 0;
			var ninja_exam_id$count:uint = 0;
			var story_id$count:uint = 0;
			var dungeon_id$count:uint = 0;
			var transfer_role_id$count:uint = 0;
			var dungeon_difficulty$count:uint = 0;
			var treasure_map_id$count:uint = 0;
			var treasure_map_index$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (type$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartRequest.type cannot be set twice.');
					}
					++type$count;
					this.type = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 2:
					if (passive_player$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartRequest.passivePlayer cannot be set twice.');
					}
					++passive_player$count;
					this.passivePlayer = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.passivePlayer);
					break;
				case 3:
					if (npc_client_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartRequest.npcClientId cannot be set twice.');
					}
					++npc_client_id$count;
					this.npcClientId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (custom_battle_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartRequest.customBattleId cannot be set twice.');
					}
					++custom_battle_id$count;
					this.customBattleId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (ninja_exam_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartRequest.ninjaExamId cannot be set twice.');
					}
					++ninja_exam_id$count;
					this.ninjaExamId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 6:
					if (story_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartRequest.storyId cannot be set twice.');
					}
					++story_id$count;
					this.storyId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 7:
					if (dungeon_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartRequest.dungeonId cannot be set twice.');
					}
					++dungeon_id$count;
					this.dungeonId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 8:
					if (transfer_role_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartRequest.transferRoleId cannot be set twice.');
					}
					++transfer_role_id$count;
					this.transferRoleId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 9:
					if (dungeon_difficulty$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartRequest.dungeonDifficulty cannot be set twice.');
					}
					++dungeon_difficulty$count;
					this.dungeonDifficulty = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 10:
					if (treasure_map_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartRequest.treasureMapId cannot be set twice.');
					}
					++treasure_map_id$count;
					this.treasureMapId = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 11:
					if (treasure_map_index$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoFightStartRequest.treasureMapIndex cannot be set twice.');
					}
					++treasure_map_index$count;
					this.treasureMapIndex = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
