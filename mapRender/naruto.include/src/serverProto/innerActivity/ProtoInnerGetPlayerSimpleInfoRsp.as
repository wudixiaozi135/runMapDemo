package serverProto.innerActivity {
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
	import serverProto.inc.ProtoTGPInfo;
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoInnerGetPlayerSimpleInfoRsp extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const RET:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.ret", "ret", (1 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ret$field:uint;

		private var hasField$0:uint = 0;

		public function clearRet():void {
			hasField$0 &= 0xfffffffe;
			ret$field = new uint();
		}

		public function get hasRet():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set ret(value:uint):void {
			hasField$0 |= 0x1;
			ret$field = value;
		}

		public function get ret():uint {
			return ret$field;
		}

		/**
		 *  @private
		 */
		public static const PLAYER_ID:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.player_id", "playerId", (2 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const PLAYER_NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.player_name", "playerName", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const PLAYER_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.player_level", "playerLevel", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var player_level$field:int;

		public function clearPlayerLevel():void {
			hasField$0 &= 0xfffffffd;
			player_level$field = new int();
		}

		public function get hasPlayerLevel():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set playerLevel(value:int):void {
			hasField$0 |= 0x2;
			player_level$field = value;
		}

		public function get playerLevel():int {
			return player_level$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.role_category", "roleCategory", (5 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_category$field:int;

		public function clearRoleCategory():void {
			hasField$0 &= 0xfffffffb;
			role_category$field = new int();
		}

		public function get hasRoleCategory():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set roleCategory(value:int):void {
			hasField$0 |= 0x4;
			role_category$field = value;
		}

		public function get roleCategory():int {
			return role_category$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_SEX:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.role_sex", "roleSex", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_sex$field:int;

		public function clearRoleSex():void {
			hasField$0 &= 0xfffffff7;
			role_sex$field = new int();
		}

		public function get hasRoleSex():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set roleSex(value:int):void {
			hasField$0 |= 0x8;
			role_sex$field = value;
		}

		public function get roleSex():int {
			return role_sex$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_PROMOTE_LEVEL:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.role_promote_level", "rolePromoteLevel", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_promote_level$field:int;

		public function clearRolePromoteLevel():void {
			hasField$0 &= 0xffffffef;
			role_promote_level$field = new int();
		}

		public function get hasRolePromoteLevel():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set rolePromoteLevel(value:int):void {
			hasField$0 |= 0x10;
			role_promote_level$field = value;
		}

		public function get rolePromoteLevel():int {
			return role_promote_level$field;
		}

		/**
		 *  @private
		 */
		public static const REGISTER_WAY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.register_way", "registerWay", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var register_way$field:int;

		public function clearRegisterWay():void {
			hasField$0 &= 0xffffffdf;
			register_way$field = new int();
		}

		public function get hasRegisterWay():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set registerWay(value:int):void {
			hasField$0 |= 0x20;
			register_way$field = value;
		}

		public function get registerWay():int {
			return register_way$field;
		}

		/**
		 *  @private
		 */
		public static const LOGIN_WAY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.login_way", "loginWay", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var login_way$field:int;

		public function clearLoginWay():void {
			hasField$0 &= 0xffffffbf;
			login_way$field = new int();
		}

		public function get hasLoginWay():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set loginWay(value:int):void {
			hasField$0 |= 0x40;
			login_way$field = value;
		}

		public function get loginWay():int {
			return login_way$field;
		}

		/**
		 *  @private
		 */
		public static const TEAM_ID:FieldDescriptor$TYPE_INT64 = new FieldDescriptor$TYPE_INT64("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.team_id", "teamId", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var team_id$field:Int64;

		public function clearTeamId():void {
			team_id$field = null;
		}

		public function get hasTeamId():Boolean {
			return team_id$field != null;
		}

		public function set teamId(value:Int64):void {
			team_id$field = value;
		}

		public function get teamId():Int64 {
			return team_id$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.combat_power", "combatPower", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat_power$field:uint;

		public function clearCombatPower():void {
			hasField$0 &= 0xffffff7f;
			combat_power$field = new uint();
		}

		public function get hasCombatPower():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set combatPower(value:uint):void {
			hasField$0 |= 0x80;
			combat_power$field = value;
		}

		public function get combatPower():uint {
			return combat_power$field;
		}

		/**
		 *  @private
		 */
		public static const HISTORY_MAX_COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.history_max_combat_power", "historyMaxCombatPower", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var history_max_combat_power$field:uint;

		public function clearHistoryMaxCombatPower():void {
			hasField$0 &= 0xfffffeff;
			history_max_combat_power$field = new uint();
		}

		public function get hasHistoryMaxCombatPower():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set historyMaxCombatPower(value:uint):void {
			hasField$0 |= 0x100;
			history_max_combat_power$field = value;
		}

		public function get historyMaxCombatPower():uint {
			return history_max_combat_power$field;
		}

		/**
		 *  @private
		 */
		public static const LOGIN_FLAG:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.login_flag", "loginFlag", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var login_flag$field:uint;

		public function clearLoginFlag():void {
			hasField$0 &= 0xfffffdff;
			login_flag$field = new uint();
		}

		public function get hasLoginFlag():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set loginFlag(value:uint):void {
			hasField$0 |= 0x200;
			login_flag$field = value;
		}

		public function get loginFlag():uint {
			return login_flag$field;
		}

		/**
		 *  @private
		 */
		public static const GUILD_ID:FieldDescriptor$TYPE_UINT64 = new FieldDescriptor$TYPE_UINT64("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.guild_id", "guildId", (14 << 3) | com.netease.protobuf.WireType.VARINT);

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
		public static const COUPON_NUM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.coupon_num", "couponNum", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var coupon_num$field:int;

		public function clearCouponNum():void {
			hasField$0 &= 0xfffffbff;
			coupon_num$field = new int();
		}

		public function get hasCouponNum():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set couponNum(value:int):void {
			hasField$0 |= 0x400;
			coupon_num$field = value;
		}

		public function get couponNum():int {
			return coupon_num$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.vip_level", "vipLevel", (16 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffff7ff;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x800;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const LAST_LOGIN_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.last_login_time", "lastLoginTime", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		private var last_login_time$field:uint;

		public function clearLastLoginTime():void {
			hasField$0 &= 0xffffefff;
			last_login_time$field = new uint();
		}

		public function get hasLastLoginTime():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set lastLoginTime(value:uint):void {
			hasField$0 |= 0x1000;
			last_login_time$field = value;
		}

		public function get lastLoginTime():uint {
			return last_login_time$field;
		}

		/**
		 *  @private
		 */
		public static const FIND_BACK_DAY_TASK_EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.find_back_day_task_exp", "findBackDayTaskExp", (18 << 3) | com.netease.protobuf.WireType.VARINT);

		private var find_back_day_task_exp$field:uint;

		public function clearFindBackDayTaskExp():void {
			hasField$0 &= 0xffffdfff;
			find_back_day_task_exp$field = new uint();
		}

		public function get hasFindBackDayTaskExp():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set findBackDayTaskExp(value:uint):void {
			hasField$0 |= 0x2000;
			find_back_day_task_exp$field = value;
		}

		public function get findBackDayTaskExp():uint {
			return find_back_day_task_exp$field;
		}

		/**
		 *  @private
		 */
		public static const FIND_BACK_OFFER_TASK_EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.find_back_offer_task_exp", "findBackOfferTaskExp", (19 << 3) | com.netease.protobuf.WireType.VARINT);

		private var find_back_offer_task_exp$field:uint;

		public function clearFindBackOfferTaskExp():void {
			hasField$0 &= 0xffffbfff;
			find_back_offer_task_exp$field = new uint();
		}

		public function get hasFindBackOfferTaskExp():Boolean {
			return (hasField$0 & 0x4000) != 0;
		}

		public function set findBackOfferTaskExp(value:uint):void {
			hasField$0 |= 0x4000;
			find_back_offer_task_exp$field = value;
		}

		public function get findBackOfferTaskExp():uint {
			return find_back_offer_task_exp$field;
		}

		/**
		 *  @private
		 */
		public static const FIND_BACK_LAST_QUERY_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.find_back_last_query_time", "findBackLastQueryTime", (20 << 3) | com.netease.protobuf.WireType.VARINT);

		private var find_back_last_query_time$field:uint;

		public function clearFindBackLastQueryTime():void {
			hasField$0 &= 0xffff7fff;
			find_back_last_query_time$field = new uint();
		}

		public function get hasFindBackLastQueryTime():Boolean {
			return (hasField$0 & 0x8000) != 0;
		}

		public function set findBackLastQueryTime(value:uint):void {
			hasField$0 |= 0x8000;
			find_back_last_query_time$field = value;
		}

		public function get findBackLastQueryTime():uint {
			return find_back_last_query_time$field;
		}

		/**
		 *  @private
		 */
		public static const REGISTER_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.register_time", "registerTime", (21 << 3) | com.netease.protobuf.WireType.VARINT);

		private var register_time$field:uint;

		public function clearRegisterTime():void {
			hasField$0 &= 0xfffeffff;
			register_time$field = new uint();
		}

		public function get hasRegisterTime():Boolean {
			return (hasField$0 & 0x10000) != 0;
		}

		public function set registerTime(value:uint):void {
			hasField$0 |= 0x10000;
			register_time$field = value;
		}

		public function get registerTime():uint {
			return register_time$field;
		}

		/**
		 *  @private
		 */
		public static const CLIENT_VERSION:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.client_version", "clientVersion", (22 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

		private var client_version$field:String;

		public function clearClientVersion():void {
			client_version$field = null;
		}

		public function get hasClientVersion():Boolean {
			return client_version$field != null;
		}

		public function set clientVersion(value:String):void {
			client_version$field = value;
		}

		public function get clientVersion():String {
			return client_version$field;
		}

		/**
		 *  @private
		 */
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.diamond_info", "diamondInfo", (24 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

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
		public static const GUILD_IDENTITY:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.guild_identity", "guildIdentity", (25 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.GuildMemberIdentity);

		private var guild_identity$field:int;

		public function clearGuildIdentity():void {
			hasField$0 &= 0xfffdffff;
			guild_identity$field = new int();
		}

		public function get hasGuildIdentity():Boolean {
			return (hasField$0 & 0x20000) != 0;
		}

		public function set guildIdentity(value:int):void {
			hasField$0 |= 0x20000;
			guild_identity$field = value;
		}

		public function get guildIdentity():int {
			return guild_identity$field;
		}

		/**
		 *  @private
		 */
		public static const SHOW_PRIVILEGE_WAY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.show_privilege_way", "showPrivilegeWay", (26 << 3) | com.netease.protobuf.WireType.VARINT);

		private var show_privilege_way$field:int;

		public function clearShowPrivilegeWay():void {
			hasField$0 &= 0xfffbffff;
			show_privilege_way$field = new int();
		}

		public function get hasShowPrivilegeWay():Boolean {
			return (hasField$0 & 0x40000) != 0;
		}

		public function set showPrivilegeWay(value:int):void {
			hasField$0 |= 0x40000;
			show_privilege_way$field = value;
		}

		public function get showPrivilegeWay():int {
			return show_privilege_way$field;
		}

		/**
		 *  @private
		 */
		public static const TGP_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.innerActivity.ProtoInnerGetPlayerSimpleInfoRsp.tgp_info", "tgpInfo", (27 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoTGPInfo);

		private var tgp_info$field:serverProto.inc.ProtoTGPInfo;

		public function clearTgpInfo():void {
			tgp_info$field = null;
		}

		public function get hasTgpInfo():Boolean {
			return tgp_info$field != null;
		}

		public function set tgpInfo(value:serverProto.inc.ProtoTGPInfo):void {
			tgp_info$field = value;
		}

		public function get tgpInfo():serverProto.inc.ProtoTGPInfo {
			return tgp_info$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasRet) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, ret$field);
			}
			if (hasPlayerId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_id$field);
			}
			if (hasPlayerName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, player_name$field);
			}
			if (hasPlayerLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, player_level$field);
			}
			if (hasRoleCategory) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, role_category$field);
			}
			if (hasRoleSex) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, role_sex$field);
			}
			if (hasRolePromoteLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, role_promote_level$field);
			}
			if (hasRegisterWay) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, register_way$field);
			}
			if (hasLoginWay) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, login_way$field);
			}
			if (hasTeamId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_INT64(output, team_id$field);
			}
			if (hasCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, combat_power$field);
			}
			if (hasHistoryMaxCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, history_max_combat_power$field);
			}
			if (hasLoginFlag) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, login_flag$field);
			}
			if (hasGuildId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT64(output, guild_id$field);
			}
			if (hasCouponNum) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, coupon_num$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasLastLoginTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, last_login_time$field);
			}
			if (hasFindBackDayTaskExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 18);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, find_back_day_task_exp$field);
			}
			if (hasFindBackOfferTaskExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, find_back_offer_task_exp$field);
			}
			if (hasFindBackLastQueryTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 20);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, find_back_last_query_time$field);
			}
			if (hasRegisterTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 21);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, register_time$field);
			}
			if (hasClientVersion) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 22);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, client_version$field);
			}
			if (hasDiamondInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 24);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, diamond_info$field);
			}
			if (hasGuildIdentity) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 25);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, guild_identity$field);
			}
			if (hasShowPrivilegeWay) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 26);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, show_privilege_way$field);
			}
			if (hasTgpInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 27);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, tgp_info$field);
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
			var player_id$count:uint = 0;
			var player_name$count:uint = 0;
			var player_level$count:uint = 0;
			var role_category$count:uint = 0;
			var role_sex$count:uint = 0;
			var role_promote_level$count:uint = 0;
			var register_way$count:uint = 0;
			var login_way$count:uint = 0;
			var team_id$count:uint = 0;
			var combat_power$count:uint = 0;
			var history_max_combat_power$count:uint = 0;
			var login_flag$count:uint = 0;
			var guild_id$count:uint = 0;
			var coupon_num$count:uint = 0;
			var vip_level$count:uint = 0;
			var last_login_time$count:uint = 0;
			var find_back_day_task_exp$count:uint = 0;
			var find_back_offer_task_exp$count:uint = 0;
			var find_back_last_query_time$count:uint = 0;
			var register_time$count:uint = 0;
			var client_version$count:uint = 0;
			var diamond_info$count:uint = 0;
			var guild_identity$count:uint = 0;
			var show_privilege_way$count:uint = 0;
			var tgp_info$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (ret$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.ret cannot be set twice.');
					}
					++ret$count;
					this.ret = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 2:
					if (player_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.playerId cannot be set twice.');
					}
					++player_id$count;
					this.playerId = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerId);
					break;
				case 3:
					if (player_name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.playerName cannot be set twice.');
					}
					++player_name$count;
					this.playerName = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (player_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.playerLevel cannot be set twice.');
					}
					++player_level$count;
					this.playerLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 5:
					if (role_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.roleCategory cannot be set twice.');
					}
					++role_category$count;
					this.roleCategory = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 6:
					if (role_sex$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.roleSex cannot be set twice.');
					}
					++role_sex$count;
					this.roleSex = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 7:
					if (role_promote_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.rolePromoteLevel cannot be set twice.');
					}
					++role_promote_level$count;
					this.rolePromoteLevel = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 8:
					if (register_way$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.registerWay cannot be set twice.');
					}
					++register_way$count;
					this.registerWay = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 9:
					if (login_way$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.loginWay cannot be set twice.');
					}
					++login_way$count;
					this.loginWay = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 10:
					if (team_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.teamId cannot be set twice.');
					}
					++team_id$count;
					this.teamId = com.netease.protobuf.ReadUtils.read$TYPE_INT64(input);
					break;
				case 11:
					if (combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.combatPower cannot be set twice.');
					}
					++combat_power$count;
					this.combatPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (history_max_combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.historyMaxCombatPower cannot be set twice.');
					}
					++history_max_combat_power$count;
					this.historyMaxCombatPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 13:
					if (login_flag$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.loginFlag cannot be set twice.');
					}
					++login_flag$count;
					this.loginFlag = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 14:
					if (guild_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.guildId cannot be set twice.');
					}
					++guild_id$count;
					this.guildId = com.netease.protobuf.ReadUtils.read$TYPE_UINT64(input);
					break;
				case 15:
					if (coupon_num$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.couponNum cannot be set twice.');
					}
					++coupon_num$count;
					this.couponNum = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 16:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 17:
					if (last_login_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.lastLoginTime cannot be set twice.');
					}
					++last_login_time$count;
					this.lastLoginTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 18:
					if (find_back_day_task_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.findBackDayTaskExp cannot be set twice.');
					}
					++find_back_day_task_exp$count;
					this.findBackDayTaskExp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 19:
					if (find_back_offer_task_exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.findBackOfferTaskExp cannot be set twice.');
					}
					++find_back_offer_task_exp$count;
					this.findBackOfferTaskExp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 20:
					if (find_back_last_query_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.findBackLastQueryTime cannot be set twice.');
					}
					++find_back_last_query_time$count;
					this.findBackLastQueryTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 21:
					if (register_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.registerTime cannot be set twice.');
					}
					++register_time$count;
					this.registerTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 22:
					if (client_version$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.clientVersion cannot be set twice.');
					}
					++client_version$count;
					this.clientVersion = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 24:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.diamondInfo cannot be set twice.');
					}
					++diamond_info$count;
					this.diamondInfo = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.diamondInfo);
					break;
				case 25:
					if (guild_identity$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.guildIdentity cannot be set twice.');
					}
					++guild_identity$count;
					this.guildIdentity = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 26:
					if (show_privilege_way$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.showPrivilegeWay cannot be set twice.');
					}
					++show_privilege_way$count;
					this.showPrivilegeWay = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 27:
					if (tgp_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoInnerGetPlayerSimpleInfoRsp.tgpInfo cannot be set twice.');
					}
					++tgp_info$count;
					this.tgpInfo = new serverProto.inc.ProtoTGPInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.tgpInfo);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
