package serverProto.rank {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoDiamondInfo;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoBefallDungeonRank extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoBefallDungeonRank.rank", "rank", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var rank$field:uint;

		private var hasField$0:uint = 0;

		public function clearRank():void {
			hasField$0 &= 0xfffffffe;
			rank$field = new uint();
		}

		public function get hasRank():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set rank(value:uint):void {
			hasField$0 |= 0x1;
			rank$field = value;
		}

		public function get rank():uint {
			return rank$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoBefallDungeonRank.player_id", "playerId", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var player_id$field:serverProto.inc.ProtoPlayerKey;

		public function clearPlayerId():void {
			player_id$field = null;
		}

		public function get hasPlayerId():Boolean {
			return player_id$field != null;
		}

		public function set playerId(value:serverProto.inc.ProtoPlayerKey):void {
			player_id$field = value;
		}

		public function get playerId():serverProto.inc.ProtoPlayerKey {
			return player_id$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.rank.ProtoBefallDungeonRank.player_name", "playerName", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var player_name$field:String;

		public function clearPlayerName():void {
			player_name$field = null;
		}

		public function get hasPlayerName():Boolean {
			return player_name$field != null;
		}

		public function set playerName(value:String):void {
			player_name$field = value;
		}

		public function get playerName():String {
			return player_name$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_CATEGORY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoBefallDungeonRank.role_category", "roleCategory", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_category$field:uint;

		public function clearRoleCategory():void {
			hasField$0 &= 0xfffffffd;
			role_category$field = new uint();
		}

		public function get hasRoleCategory():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set roleCategory(value:uint):void {
			hasField$0 |= 0x2;
			role_category$field = value;
		}

		public function get roleCategory():uint {
			return role_category$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoBefallDungeonRank.role_level", "roleLevel", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_level$field:uint;

		public function clearRoleLevel():void {
			hasField$0 &= 0xfffffffb;
			role_level$field = new uint();
		}

		public function get hasRoleLevel():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set roleLevel(value:uint):void {
			hasField$0 |= 0x4;
			role_level$field = value;
		}

		public function get roleLevel():uint {
			return role_level$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoBefallDungeonRank.combat_power", "combatPower", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat_power$field:uint;

		public function clearCombatPower():void {
			hasField$0 &= 0xfffffff7;
			combat_power$field = new uint();
		}

		public function get hasCombatPower():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set combatPower(value:uint):void {
			hasField$0 |= 0x8;
			combat_power$field = value;
		}

		public function get combatPower():uint {
			return combat_power$field;
		}

		/**
		 *  @private
		 */
		public static const SCORE:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoBefallDungeonRank.score", "score", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var score$field:uint;

		public function clearScore():void {
			hasField$0 &= 0xffffffef;
			score$field = new uint();
		}

		public function get hasScore():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set score(value:uint):void {
			hasField$0 |= 0x10;
			score$field = value;
		}

		public function get score():uint {
			return score$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.rank.ProtoBefallDungeonRank.vip_level", "vipLevel", (8 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xffffffdf;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x20;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.rank.ProtoBefallDungeonRank.title_id", "titleId", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var title_id$field:uint;

		public function clearTitleId():void {
			hasField$0 &= 0xffffffbf;
			title_id$field = new uint();
		}

		public function get hasTitleId():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set titleId(value:uint):void {
			hasField$0 |= 0x40;
			title_id$field = value;
		}

		public function get titleId():uint {
			return title_id$field;
		}

		/**
		 *  @private
		 */
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.rank.ProtoBefallDungeonRank.diamond_info", "diamondInfo", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

		private var diamond_info$field:serverProto.inc.ProtoDiamondInfo;

		public function clearDiamondInfo():void {
			diamond_info$field = null;
		}

		public function get hasDiamondInfo():Boolean {
			return diamond_info$field != null;
		}

		public function set diamondInfo(value:serverProto.inc.ProtoDiamondInfo):void {
			diamond_info$field = value;
		}

		public function get diamondInfo():serverProto.inc.ProtoDiamondInfo {
			return diamond_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRank) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, rank$field);
			}
			if (hasPlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_id$field);
			}
			if (hasPlayerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, player_name$field);
			}
			if (hasRoleCategory) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, role_category$field);
			}
			if (hasRoleLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, role_level$field);
			}
			if (hasCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, combat_power$field);
			}
			if (hasScore) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, score$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasTitleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, title_id$field);
			}
			if (hasDiamondInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, diamond_info$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var rank$count:uint = 0;
			var player_id$count:uint = 0;
			var player_name$count:uint = 0;
			var role_category$count:uint = 0;
			var role_level$count:uint = 0;
			var combat_power$count:uint = 0;
			var score$count:uint = 0;
			var vip_level$count:uint = 0;
			var title_id$count:uint = 0;
			var diamond_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonRank.rank cannot be set twice.');
					}
					++rank$count;
					this.rank = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonRank.playerId cannot be set twice.');
					}
					++player_id$count;
					this.playerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerId);
					break;
				case 3:
					if (player_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonRank.playerName cannot be set twice.');
					}
					++player_name$count;
					this.playerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (role_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonRank.roleCategory cannot be set twice.');
					}
					++role_category$count;
					this.roleCategory = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (role_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonRank.roleLevel cannot be set twice.');
					}
					++role_level$count;
					this.roleLevel = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonRank.combatPower cannot be set twice.');
					}
					++combat_power$count;
					this.combatPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (score$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonRank.score cannot be set twice.');
					}
					++score$count;
					this.score = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonRank.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 9:
					if (title_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonRank.titleId cannot be set twice.');
					}
					++title_id$count;
					this.titleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoBefallDungeonRank.diamondInfo cannot be set twice.');
					}
					++diamond_info$count;
					this.diamondInfo = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.diamondInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
