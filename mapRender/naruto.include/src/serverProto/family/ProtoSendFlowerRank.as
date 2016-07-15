package serverProto.family {
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
	public  final class ProtoSendFlowerRank extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RANK:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerRank.rank", "rank", (1 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerRank.player_id", "playerId", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoSendFlowerRank.player_name", "playerName", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoSendFlowerRank.guild_name", "guildName", (4 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var guild_name$field:String;

		public function clearGuildName():void {
			guild_name$field = null;
		}

		public function get hasGuildName():Boolean {
			return guild_name$field != null;
		}

		public function set guildName(value:String):void {
			guild_name$field = value;
		}

		public function get guildName():String {
			return guild_name$field;
		}

		/**
		 *  @private
		 */
		public static const FRIENDLY_PLAYER:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerRank.friendly_player", "friendlyPlayer", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var friendly_player$field:serverProto.inc.ProtoPlayerKey;

		public function clearFriendlyPlayer():void {
			friendly_player$field = null;
		}

		public function get hasFriendlyPlayer():Boolean {
			return friendly_player$field != null;
		}

		public function set friendlyPlayer(value:serverProto.inc.ProtoPlayerKey):void {
			friendly_player$field = value;
		}

		public function get friendlyPlayer():serverProto.inc.ProtoPlayerKey {
			return friendly_player$field;
		}

		/**
		 *  @private
		 */
		public static const FRIENDLY_PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.family.ProtoSendFlowerRank.friendly_player_name", "friendlyPlayerName", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var friendly_player_name$field:String;

		public function clearFriendlyPlayerName():void {
			friendly_player_name$field = null;
		}

		public function get hasFriendlyPlayerName():Boolean {
			return friendly_player_name$field != null;
		}

		public function set friendlyPlayerName(value:String):void {
			friendly_player_name$field = value;
		}

		public function get friendlyPlayerName():String {
			return friendly_player_name$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.family.ProtoSendFlowerRank.role_category", "roleCategory", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_category$field:int;

		public function clearRoleCategory():void {
			hasField$0 &= 0xfffffffd;
			role_category$field = new int();
		}

		public function get hasRoleCategory():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set roleCategory(value:int):void {
			hasField$0 |= 0x2;
			role_category$field = value;
		}

		public function get roleCategory():int {
			return role_category$field;
		}

		/**
		 *  @private
		 */
		public static const FLOWER_COUNT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerRank.flower_count", "flowerCount", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var flower_count$field:uint;

		public function clearFlowerCount():void {
			hasField$0 &= 0xfffffffb;
			flower_count$field = new uint();
		}

		public function get hasFlowerCount():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set flowerCount(value:uint):void {
			hasField$0 |= 0x4;
			flower_count$field = value;
		}

		public function get flowerCount():uint {
			return flower_count$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.family.ProtoSendFlowerRank.vip_level", "vipLevel", (9 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffffff7;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x8;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.family.ProtoSendFlowerRank.title_id", "titleId", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var title_id$field:uint;

		public function clearTitleId():void {
			hasField$0 &= 0xffffffef;
			title_id$field = new uint();
		}

		public function get hasTitleId():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set titleId(value:uint):void {
			hasField$0 |= 0x10;
			title_id$field = value;
		}

		public function get titleId():uint {
			return title_id$field;
		}

		/**
		 *  @private
		 */
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.family.ProtoSendFlowerRank.diamond_info", "diamondInfo", (11 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

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
			if (hasGuildName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, guild_name$field);
			}
			if (hasFriendlyPlayer) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, friendly_player$field);
			}
			if (hasFriendlyPlayerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, friendly_player_name$field);
			}
			if (hasRoleCategory) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, role_category$field);
			}
			if (hasFlowerCount) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, flower_count$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasTitleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, title_id$field);
			}
			if (hasDiamondInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 11);
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
			var guild_name$count:uint = 0;
			var friendly_player$count:uint = 0;
			var friendly_player_name$count:uint = 0;
			var role_category$count:uint = 0;
			var flower_count$count:uint = 0;
			var vip_level$count:uint = 0;
			var title_id$count:uint = 0;
			var diamond_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (rank$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerRank.rank cannot be set twice.');
					}
					++rank$count;
					this.rank = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerRank.playerId cannot be set twice.');
					}
					++player_id$count;
					this.playerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerId);
					break;
				case 3:
					if (player_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerRank.playerName cannot be set twice.');
					}
					++player_name$count;
					this.playerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (guild_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerRank.guildName cannot be set twice.');
					}
					++guild_name$count;
					this.guildName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 5:
					if (friendly_player$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerRank.friendlyPlayer cannot be set twice.');
					}
					++friendly_player$count;
					this.friendlyPlayer = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.friendlyPlayer);
					break;
				case 6:
					if (friendly_player_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerRank.friendlyPlayerName cannot be set twice.');
					}
					++friendly_player_name$count;
					this.friendlyPlayerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 7:
					if (role_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerRank.roleCategory cannot be set twice.');
					}
					++role_category$count;
					this.roleCategory = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (flower_count$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerRank.flowerCount cannot be set twice.');
					}
					++flower_count$count;
					this.flowerCount = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerRank.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 10:
					if (title_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerRank.titleId cannot be set twice.');
					}
					++title_id$count;
					this.titleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoSendFlowerRank.diamondInfo cannot be set twice.');
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
