package serverProto.player {
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
	import serverProto.inc.GuildMemberIdentity;
	import serverProto.inc.ProtoNinjaSimpleInfo;
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPlayerTipsInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerTipsInfo.player_id", "playerId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.player.ProtoPlayerTipsInfo.player_name", "playerName", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const ROLE_LEVEL:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.player.ProtoPlayerTipsInfo.role_level", "roleLevel", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_level$field:int;

		private var hasField$0:uint = 0;

		public function clearRoleLevel():void {
			hasField$0 &= 0xfffffffe;
			role_level$field = new int();
		}

		public function get hasRoleLevel():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set roleLevel(value:int):void {
			hasField$0 |= 0x1;
			role_level$field = value;
		}

		public function get roleLevel():int {
			return role_level$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_CATEGORY:FieldDescriptor$TYPE_SINT32 = new FieldDescriptor$TYPE_SINT32("serverProto.player.ProtoPlayerTipsInfo.role_category", "roleCategory", (4 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.player.ProtoPlayerTipsInfo.guild_id", "guildId", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var guild_id$field:UInt64;

		public function clearGuildId():void {
			guild_id$field = null;
		}

		public function get hasGuildId():Boolean {
			return guild_id$field != null;
		}

		public function set guildId(value:UInt64):void {
			guild_id$field = value;
		}

		public function get guildId():UInt64 {
			return guild_id$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.player.ProtoPlayerTipsInfo.guild_name", "guildName", (6 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const GUILD_IDENTITY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoPlayerTipsInfo.guild_identity", "guildIdentity", (7 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.GuildMemberIdentity);

		private var guild_identity$field:int;

		public function clearGuildIdentity():void {
			hasField$0 &= 0xfffffffb;
			guild_identity$field = new int();
		}

		public function get hasGuildIdentity():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set guildIdentity(value:int):void {
			hasField$0 |= 0x4;
			guild_identity$field = value;
		}

		public function get guildIdentity():int {
			return guild_identity$field;
		}

		/**
		 *  @private
		 */
		public static const MAIN_FORMATION_NINJA_TIPS:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerTipsInfo.main_formation_ninja_tips", "mainFormationNinjaTips", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoNinjaSimpleInfo);

		[ArrayElementType("serverProto.inc.ProtoNinjaSimpleInfo")]
		public var mainFormationNinjaTips:Array = [];

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.player.ProtoPlayerTipsInfo.vip_level", "vipLevel", (9 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

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
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.player.ProtoPlayerTipsInfo.diamond_info", "diamondInfo", (10 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

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
			if (hasPlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_id$field);
			}
			if (hasPlayerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, player_name$field);
			}
			if (hasRoleLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, role_level$field);
			}
			if (hasRoleCategory) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_SINT32(output, role_category$field);
			}
			if (hasGuildId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, guild_id$field);
			}
			if (hasGuildName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, guild_name$field);
			}
			if (hasGuildIdentity) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, guild_identity$field);
			}
			for (var mainFormationNinjaTips$index:uint = 0; mainFormationNinjaTips$index < this.mainFormationNinjaTips.length; ++mainFormationNinjaTips$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.mainFormationNinjaTips[mainFormationNinjaTips$index]);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
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
			var player_id$count:uint = 0;
			var player_name$count:uint = 0;
			var role_level$count:uint = 0;
			var role_category$count:uint = 0;
			var guild_id$count:uint = 0;
			var guild_name$count:uint = 0;
			var guild_identity$count:uint = 0;
			var vip_level$count:uint = 0;
			var diamond_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTipsInfo.playerId cannot be set twice.');
					}
					++player_id$count;
					this.playerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerId);
					break;
				case 2:
					if (player_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTipsInfo.playerName cannot be set twice.');
					}
					++player_name$count;
					this.playerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (role_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTipsInfo.roleLevel cannot be set twice.');
					}
					++role_level$count;
					this.roleLevel = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 4:
					if (role_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTipsInfo.roleCategory cannot be set twice.');
					}
					++role_category$count;
					this.roleCategory = com.netease.protobuf.ReadUtils.read$TYPE_SINT32(input);
					break;
				case 5:
					if (guild_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTipsInfo.guildId cannot be set twice.');
					}
					++guild_id$count;
					this.guildId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 6:
					if (guild_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTipsInfo.guildName cannot be set twice.');
					}
					++guild_name$count;
					this.guildName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 7:
					if (guild_identity$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTipsInfo.guildIdentity cannot be set twice.');
					}
					++guild_identity$count;
					this.guildIdentity = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 8:
					this.mainFormationNinjaTips.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.inc.ProtoNinjaSimpleInfo()));
					break;
				case 9:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTipsInfo.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 10:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerTipsInfo.diamondInfo cannot be set twice.');
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
