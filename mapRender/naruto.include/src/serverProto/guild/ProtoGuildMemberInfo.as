package serverProto.guild {
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
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGuildMemberInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildMemberInfo.player_id", "playerId", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const PLAYER_NICK:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.guild.ProtoGuildMemberInfo.player_nick", "playerNick", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var player_nick$field:String;

		public function clearPlayerNick():void {
			player_nick$field = null;
		}

		public function get hasPlayerNick():Boolean {
			return player_nick$field != null;
		}

		public function set playerNick(value:String):void {
			player_nick$field = value;
		}

		public function get playerNick():String {
			return player_nick$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_LVL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.player_lvl", "playerLvl", (3 << 3) | com.netease.protobuf.WireType.VARINT);

		private var player_lvl$field:uint;

		private var hasField$0:uint = 0;

		public function clearPlayerLvl():void {
			hasField$0 &= 0xfffffffe;
			player_lvl$field = new uint();
		}

		public function get hasPlayerLvl():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set playerLvl(value:uint):void {
			hasField$0 |= 0x1;
			player_lvl$field = value;
		}

		public function get playerLvl():uint {
			return player_lvl$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_COMBAT:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.player_combat", "playerCombat", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var player_combat$field:uint;

		public function clearPlayerCombat():void {
			hasField$0 &= 0xfffffffd;
			player_combat$field = new uint();
		}

		public function get hasPlayerCombat():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set playerCombat(value:uint):void {
			hasField$0 |= 0x2;
			player_combat$field = value;
		}

		public function get playerCombat():uint {
			return player_combat$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_CAREER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.player_career", "playerCareer", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var player_career$field:uint;

		public function clearPlayerCareer():void {
			hasField$0 &= 0xfffffffb;
			player_career$field = new uint();
		}

		public function get hasPlayerCareer():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set playerCareer(value:uint):void {
			hasField$0 |= 0x4;
			player_career$field = value;
		}

		public function get playerCareer():uint {
			return player_career$field;
		}

		/**
		 *  @private
		 */
		public static const IDENTITY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGuildMemberInfo.identity", "identity", (6 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.GuildMemberIdentity);

		private var identity$field:int;

		public function clearIdentity():void {
			hasField$0 &= 0xfffffff7;
			identity$field = new int();
		}

		public function get hasIdentity():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set identity(value:int):void {
			hasField$0 |= 0x8;
			identity$field = value;
		}

		public function get identity():int {
			return identity$field;
		}

		/**
		 *  @private
		 */
		public static const LOGIN_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.login_flag", "loginFlag", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var login_flag$field:uint;

		public function clearLoginFlag():void {
			hasField$0 &= 0xffffffef;
			login_flag$field = new uint();
		}

		public function get hasLoginFlag():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set loginFlag(value:uint):void {
			hasField$0 |= 0x10;
			login_flag$field = value;
		}

		public function get loginFlag():uint {
			return login_flag$field;
		}

		/**
		 *  @private
		 */
		public static const OFFLINE_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.offline_time", "offlineTime", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var offline_time$field:uint;

		public function clearOfflineTime():void {
			hasField$0 &= 0xffffffdf;
			offline_time$field = new uint();
		}

		public function get hasOfflineTime():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set offlineTime(value:uint):void {
			hasField$0 |= 0x20;
			offline_time$field = value;
		}

		public function get offlineTime():uint {
			return offline_time$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.current_contri", "currentContri", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_contri$field:uint;

		public function clearCurrentContri():void {
			hasField$0 &= 0xffffffbf;
			current_contri$field = new uint();
		}

		public function get hasCurrentContri():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set currentContri(value:uint):void {
			hasField$0 |= 0x40;
			current_contri$field = value;
		}

		public function get currentContri():uint {
			return current_contri$field;
		}

		/**
		 *  @private
		 */
		public static const HISTORY_CONTRI:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.guild.ProtoGuildMemberInfo.history_contri", "historyContri", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var history_contri$field:uint;

		public function clearHistoryContri():void {
			hasField$0 &= 0xffffff7f;
			history_contri$field = new uint();
		}

		public function get hasHistoryContri():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set historyContri(value:uint):void {
			hasField$0 |= 0x80;
			history_contri$field = value;
		}

		public function get historyContri():uint {
			return history_contri$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.guild.ProtoGuildMemberInfo.vip_level", "vipLevel", (11 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffffeff;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x100;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.guild.ProtoGuildMemberInfo.diamond_info", "diamondInfo", (12 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

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
			if (hasPlayerNick) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, player_nick$field);
			}
			if (hasPlayerLvl) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, player_lvl$field);
			}
			if (hasPlayerCombat) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, player_combat$field);
			}
			if (hasPlayerCareer) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, player_career$field);
			}
			if (hasIdentity) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, identity$field);
			}
			if (hasLoginFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, login_flag$field);
			}
			if (hasOfflineTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, offline_time$field);
			}
			if (hasCurrentContri) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, current_contri$field);
			}
			if (hasHistoryContri) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, history_contri$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasDiamondInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 12);
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
			var player_nick$count:uint = 0;
			var player_lvl$count:uint = 0;
			var player_combat$count:uint = 0;
			var player_career$count:uint = 0;
			var identity$count:uint = 0;
			var login_flag$count:uint = 0;
			var offline_time$count:uint = 0;
			var current_contri$count:uint = 0;
			var history_contri$count:uint = 0;
			var vip_level$count:uint = 0;
			var diamond_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMemberInfo.playerId cannot be set twice.');
					}
					++player_id$count;
					this.playerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerId);
					break;
				case 2:
					if (player_nick$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMemberInfo.playerNick cannot be set twice.');
					}
					++player_nick$count;
					this.playerNick = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 3:
					if (player_lvl$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMemberInfo.playerLvl cannot be set twice.');
					}
					++player_lvl$count;
					this.playerLvl = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 4:
					if (player_combat$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMemberInfo.playerCombat cannot be set twice.');
					}
					++player_combat$count;
					this.playerCombat = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (player_career$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMemberInfo.playerCareer cannot be set twice.');
					}
					++player_career$count;
					this.playerCareer = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 6:
					if (identity$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMemberInfo.identity cannot be set twice.');
					}
					++identity$count;
					this.identity = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 7:
					if (login_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMemberInfo.loginFlag cannot be set twice.');
					}
					++login_flag$count;
					this.loginFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (offline_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMemberInfo.offlineTime cannot be set twice.');
					}
					++offline_time$count;
					this.offlineTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (current_contri$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMemberInfo.currentContri cannot be set twice.');
					}
					++current_contri$count;
					this.currentContri = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (history_contri$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMemberInfo.historyContri cannot be set twice.');
					}
					++history_contri$count;
					this.historyContri = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMemberInfo.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 12:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGuildMemberInfo.diamondInfo cannot be set twice.');
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
