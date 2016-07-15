package serverProto.baseInfo {
	import com.netease.protobuf.*;
	use namespace com.netease.protobuf.used_by_generated_code;
	import com.netease.protobuf.fieldDescriptors.*;
	import flash.utils.Endian;
	import flash.utils.IDataInput;
	import flash.utils.IDataOutput;
	import flash.utils.IExternalizable;
	import flash.errors.IOError;
	import serverProto.inc.ProtoRetInfo;
	import serverProto.inc.ProtoDiamondInfo;
	import serverProto.inc.ProtoPlayerKey;
	import serverProto.baseInfo.ProtoNinjaInfo;
	import serverProto.formationBase.ProtoFormationInfo;
	import serverProto.inc.GuildMemberIdentity;
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoGetOtherPlayerInfoResponse extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.ret_info", "retInfo", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoRetInfo);

		public var retInfo:serverProto.inc.ProtoRetInfo;

		/**
		 *  @private
		 */
		public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.player_key", "playerKey", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

		private var player_key$field:serverProto.inc.ProtoPlayerKey;

		public function clearPlayerKey():void {
			player_key$field = null;
		}

		public function get hasPlayerKey():Boolean {
			return player_key$field != null;
		}

		public function set playerKey(value:serverProto.inc.ProtoPlayerKey):void {
			player_key$field = value;
		}

		public function get playerKey():serverProto.inc.ProtoPlayerKey {
			return player_key$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.name", "name", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const MAX_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.max_hp", "maxHp", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_hp$field:int;

		private var hasField$0:uint = 0;

		public function clearMaxHp():void {
			hasField$0 &= 0xfffffffe;
			max_hp$field = new int();
		}

		public function get hasMaxHp():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set maxHp(value:int):void {
			hasField$0 |= 0x1;
			max_hp$field = value;
		}

		public function get maxHp():int {
			return max_hp$field;
		}

		/**
		 *  @private
		 */
		public static const CURRENT_HP:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.current_hp", "currentHp", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var current_hp$field:int;

		public function clearCurrentHp():void {
			hasField$0 &= 0xfffffffd;
			current_hp$field = new int();
		}

		public function get hasCurrentHp():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set currentHp(value:int):void {
			hasField$0 |= 0x2;
			current_hp$field = value;
		}

		public function get currentHp():int {
			return current_hp$field;
		}

		/**
		 *  @private
		 */
		public static const CHAKRA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.chakra", "chakra", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var chakra$field:int;

		public function clearChakra():void {
			hasField$0 &= 0xfffffffb;
			chakra$field = new int();
		}

		public function get hasChakra():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set chakra(value:int):void {
			hasField$0 |= 0x4;
			chakra$field = value;
		}

		public function get chakra():int {
			return chakra$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.level", "level", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:int;

		public function clearLevel():void {
			hasField$0 &= 0xfffffff7;
			level$field = new int();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set level(value:int):void {
			hasField$0 |= 0x8;
			level$field = value;
		}

		public function get level():int {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const NINJA_INFO:RepeatedFieldDescriptor$TYPE_MESSAGE = new RepeatedFieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.ninja_info", "ninjaInfo", (8 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.baseInfo.ProtoNinjaInfo);

		[ArrayElementType("serverProto.baseInfo.ProtoNinjaInfo")]
		public var ninjaInfo:Array = [];

		/**
		 *  @private
		 */
		public static const FORMATION_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.formation_info", "formationInfo", (9 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.formationBase.ProtoFormationInfo);

		private var formation_info$field:serverProto.formationBase.ProtoFormationInfo;

		public function clearFormationInfo():void {
			formation_info$field = null;
		}

		public function get hasFormationInfo():Boolean {
			return formation_info$field != null;
		}

		public function set formationInfo(value:serverProto.formationBase.ProtoFormationInfo):void {
			formation_info$field = value;
		}

		public function get formationInfo():serverProto.formationBase.ProtoFormationInfo {
			return formation_info$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_TALENT_AWAKEN_SKILL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.role_talent_awaken_skill", "roleTalentAwakenSkill", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_talent_awaken_skill$field:int;

		public function clearRoleTalentAwakenSkill():void {
			hasField$0 &= 0xffffffef;
			role_talent_awaken_skill$field = new int();
		}

		public function get hasRoleTalentAwakenSkill():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set roleTalentAwakenSkill(value:int):void {
			hasField$0 |= 0x10;
			role_talent_awaken_skill$field = value;
		}

		public function get roleTalentAwakenSkill():int {
			return role_talent_awaken_skill$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_TALENT_COMMON_SKILL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.role_talent_common_skill", "roleTalentCommonSkill", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_talent_common_skill$field:int;

		public function clearRoleTalentCommonSkill():void {
			hasField$0 &= 0xffffffdf;
			role_talent_common_skill$field = new int();
		}

		public function get hasRoleTalentCommonSkill():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set roleTalentCommonSkill(value:int):void {
			hasField$0 |= 0x20;
			role_talent_common_skill$field = value;
		}

		public function get roleTalentCommonSkill():int {
			return role_talent_common_skill$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_TALENT_SKILL:RepeatedFieldDescriptor$TYPE_INT32 = new RepeatedFieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.role_talent_skill", "roleTalentSkill", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		[ArrayElementType("int")]
		public var roleTalentSkill:Array = [];

		/**
		 *  @private
		 */
		public static const COMBAT_POWER:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.combat_power", "combatPower", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat_power$field:int;

		public function clearCombatPower():void {
			hasField$0 &= 0xffffffbf;
			combat_power$field = new int();
		}

		public function get hasCombatPower():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set combatPower(value:int):void {
			hasField$0 |= 0x40;
			combat_power$field = value;
		}

		public function get combatPower():int {
			return combat_power$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.team_id", "teamId", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var team_id$field:UInt64;

		public function clearTeamId():void {
			team_id$field = null;
		}

		public function get hasTeamId():Boolean {
			return team_id$field != null;
		}

		public function set teamId(value:UInt64):void {
			team_id$field = value;
		}

		public function get teamId():UInt64 {
			return team_id$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.role_category", "roleCategory", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_category$field:int;

		public function clearRoleCategory():void {
			hasField$0 &= 0xffffff7f;
			role_category$field = new int();
		}

		public function get hasRoleCategory():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set roleCategory(value:int):void {
			hasField$0 |= 0x80;
			role_category$field = value;
		}

		public function get roleCategory():int {
			return role_category$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.vip_level", "vipLevel", (16 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

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
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.diamond_info", "diamondInfo", (17 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

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
		public static const GUILD_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.guild_name", "guildName", (18 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const MEMBER_IDENTITY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.member_identity", "memberIdentity", (19 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.GuildMemberIdentity);

		private var member_identity$field:int;

		public function clearMemberIdentity():void {
			hasField$0 &= 0xfffffdff;
			member_identity$field = new int();
		}

		public function get hasMemberIdentity():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set memberIdentity(value:int):void {
			hasField$0 |= 0x200;
			member_identity$field = value;
		}

		public function get memberIdentity():int {
			return member_identity$field;
		}

		/**
		 *  @private
		 */
		public static const CHOSED_TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.chosed_title_id", "chosedTitleId", (20 << 3) | com.netease.protobuf.WireType.VARINT);

		private var chosed_title_id$field:uint;

		public function clearChosedTitleId():void {
			hasField$0 &= 0xfffffbff;
			chosed_title_id$field = new uint();
		}

		public function get hasChosedTitleId():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set chosedTitleId(value:uint):void {
			hasField$0 |= 0x400;
			chosed_title_id$field = value;
		}

		public function get chosedTitleId():uint {
			return chosed_title_id$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.baseInfo.ProtoGetOtherPlayerInfoResponse.guild_id", "guildId", (21 << 3) | com.netease.protobuf.WireType.VARINT);

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
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
			com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.retInfo);
			if (hasPlayerKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_key$field);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasMaxHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, max_hp$field);
			}
			if (hasCurrentHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, current_hp$field);
			}
			if (hasChakra) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, chakra$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, level$field);
			}
			for (var ninjaInfo$index:uint = 0; ninjaInfo$index < this.ninjaInfo.length; ++ninjaInfo$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, this.ninjaInfo[ninjaInfo$index]);
			}
			if (hasFormationInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, formation_info$field);
			}
			if (hasRoleTalentAwakenSkill) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, role_talent_awaken_skill$field);
			}
			if (hasRoleTalentCommonSkill) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, role_talent_common_skill$field);
			}
			for (var roleTalentSkill$index:uint = 0; roleTalentSkill$index < this.roleTalentSkill.length; ++roleTalentSkill$index) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, this.roleTalentSkill[roleTalentSkill$index]);
			}
			if (hasCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, combat_power$field);
			}
			if (hasTeamId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, team_id$field);
			}
			if (hasRoleCategory) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, role_category$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasDiamondInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 17);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, diamond_info$field);
			}
			if (hasGuildName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 18);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, guild_name$field);
			}
			if (hasMemberIdentity) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, member_identity$field);
			}
			if (hasChosedTitleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 20);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, chosed_title_id$field);
			}
			if (hasGuildId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 21);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, guild_id$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var ret_info$count:uint = 0;
			var player_key$count:uint = 0;
			var name$count:uint = 0;
			var max_hp$count:uint = 0;
			var current_hp$count:uint = 0;
			var chakra$count:uint = 0;
			var level$count:uint = 0;
			var formation_info$count:uint = 0;
			var role_talent_awaken_skill$count:uint = 0;
			var role_talent_common_skill$count:uint = 0;
			var combat_power$count:uint = 0;
			var team_id$count:uint = 0;
			var role_category$count:uint = 0;
			var vip_level$count:uint = 0;
			var diamond_info$count:uint = 0;
			var guild_name$count:uint = 0;
			var member_identity$count:uint = 0;
			var chosed_title_id$count:uint = 0;
			var guild_id$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.retInfo cannot be set twice.');
					}
					++ret_info$count;
					this.retInfo = new serverProto.inc.ProtoRetInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.retInfo);
					break;
				case 2:
					if (player_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.playerKey cannot be set twice.');
					}
					++player_key$count;
					this.playerKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerKey);
					break;
				case 3:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (max_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.maxHp cannot be set twice.');
					}
					++max_hp$count;
					this.maxHp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (current_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.currentHp cannot be set twice.');
					}
					++current_hp$count;
					this.currentHp = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (chakra$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.chakra cannot be set twice.');
					}
					++chakra$count;
					this.chakra = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					this.ninjaInfo.push(com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, new serverProto.baseInfo.ProtoNinjaInfo()));
					break;
				case 9:
					if (formation_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.formationInfo cannot be set twice.');
					}
					++formation_info$count;
					this.formationInfo = new serverProto.formationBase.ProtoFormationInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.formationInfo);
					break;
				case 10:
					if (role_talent_awaken_skill$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.roleTalentAwakenSkill cannot be set twice.');
					}
					++role_talent_awaken_skill$count;
					this.roleTalentAwakenSkill = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 11:
					if (role_talent_common_skill$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.roleTalentCommonSkill cannot be set twice.');
					}
					++role_talent_common_skill$count;
					this.roleTalentCommonSkill = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 12:
					if ((tag & 7) == com.netease.protobuf.WireType.LENGTH_DELIMITED) {
						com.netease.protobuf.ReadUtils.readPackedRepeated(input, com.netease.protobuf.ReadUtils.read$TYPE_INT32, this.roleTalentSkill);
						break;
					}
					this.roleTalentSkill.push(com.netease.protobuf.ReadUtils.read$TYPE_INT32(input));
					break;
				case 13:
					if (combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.combatPower cannot be set twice.');
					}
					++combat_power$count;
					this.combatPower = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 14:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 15:
					if (role_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.roleCategory cannot be set twice.');
					}
					++role_category$count;
					this.roleCategory = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 16:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 17:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.diamondInfo cannot be set twice.');
					}
					++diamond_info$count;
					this.diamondInfo = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.diamondInfo);
					break;
				case 18:
					if (guild_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.guildName cannot be set twice.');
					}
					++guild_name$count;
					this.guildName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 19:
					if (member_identity$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.memberIdentity cannot be set twice.');
					}
					++member_identity$count;
					this.memberIdentity = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 20:
					if (chosed_title_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.chosedTitleId cannot be set twice.');
					}
					++chosed_title_id$count;
					this.chosedTitleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 21:
					if (guild_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoGetOtherPlayerInfoResponse.guildId cannot be set twice.');
					}
					++guild_id$count;
					this.guildId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
