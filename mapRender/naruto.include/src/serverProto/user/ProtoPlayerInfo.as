package serverProto.user {
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
	import serverProto.user.ProtoTaskSign;
	import serverProto.inc.ProtoPoint;
	import serverProto.inc.ProtoPlayerVipLevel;
	// @@protoc_insertion_point(imports)

	// @@protoc_insertion_point(class_metadata)
	public  final class ProtoPlayerInfo extends com.netease.protobuf.Message {
		/**
		 *  @private
		 */
		public static const PLAYER_KEY:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoPlayerInfo.player_key", "playerKey", (1 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPlayerKey);

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
		public static const ROLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.role_id", "roleId", (2 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_id$field:uint;

		private var hasField$0:uint = 0;

		public function clearRoleId():void {
			hasField$0 &= 0xfffffffe;
			role_id$field = new uint();
		}

		public function get hasRoleId():Boolean {
			return (hasField$0 & 0x1) != 0;
		}

		public function set roleId(value:uint):void {
			hasField$0 |= 0x1;
			role_id$field = value;
		}

		public function get roleId():uint {
			return role_id$field;
		}

		/**
		 *  @private
		 */
		public static const NAME:FieldDescriptor$TYPE_STRING = new FieldDescriptor$TYPE_STRING("serverProto.user.ProtoPlayerInfo.name", "name", (3 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED);

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
		public static const NINJIA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.ninjia", "ninjia", (4 << 3) | com.netease.protobuf.WireType.VARINT);

		private var ninjia$field:uint;

		public function clearNinjia():void {
			hasField$0 &= 0xfffffffd;
			ninjia$field = new uint();
		}

		public function get hasNinjia():Boolean {
			return (hasField$0 & 0x2) != 0;
		}

		public function set ninjia(value:uint):void {
			hasField$0 |= 0x2;
			ninjia$field = value;
		}

		public function get ninjia():uint {
			return ninjia$field;
		}

		/**
		 *  @private
		 */
		public static const LOCATION:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoPlayerInfo.location", "location", (5 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoPoint);

		private var location$field:serverProto.inc.ProtoPoint;

		public function clearLocation():void {
			location$field = null;
		}

		public function get hasLocation():Boolean {
			return location$field != null;
		}

		public function set location(value:serverProto.inc.ProtoPoint):void {
			location$field = value;
		}

		public function get location():serverProto.inc.ProtoPoint {
			return location$field;
		}

		/**
		 *  @private
		 */
		public static const DIRECTION:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.direction", "direction", (6 << 3) | com.netease.protobuf.WireType.VARINT);

		private var direction$field:uint;

		public function clearDirection():void {
			hasField$0 &= 0xfffffffb;
			direction$field = new uint();
		}

		public function get hasDirection():Boolean {
			return (hasField$0 & 0x4) != 0;
		}

		public function set direction(value:uint):void {
			hasField$0 |= 0x4;
			direction$field = value;
		}

		public function get direction():uint {
			return direction$field;
		}

		/**
		 *  @private
		 */
		public static const MONEY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.money", "money", (7 << 3) | com.netease.protobuf.WireType.VARINT);

		private var money$field:uint;

		public function clearMoney():void {
			hasField$0 &= 0xfffffff7;
			money$field = new uint();
		}

		public function get hasMoney():Boolean {
			return (hasField$0 & 0x8) != 0;
		}

		public function set money(value:uint):void {
			hasField$0 |= 0x8;
			money$field = value;
		}

		public function get money():uint {
			return money$field;
		}

		/**
		 *  @private
		 */
		public static const YUANBAO:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.yuanbao", "yuanbao", (8 << 3) | com.netease.protobuf.WireType.VARINT);

		private var yuanbao$field:uint;

		public function clearYuanbao():void {
			hasField$0 &= 0xffffffef;
			yuanbao$field = new uint();
		}

		public function get hasYuanbao():Boolean {
			return (hasField$0 & 0x10) != 0;
		}

		public function set yuanbao(value:uint):void {
			hasField$0 |= 0x10;
			yuanbao$field = value;
		}

		public function get yuanbao():uint {
			return yuanbao$field;
		}

		/**
		 *  @private
		 */
		public static const DIANQUAN:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.dianquan", "dianquan", (9 << 3) | com.netease.protobuf.WireType.VARINT);

		private var dianquan$field:uint;

		public function clearDianquan():void {
			hasField$0 &= 0xffffffdf;
			dianquan$field = new uint();
		}

		public function get hasDianquan():Boolean {
			return (hasField$0 & 0x20) != 0;
		}

		public function set dianquan(value:uint):void {
			hasField$0 |= 0x20;
			dianquan$field = value;
		}

		public function get dianquan():uint {
			return dianquan$field;
		}

		/**
		 *  @private
		 */
		public static const LEVEL:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.level", "level", (10 << 3) | com.netease.protobuf.WireType.VARINT);

		private var level$field:uint;

		public function clearLevel():void {
			hasField$0 &= 0xffffffbf;
			level$field = new uint();
		}

		public function get hasLevel():Boolean {
			return (hasField$0 & 0x40) != 0;
		}

		public function set level(value:uint):void {
			hasField$0 |= 0x40;
			level$field = value;
		}

		public function get level():uint {
			return level$field;
		}

		/**
		 *  @private
		 */
		public static const HP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.hp", "hp", (11 << 3) | com.netease.protobuf.WireType.VARINT);

		private var hp$field:uint;

		public function clearHp():void {
			hasField$0 &= 0xffffff7f;
			hp$field = new uint();
		}

		public function get hasHp():Boolean {
			return (hasField$0 & 0x80) != 0;
		}

		public function set hp(value:uint):void {
			hasField$0 |= 0x80;
			hp$field = value;
		}

		public function get hp():uint {
			return hp$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_HP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.max_hp", "maxHp", (12 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_hp$field:uint;

		public function clearMaxHp():void {
			hasField$0 &= 0xfffffeff;
			max_hp$field = new uint();
		}

		public function get hasMaxHp():Boolean {
			return (hasField$0 & 0x100) != 0;
		}

		public function set maxHp(value:uint):void {
			hasField$0 |= 0x100;
			max_hp$field = value;
		}

		public function get maxHp():uint {
			return max_hp$field;
		}

		/**
		 *  @private
		 */
		public static const KATHA:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.katha", "katha", (13 << 3) | com.netease.protobuf.WireType.VARINT);

		private var katha$field:uint;

		public function clearKatha():void {
			hasField$0 &= 0xfffffdff;
			katha$field = new uint();
		}

		public function get hasKatha():Boolean {
			return (hasField$0 & 0x200) != 0;
		}

		public function set katha(value:uint):void {
			hasField$0 |= 0x200;
			katha$field = value;
		}

		public function get katha():uint {
			return katha$field;
		}

		/**
		 *  @private
		 */
		public static const COMBAT_POWER:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.combat_power", "combatPower", (14 << 3) | com.netease.protobuf.WireType.VARINT);

		private var combat_power$field:uint;

		public function clearCombatPower():void {
			hasField$0 &= 0xfffffbff;
			combat_power$field = new uint();
		}

		public function get hasCombatPower():Boolean {
			return (hasField$0 & 0x400) != 0;
		}

		public function set combatPower(value:uint):void {
			hasField$0 |= 0x400;
			combat_power$field = value;
		}

		public function get combatPower():uint {
			return combat_power$field;
		}

		/**
		 *  @private
		 */
		public static const EXP:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.exp", "exp", (15 << 3) | com.netease.protobuf.WireType.VARINT);

		private var exp$field:uint;

		public function clearExp():void {
			hasField$0 &= 0xfffff7ff;
			exp$field = new uint();
		}

		public function get hasExp():Boolean {
			return (hasField$0 & 0x800) != 0;
		}

		public function set exp(value:uint):void {
			hasField$0 |= 0x800;
			exp$field = value;
		}

		public function get exp():uint {
			return exp$field;
		}

		/**
		 *  @private
		 */
		public static const ROLE_CATEGORY:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfo.role_category", "roleCategory", (16 << 3) | com.netease.protobuf.WireType.VARINT);

		private var role_category$field:int;

		public function clearRoleCategory():void {
			hasField$0 &= 0xffffefff;
			role_category$field = new int();
		}

		public function get hasRoleCategory():Boolean {
			return (hasField$0 & 0x1000) != 0;
		}

		public function set roleCategory(value:int):void {
			hasField$0 |= 0x1000;
			role_category$field = value;
		}

		public function get roleCategory():int {
			return role_category$field;
		}

		/**
		 *  @private
		 */
		public static const STRENGTH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.strength", "strength", (17 << 3) | com.netease.protobuf.WireType.VARINT);

		private var strength$field:uint;

		public function clearStrength():void {
			hasField$0 &= 0xffffdfff;
			strength$field = new uint();
		}

		public function get hasStrength():Boolean {
			return (hasField$0 & 0x2000) != 0;
		}

		public function set strength(value:uint):void {
			hasField$0 |= 0x2000;
			strength$field = value;
		}

		public function get strength():uint {
			return strength$field;
		}

		/**
		 *  @private
		 */
		public static const MAX_STRENGTH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.max_strength", "maxStrength", (18 << 3) | com.netease.protobuf.WireType.VARINT);

		private var max_strength$field:uint;

		public function clearMaxStrength():void {
			hasField$0 &= 0xffffbfff;
			max_strength$field = new uint();
		}

		public function get hasMaxStrength():Boolean {
			return (hasField$0 & 0x4000) != 0;
		}

		public function set maxStrength(value:uint):void {
			hasField$0 |= 0x4000;
			max_strength$field = value;
		}

		public function get maxStrength():uint {
			return max_strength$field;
		}

		/**
		 *  @private
		 */
		public static const CAN_REACH_MAX_STRENGTH:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.can_reach_max_strength", "canReachMaxStrength", (19 << 3) | com.netease.protobuf.WireType.VARINT);

		private var can_reach_max_strength$field:uint;

		public function clearCanReachMaxStrength():void {
			hasField$0 &= 0xffff7fff;
			can_reach_max_strength$field = new uint();
		}

		public function get hasCanReachMaxStrength():Boolean {
			return (hasField$0 & 0x8000) != 0;
		}

		public function set canReachMaxStrength(value:uint):void {
			hasField$0 |= 0x8000;
			can_reach_max_strength$field = value;
		}

		public function get canReachMaxStrength():uint {
			return can_reach_max_strength$field;
		}

		/**
		 *  @private
		 */
		public static const BUY_STRENGTH_GOLD:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfo.buy_strength_gold", "buyStrengthGold", (20 << 3) | com.netease.protobuf.WireType.VARINT);

		private var buy_strength_gold$field:int;

		public function clearBuyStrengthGold():void {
			hasField$0 &= 0xfffeffff;
			buy_strength_gold$field = new int();
		}

		public function get hasBuyStrengthGold():Boolean {
			return (hasField$0 & 0x10000) != 0;
		}

		public function set buyStrengthGold(value:int):void {
			hasField$0 |= 0x10000;
			buy_strength_gold$field = value;
		}

		public function get buyStrengthGold():int {
			return buy_strength_gold$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_LEVEL:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoPlayerInfo.vip_level", "vipLevel", (21 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.inc.ProtoPlayerVipLevel);

		private var vip_level$field:int;

		public function clearVipLevel():void {
			hasField$0 &= 0xfffdffff;
			vip_level$field = new int();
		}

		public function get hasVipLevel():Boolean {
			return (hasField$0 & 0x20000) != 0;
		}

		public function set vipLevel(value:int):void {
			hasField$0 |= 0x20000;
			vip_level$field = value;
		}

		public function get vipLevel():int {
			return vip_level$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_EXPIRED_TIME:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.vip_expired_time", "vipExpiredTime", (22 << 3) | com.netease.protobuf.WireType.VARINT);

		private var vip_expired_time$field:uint;

		public function clearVipExpiredTime():void {
			hasField$0 &= 0xfffbffff;
			vip_expired_time$field = new uint();
		}

		public function get hasVipExpiredTime():Boolean {
			return (hasField$0 & 0x40000) != 0;
		}

		public function set vipExpiredTime(value:uint):void {
			hasField$0 |= 0x40000;
			vip_expired_time$field = value;
		}

		public function get vipExpiredTime():uint {
			return vip_expired_time$field;
		}

		/**
		 *  @private
		 */
		public static const VIP_REMAINDER_DAY:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.vip_remainder_day", "vipRemainderDay", (23 << 3) | com.netease.protobuf.WireType.VARINT);

		private var vip_remainder_day$field:uint;

		public function clearVipRemainderDay():void {
			hasField$0 &= 0xfff7ffff;
			vip_remainder_day$field = new uint();
		}

		public function get hasVipRemainderDay():Boolean {
			return (hasField$0 & 0x80000) != 0;
		}

		public function set vipRemainderDay(value:uint):void {
			hasField$0 |= 0x80000;
			vip_remainder_day$field = value;
		}

		public function get vipRemainderDay():uint {
			return vip_remainder_day$field;
		}

		/**
		 *  @private
		 */
		public static const SHOW_NINJA_ID:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfo.show_ninja_id", "showNinjaId", (24 << 3) | com.netease.protobuf.WireType.VARINT);

		private var show_ninja_id$field:int;

		public function clearShowNinjaId():void {
			hasField$0 &= 0xffefffff;
			show_ninja_id$field = new int();
		}

		public function get hasShowNinjaId():Boolean {
			return (hasField$0 & 0x100000) != 0;
		}

		public function set showNinjaId(value:int):void {
			hasField$0 |= 0x100000;
			show_ninja_id$field = value;
		}

		public function get showNinjaId():int {
			return show_ninja_id$field;
		}

		/**
		 *  @private
		 */
		public static const CHOSED_TITLE_ID:FieldDescriptor$TYPE_UINT32 = new FieldDescriptor$TYPE_UINT32("serverProto.user.ProtoPlayerInfo.chosed_title_id", "chosedTitleId", (25 << 3) | com.netease.protobuf.WireType.VARINT);

		private var chosed_title_id$field:uint;

		public function clearChosedTitleId():void {
			hasField$0 &= 0xffdfffff;
			chosed_title_id$field = new uint();
		}

		public function get hasChosedTitleId():Boolean {
			return (hasField$0 & 0x200000) != 0;
		}

		public function set chosedTitleId(value:uint):void {
			hasField$0 |= 0x200000;
			chosed_title_id$field = value;
		}

		public function get chosedTitleId():uint {
			return chosed_title_id$field;
		}

		/**
		 *  @private
		 */
		public static const DIAMOND_INFO:FieldDescriptor$TYPE_MESSAGE = new FieldDescriptor$TYPE_MESSAGE("serverProto.user.ProtoPlayerInfo.diamond_info", "diamondInfo", (26 << 3) | com.netease.protobuf.WireType.LENGTH_DELIMITED, serverProto.inc.ProtoDiamondInfo);

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
		public static const IS_GM:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfo.is_gm", "isGm", (27 << 3) | com.netease.protobuf.WireType.VARINT);

		private var is_gm$field:int;

		public function clearIsGm():void {
			hasField$0 &= 0xffbfffff;
			is_gm$field = new int();
		}

		public function get hasIsGm():Boolean {
			return (hasField$0 & 0x400000) != 0;
		}

		public function set isGm(value:int):void {
			hasField$0 |= 0x400000;
			is_gm$field = value;
		}

		public function get isGm():int {
			return is_gm$field;
		}

		/**
		 *  @private
		 */
		public static const TASK_SIGN:FieldDescriptor$TYPE_ENUM = new FieldDescriptor$TYPE_ENUM("serverProto.user.ProtoPlayerInfo.task_sign", "taskSign", (28 << 3) | com.netease.protobuf.WireType.VARINT, serverProto.user.ProtoTaskSign);

		private var task_sign$field:int;

		public function clearTaskSign():void {
			hasField$0 &= 0xff7fffff;
			task_sign$field = new int();
		}

		public function get hasTaskSign():Boolean {
			return (hasField$0 & 0x800000) != 0;
		}

		public function set taskSign(value:int):void {
			hasField$0 |= 0x800000;
			task_sign$field = value;
		}

		public function get taskSign():int {
			return task_sign$field;
		}

		/**
		 *  @private
		 */
		public static const FASHION_NINJA:FieldDescriptor$TYPE_INT32 = new FieldDescriptor$TYPE_INT32("serverProto.user.ProtoPlayerInfo.fashion_ninja", "fashionNinja", (29 << 3) | com.netease.protobuf.WireType.VARINT);

		private var fashion_ninja$field:int;

		public function clearFashionNinja():void {
			hasField$0 &= 0xfeffffff;
			fashion_ninja$field = new int();
		}

		public function get hasFashionNinja():Boolean {
			return (hasField$0 & 0x1000000) != 0;
		}

		public function set fashionNinja(value:int):void {
			hasField$0 |= 0x1000000;
			fashion_ninja$field = value;
		}

		public function get fashionNinja():int {
			return fashion_ninja$field;
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function writeToBuffer(output:com.netease.protobuf.WritingBuffer):void {
			if (hasPlayerKey) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 1);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, player_key$field);
			}
			if (hasRoleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 2);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, role_id$field);
			}
			if (hasName) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 3);
				com.netease.protobuf.WriteUtils.write$TYPE_STRING(output, name$field);
			}
			if (hasNinjia) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 4);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, ninjia$field);
			}
			if (hasLocation) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 5);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, location$field);
			}
			if (hasDirection) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 6);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, direction$field);
			}
			if (hasMoney) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 7);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, money$field);
			}
			if (hasYuanbao) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 8);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, yuanbao$field);
			}
			if (hasDianquan) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 9);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, dianquan$field);
			}
			if (hasLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 10);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, level$field);
			}
			if (hasHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 11);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, hp$field);
			}
			if (hasMaxHp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 12);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_hp$field);
			}
			if (hasKatha) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 13);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, katha$field);
			}
			if (hasCombatPower) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 14);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, combat_power$field);
			}
			if (hasExp) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 15);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, exp$field);
			}
			if (hasRoleCategory) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 16);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, role_category$field);
			}
			if (hasStrength) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 17);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, strength$field);
			}
			if (hasMaxStrength) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 18);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, max_strength$field);
			}
			if (hasCanReachMaxStrength) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 19);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, can_reach_max_strength$field);
			}
			if (hasBuyStrengthGold) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 20);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, buy_strength_gold$field);
			}
			if (hasVipLevel) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 21);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, vip_level$field);
			}
			if (hasVipExpiredTime) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 22);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, vip_expired_time$field);
			}
			if (hasVipRemainderDay) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 23);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, vip_remainder_day$field);
			}
			if (hasShowNinjaId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 24);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, show_ninja_id$field);
			}
			if (hasChosedTitleId) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 25);
				com.netease.protobuf.WriteUtils.write$TYPE_UINT32(output, chosed_title_id$field);
			}
			if (hasDiamondInfo) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.LENGTH_DELIMITED, 26);
				com.netease.protobuf.WriteUtils.write$TYPE_MESSAGE(output, diamond_info$field);
			}
			if (hasIsGm) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 27);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, is_gm$field);
			}
			if (hasTaskSign) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 28);
				com.netease.protobuf.WriteUtils.write$TYPE_ENUM(output, task_sign$field);
			}
			if (hasFashionNinja) {
				com.netease.protobuf.WriteUtils.writeTag(output, com.netease.protobuf.WireType.VARINT, 29);
				com.netease.protobuf.WriteUtils.write$TYPE_INT32(output, fashion_ninja$field);
			}
			for (var fieldKey:* in this) {
				super.writeUnknown(output, fieldKey);
			}
		}

		/**
		 *  @private
		 */
		override used_by_generated_code final function readFromSlice(input:flash.utils.IDataInput, bytesAfterSlice:uint):void {
			var player_key$count:uint = 0;
			var role_id$count:uint = 0;
			var name$count:uint = 0;
			var ninjia$count:uint = 0;
			var location$count:uint = 0;
			var direction$count:uint = 0;
			var money$count:uint = 0;
			var yuanbao$count:uint = 0;
			var dianquan$count:uint = 0;
			var level$count:uint = 0;
			var hp$count:uint = 0;
			var max_hp$count:uint = 0;
			var katha$count:uint = 0;
			var combat_power$count:uint = 0;
			var exp$count:uint = 0;
			var role_category$count:uint = 0;
			var strength$count:uint = 0;
			var max_strength$count:uint = 0;
			var can_reach_max_strength$count:uint = 0;
			var buy_strength_gold$count:uint = 0;
			var vip_level$count:uint = 0;
			var vip_expired_time$count:uint = 0;
			var vip_remainder_day$count:uint = 0;
			var show_ninja_id$count:uint = 0;
			var chosed_title_id$count:uint = 0;
			var diamond_info$count:uint = 0;
			var is_gm$count:uint = 0;
			var task_sign$count:uint = 0;
			var fashion_ninja$count:uint = 0;
			while (input.bytesAvailable > bytesAfterSlice) {
				var tag:uint = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
				switch (tag >> 3) {
				case 1:
					if (player_key$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.playerKey cannot be set twice.');
					}
					++player_key$count;
					this.playerKey = new serverProto.inc.ProtoPlayerKey();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.playerKey);
					break;
				case 2:
					if (role_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.roleId cannot be set twice.');
					}
					++role_id$count;
					this.roleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 3:
					if (name$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.name cannot be set twice.');
					}
					++name$count;
					this.name = com.netease.protobuf.ReadUtils.read$TYPE_STRING(input);
					break;
				case 4:
					if (ninjia$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.ninjia cannot be set twice.');
					}
					++ninjia$count;
					this.ninjia = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 5:
					if (location$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.location cannot be set twice.');
					}
					++location$count;
					this.location = new serverProto.inc.ProtoPoint();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.location);
					break;
				case 6:
					if (direction$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.direction cannot be set twice.');
					}
					++direction$count;
					this.direction = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 7:
					if (money$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.money cannot be set twice.');
					}
					++money$count;
					this.money = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 8:
					if (yuanbao$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.yuanbao cannot be set twice.');
					}
					++yuanbao$count;
					this.yuanbao = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 9:
					if (dianquan$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.dianquan cannot be set twice.');
					}
					++dianquan$count;
					this.dianquan = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 10:
					if (level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.level cannot be set twice.');
					}
					++level$count;
					this.level = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 11:
					if (hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.hp cannot be set twice.');
					}
					++hp$count;
					this.hp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 12:
					if (max_hp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.maxHp cannot be set twice.');
					}
					++max_hp$count;
					this.maxHp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 13:
					if (katha$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.katha cannot be set twice.');
					}
					++katha$count;
					this.katha = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 14:
					if (combat_power$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.combatPower cannot be set twice.');
					}
					++combat_power$count;
					this.combatPower = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 15:
					if (exp$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.exp cannot be set twice.');
					}
					++exp$count;
					this.exp = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 16:
					if (role_category$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.roleCategory cannot be set twice.');
					}
					++role_category$count;
					this.roleCategory = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 17:
					if (strength$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.strength cannot be set twice.');
					}
					++strength$count;
					this.strength = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 18:
					if (max_strength$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.maxStrength cannot be set twice.');
					}
					++max_strength$count;
					this.maxStrength = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 19:
					if (can_reach_max_strength$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.canReachMaxStrength cannot be set twice.');
					}
					++can_reach_max_strength$count;
					this.canReachMaxStrength = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 20:
					if (buy_strength_gold$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.buyStrengthGold cannot be set twice.');
					}
					++buy_strength_gold$count;
					this.buyStrengthGold = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 21:
					if (vip_level$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.vipLevel cannot be set twice.');
					}
					++vip_level$count;
					this.vipLevel = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 22:
					if (vip_expired_time$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.vipExpiredTime cannot be set twice.');
					}
					++vip_expired_time$count;
					this.vipExpiredTime = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 23:
					if (vip_remainder_day$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.vipRemainderDay cannot be set twice.');
					}
					++vip_remainder_day$count;
					this.vipRemainderDay = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 24:
					if (show_ninja_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.showNinjaId cannot be set twice.');
					}
					++show_ninja_id$count;
					this.showNinjaId = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 25:
					if (chosed_title_id$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.chosedTitleId cannot be set twice.');
					}
					++chosed_title_id$count;
					this.chosedTitleId = com.netease.protobuf.ReadUtils.read$TYPE_UINT32(input);
					break;
				case 26:
					if (diamond_info$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.diamondInfo cannot be set twice.');
					}
					++diamond_info$count;
					this.diamondInfo = new serverProto.inc.ProtoDiamondInfo();
					com.netease.protobuf.ReadUtils.read$TYPE_MESSAGE(input, this.diamondInfo);
					break;
				case 27:
					if (is_gm$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.isGm cannot be set twice.');
					}
					++is_gm$count;
					this.isGm = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				case 28:
					if (task_sign$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.taskSign cannot be set twice.');
					}
					++task_sign$count;
					this.taskSign = com.netease.protobuf.ReadUtils.read$TYPE_ENUM(input);
					break;
				case 29:
					if (fashion_ninja$count != 0) {
						throw new flash.errors.IOError('Bad data format: ProtoPlayerInfo.fashionNinja cannot be set twice.');
					}
					++fashion_ninja$count;
					this.fashionNinja = com.netease.protobuf.ReadUtils.read$TYPE_INT32(input);
					break;
				default:
					super.readUnknown(input, tag);
					break;
				}
			}
		}

	}
}
